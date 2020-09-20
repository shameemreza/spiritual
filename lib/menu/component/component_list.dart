import 'package:flutter/material.dart';
import 'package:spiritual/components/common/style/styles.dart';
import 'package:spiritual/menu/default_layout.dart';

class ComponentList extends StatelessWidget {

  final componentCards;
  final title;

  ComponentList({
    this.componentCards,
    this.title
  });

  @override
  Widget build(BuildContext context) {
    return Layout(
      backButton: true,
      title: title,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Styles.backGroundColor,
        child: SingleChildScrollView(
          child: Column(
            children: componentCards
          ),
        ),
      ),
    );
  }
}