import 'package:flutter/material.dart';
import 'package:spiritual/components/common/button/raised_gradient_button.dart';
import 'package:spiritual/components/common/style/styles.dart';
import 'package:spiritual/repositories/MenuRepository.dart';
import 'package:url_launcher/url_launcher.dart';

import 'nav_link.dart';

class MyScaffold extends StatelessWidget {
  final navLinks = MenuRepository().loadModel();

  final appBar;
  final backButton;
  final Map<String, Widget> tabs;
  final title;
  final body;
  final fab;

  MyScaffold(
      {this.appBar,
      this.backButton,
      this.tabs,
      this.title,
      this.body,
      this.fab = false});

  _launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar
            ? PreferredSize(
                preferredSize: tabs == null
                    ? Size.fromHeight(Styles.appBarHeight)
                    : Size.fromHeight(90.0),
                child: AppBar(
                  bottom: tabs != null
                      ? TabBar(
                          labelColor: Styles.helperTextColor,
                          indicatorColor: Styles.helperTextColor,
                          isScrollable: true,
                          tabs: tabs.keys.map((String key) {
                            return Container(
                              height: 40,
                              alignment: Alignment.center,
                              child: Text(
                                key,
                                style: TextStyle(
                                    fontSize: Styles.h6,
                                    fontWeight: Styles.mediumFont),
                              ),
                            );
                          }).toList())
                      : null,
                  title: Text(title,
                      style: TextStyle(
                          color: Styles.helperTextColor,
                          fontWeight: Styles.mediumFont,
                          fontSize: Styles.h5)),
                  leading: this.backButton
                      ? IconButton(
                          icon: Icon(Icons.arrow_back),
                          onPressed: () => Navigator.pop(context, false),
                        )
                      : null,
                  centerTitle: true,
                  backgroundColor: Colors.transparent,
                  elevation: 0.0,
                  actions: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10.0),
                      height: 20.0,
                      child: RaisedButton(
                          color: Colors.white,
                          child: Text(
                            'FORK IT',
                            style: TextStyle(
                                color: Styles.primaryFontColor,
                                fontWeight: Styles.mediumFont,
                                fontSize: Styles.h5),
                          ),
                          onPressed: () {
                            _launchURL(
                                'https://github.com/shameemreza/spiritual');
                          }),
                    )
                  ],
                ),
              )
            : null,
        floatingActionButton: fab
            ? Builder(
                builder: (context) => RaisedGradientButton(
                    child: Icon(
                      Icons.add,
                      color: Styles.helperTextColor,
                    ),
                    color: Styles.primaryFontColor,
                    onPressed: () {
                      Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text('Clicked on FAB button'),
                        duration: Duration(milliseconds: 400),
                      ));
                    }),
              )
            : null,
        backgroundColor: Colors.transparent,
        drawer: !this.backButton
            ? Drawer(
                child: Container(
                    decoration: BoxDecoration(gradient: Styles.gradient),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).padding.top + 10.0,
                              bottom: 10.0,
                              left: 10.0,
                              right: 10.0),
                          height: MediaQuery.of(context).size.height * 0.4,
                          child: ListView(
                            padding: EdgeInsets.all(0),
                            children: <Widget>[
                              ConstrainedBox(
                                constraints: BoxConstraints(
                                    minHeight:
                                        MediaQuery.of(context).size.height *
                                            0.34),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Spiritual - Flutter UIKit',
                                      style: TextStyle(
                                          color: Styles.helperTextColor,
                                          fontSize: Styles.h2,
                                          fontWeight: Styles.lightFont),
                                    ),
                                    Text(
                                      'Ready to use in your project',
                                      style: TextStyle(
                                          color: Color.fromRGBO(
                                              255, 255, 255, 0.7),
                                          fontSize: Styles.h3,
                                          fontWeight: Styles.lightFont),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        InkWell(
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 25.0),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                                color: Styles.backGroundColor,
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Color.fromRGBO(
                                                          0, 0, 0, 0.2),
                                                      offset: Offset(0, 4),
                                                      blurRadius: 10)
                                                ]),
                                            height: 50.0,
                                            child: Center(
                                              child: Text(
                                                'FORK IT',
                                                style: TextStyle(
                                                    color:
                                                        Styles.primaryFontColor,
                                                    fontSize: Styles.h4,
                                                    fontWeight:
                                                        Styles.mediumFont),
                                              ),
                                            ),
                                          ),
                                          onTap: () {
                                            _launchURL(
                                                'https://github.com/shameemreza/spiritual');
                                          },
                                        ),
                                        InkWell(
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 15.0),
                                            height: 50.0,
                                            child: Center(
                                              child: Text(
                                                'Issues',
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 0.7),
                                                    fontSize: Styles.h4,
                                                    fontWeight:
                                                        Styles.mediumFont,
                                                    decoration: TextDecoration
                                                        .underline),
                                              ),
                                            ),
                                          ),
                                          onTap: () {
                                            _launchURL(
                                                'https://github.com/shameemreza/spiritual/issues');
                                          },
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                            child: Container(
                          color: Styles.backGroundColor,
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                child: ListView(
                                  padding: EdgeInsets.all(0.0),
                                  children: navLinks.keys.map((Widget key) {
                                    return Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.0, vertical: 5.0),
                                      child: Column(
                                          children: navLinks[key]
                                              .keys
                                              .map((String secondKey) {
                                        return NavLink(
                                          text: secondKey,
                                          route: key,
                                          icon: navLinks[key][secondKey],
                                        );
                                      }).toList()),
                                    );
                                  }).toList(),
                                ),
                              )
                            ],
                          ),
                        ))
                      ],
                    )))
            : null,
        body: body != null
            ? body
            : tabs != null
                ? TabBarView(
                    children: tabs.keys.map((String key) {
                    return tabs[key];
                  }).toList())
                : Container(
                    child: Center(
                      child: Container(
                        padding: EdgeInsets.only(bottom: Styles.appBarHeight),
                        child: Text(
                          'Howdy!',
                          style: TextStyle(
                              color: Styles.helperTextColor,
                              fontSize: Styles.h1,
                              fontWeight: Styles.lightFont),
                        ),
                      ),
                    ),
                  ));
  }
}
