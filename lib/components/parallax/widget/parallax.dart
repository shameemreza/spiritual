import 'package:flutter/material.dart';
import 'package:spiritual/components/common/style/styles.dart';
import 'package:spiritual/components/parallax/repository/parallax_repository.dart';
import 'package:spiritual/menu/default_layout.dart';

class Parallax extends StatelessWidget {
  final String title = 'PARALLAX';
  final String headerImage = 'assets/images/spiritual_pic.jpg';

  @override
  Widget build(BuildContext context) {
    return Layout(
        backButton: true,
        appBar: false,
        body: Container(
          color: Styles.backGroundColor,
          child: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                  actions: <Widget>[
                    IconButton(
                        tooltip: 'Share',
                        icon: Icon(
                          Icons.share,
                          color: Colors.white,
                        ),
                        onPressed: null)
                  ],
                  pinned: true,
                  expandedHeight: 180.0,

                  /** in [flexibleSpace] are the elements of the header */
                  flexibleSpace: Container(
                    decoration: BoxDecoration(color: Styles.primaryFontColor),
                    child: FlexibleSpaceBar(
                        centerTitle: true,
                        title: Text(title,
                            style: TextStyle(
                                fontWeight: Styles.mediumFont,
                                fontSize: Styles.h5)),
                        background: Container(
                          decoration: BoxDecoration(
                              color: Styles.primaryFontColor,
                              image: DecorationImage(
                                  image: AssetImage(headerImage),
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(
                                      Colors.white.withOpacity(0.2),
                                      BlendMode.dstATop))),
                        )),
                  )
                  /** ==================================================== */
                  ),
              SliverList(
                  /** Widgets within the [SliverChildListDelegate] will be displayed as page content */
                  delegate: SliverChildListDelegate([
                Container(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: ParallaxRepository().loadWidgets(),
                    ))
              ])),
            ],
          ),
        ));
  }
}
