import 'package:flutter/material.dart';
import 'package:spiritual/components/common/style/styles.dart';
import 'my_scaffold.dart';

class Layout extends StatelessWidget {
  final Widget body;
  final String title;
  final bool backButton;
  final bool appBar;
  final Map<String, Widget> tabs;
  final scaffold;
  final fab;

  Layout(
      {this.body,
      this.title,
      this.backButton = false,
      this.appBar = true,
      this.tabs,
      this.scaffold,
      this.fab = false});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: tabs != null ? tabs.length : 0,
        child: Container(
            decoration: BoxDecoration(gradient: Styles.gradient),
            /* My custom Scaffold */
            child: MyScaffold(
              appBar: appBar,
              title: title,
              tabs: tabs,
              backButton: backButton,
              body: body,
              fab: fab,
            )));
  }
}
