import 'package:flutter/material.dart';
import 'package:spiritual/components/common/style/styles.dart';
import 'package:spiritual/components/walkthrough/component/dots_indicator.dart';

class Walkthrough extends StatefulWidget {
  final List<Widget> pages;
  final buttonText;
  final Function onButtonClick;
  Walkthrough({this.pages, this.buttonText, this.onButtonClick});

  @override
  WalkthroughState createState() => WalkthroughState();
}

class WalkthroughState extends State<Walkthrough> {
  final _controller = PageController();

//   The pages that will be displayed defined under in _pages variable
//   All of them must be imported in the top of the file. Standard in to keep them in the same directory
  int page = 0;

  // The Screen build
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned.fill(
          child: PageView.builder(
            physics: AlwaysScrollableScrollPhysics(),
            controller: _controller,
            itemCount: this.widget.pages.length,
            itemBuilder: (BuildContext context, int index) {
              return this.widget.pages[index % this.widget.pages.length];
            },
            onPageChanged: (int p) {
              setState(() {
                page = p;
              });
            },
          ),
        ),
        Positioned(
          bottom: 30.0,
          left: 0.0,
          right: 0.0,
          child: SafeArea(
            child: Column(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        RaisedButton(
                            color: Colors.transparent,
                            padding: EdgeInsets.all(0),
                            textColor: Styles.primaryFontColor,
                            onPressed: () {
                              if (this.widget.onButtonClick != null) {
                                this.widget.onButtonClick(context);
                              }
                            },
                            child: Container(
                              height: 50.0,
                              width: 100.0,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(6.0)),
                              child: Center(
                                child: Text(
                                  this.widget.buttonText,
                                  style: TextStyle(
                                      color: Styles.primaryFontColor,
                                      fontSize: Styles.h3,
                                      fontWeight: Styles.mediumFont),
                                ),
                              ),
                            )),
                        Container(
                            height: 30.0,
                            margin: EdgeInsets.only(top: 10.0),
                            child: DotsIndicator(
                              controller: _controller,
                              itemCount: this.widget.pages.length,
                              onPageSelected: (int page) {
                                _controller.animateToPage(
                                  page,
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.ease,
                                );
                              },
                            ))
                      ],
                    )),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
