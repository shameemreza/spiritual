import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_reorderable_list/flutter_reorderable_list.dart';
import 'package:spiritual/components/common/style/styles.dart';
import 'package:spiritual/components/drag_and_drop/repository/drag_and_drop_reporitory.dart';
import 'package:spiritual/components/drag_and_drop/widget/item_data.dart';
import 'package:spiritual/components/drag_and_drop/widget/dragging_mode.dart';
import 'package:spiritual/menu/default_layout.dart';

class DragAndDrop extends StatefulWidget {
  DragAndDrop({Key key}) : super(key: key);

  @override
  _DragAndDropState createState() => _DragAndDropState();
}

class _DragAndDropState extends State<DragAndDrop> {
  /// The drag and drop list is invoked here
  /// cmd + left click on [ReorderList] to see data structure
  List<Widget> items = DragAndDropRepository().loadWidgets();

  ///The title is defined here
  final String title = 'DRAG AND DROP';

  List<ItemData> _items;

  _DragAndDropState() {
    _items = List();
    for (int i = 0; i < items.length; ++i) {
      _items.add(ItemData(items[i], ValueKey(i)));
    }
  }

  // Returns index of item with given key
  int _indexOfKey(Key key) {
    return _items.indexWhere((ItemData d) => d.key == key);
  }

  bool _reorderCallback(Key item, Key newPosition) {
    int draggingIndex = _indexOfKey(item);
    int newPositionIndex = _indexOfKey(newPosition);

    // Uncomment to allow only even target reorder position
    // if (newPositionIndex % 2 == 1)
    //   return false;

    final draggedItem = _items[draggingIndex];
    setState(() {
      debugPrint("Reordering $item -> $newPosition");
      _items.removeAt(draggingIndex);
      _items.insert(newPositionIndex, draggedItem);
    });
    return true;
  }

  DraggingMode _draggingMode = DraggingMode.Android;

  Widget build(BuildContext context) {
    return Layout(
        backButton: true,
        title: title,
        body: Container(
          color: Styles.backGroundColor,
          child: ReorderableList(
            onReorder: this._reorderCallback,
            child: CustomScrollView(
              // cacheExtent: 3000,
              slivers: <Widget>[
                SliverPadding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).padding.bottom),
                    sliver: SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          return Item(
                            data: _items[index],
                            // first and last attributes affect border drawn during dragging
                            isFirst: index == 0,
                            isLast: index == _items.length - 1,
                            draggingMode: _draggingMode,
                          );
                        },
                        childCount: _items.length,
                      ),
                    )),
              ],
            ),
          ),
        ));
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
    if (state == ReorderableItemState.dragProxy ||
        state == ReorderableItemState.dragProxyFinished) {}

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
