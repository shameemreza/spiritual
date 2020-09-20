import 'package:flutter/material.dart';
import 'package:spiritual/components/expandable/repository/expandable_repository.dart';
import 'package:spiritual/menu/default_layout.dart';

// ignore: must_be_immutable
class Expandable extends StatelessWidget {
  /// Define the data to be displayed in the [ExpandableList] class.
  /// cmd + left click to see data structure for [ExpandableList]
  List<Widget> expandableUserList = ExpandableRepository().loadWidgets();

  /// define the title here
  final String title = "Expandable";

  @override
  Widget build(BuildContext context) {
    List<Column> _listOfExpansions = List<Column>.generate(
        expandableUserList.length,
        (i) => Column(
              children: <Widget>[
                expandableUserList[i],
              ],
            ));

    return Layout(
        backButton: true,
        title: "Expandable",
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: ListView(
              children: _listOfExpansions
                  .map((expansionTile) => expansionTile)
                  .toList(),
            )));
  }
}
