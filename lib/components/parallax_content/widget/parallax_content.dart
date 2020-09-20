import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_reorderable_list/flutter_reorderable_list.dart';
import 'package:spiritual/components/common/style/styles.dart';
import 'package:spiritual/components/parallax_content/repository/parallax_content_repository.dart';
import 'package:spiritual/components/parallax_content/widget/dragging_mode.dart';
import 'package:spiritual/components/parallax_content/widget/item_data.dart';
import 'package:spiritual/menu/default_layout.dart';

class ParallaxContent extends StatefulWidget {
  ParallaxContent({Key key}) : super(key: key);

  @override
  ParallaxContentState createState() => ParallaxContentState();
}

class ParallaxContentState extends State<ParallaxContent> {
  /// Define the title and headerText Here
  final String title = "CARDS OVER HEADER";
  final String textHeader = 'Material Design UI \nTemplate App';

  var top = 0.0;

  ///* The list being displayed *///
  /// You can define your list here or import it on the top like in the example bellow
  List<Widget> items = ParallaxContentRepository().loadWidgets();

  @override
  Widget build(BuildContext context) {
    return Layout(
      backButton: true,
      title: title,
      body: Scaffold(
        backgroundColor: Colors.transparent,
        body: NotificationListener(
          onNotification: (v) {
            if (v is ScrollUpdateNotification)
              setState(() => top -= v.scrollDelta / 2);
            return true;
          },
          child: Stack(
            children: <Widget>[
              //The background
              Positioned(
                  top: top,
                  child: Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
//                    gradient: CustomStyles.gradient
                        color: Colors.transparent),
                    /** Slower Scrolling background content is placed in the list of the Column beneath */
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Center(
                            child: Text(
                              textHeader,
                              style: TextStyle(
                                  color: Styles.helperTextColor,
                                  fontWeight: Styles.lightFont,
                                  fontSize: Styles.h2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
              Positioned(
                  top: 200.0,
                  child: Container(
                    color: Styles.backGroundColor,
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                  )),

              /** Faster Scrolling content on top will be placed in the ListView bellow */
              ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, int index) {
                  return items[index];
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Item extends StatelessWidget {
  Item({
    this.data,
    this.isFirst,
    this.isLast,
    this.draggingMode,
  });

  final ItemData data;
  final bool isFirst;
  final bool isLast;
  final DraggingMode draggingMode;

  Widget _buildChild(BuildContext context, ReorderableItemState state) {
    Widget dragHandle = draggingMode == DraggingMode.iOS
        ? ReorderableListener(
            child: Container(
              padding: EdgeInsets.only(right: 18.0, left: 18.0),
              color: Color(0x08000000),
              child: Center(
                child: Icon(Icons.reorder, color: Color(0xFF888888)),
              ),
            ),
          )
        : Container();

    Widget content = Container(
      child: SafeArea(
          top: false,
          bottom: false,
          child: Opacity(
            // hide content for placeholder
            opacity: state == ReorderableItemState.placeholder ? 0.0 : 1.0,
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(child: data.widget),
                  // Triggers the reordering
                  dragHandle,
                ],
              ),
            ),
          )),
    );

    if (draggingMode == DraggingMode.Android) {
      content = DelayedReorderableListener(
        child: content,
      );
    }
    return content;
  }

  @override
  Widget build(BuildContext context) {
    return ReorderableItem(
        key: data.key, //
        childBuilder: _buildChild);
  }
}
