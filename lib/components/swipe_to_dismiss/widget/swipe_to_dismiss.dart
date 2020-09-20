import 'package:flutter/material.dart';
import 'package:spiritual/components/common/style/styles.dart';
import 'package:spiritual/components/swipe_to_dismiss/swipe_to_dismiss_repository/swipe_to_dismiss_repository.dart';
import 'package:spiritual/menu/default_layout.dart';

class SwipeToDismiss extends StatefulWidget {
  @override
  SwipeToDismissState createState() => new SwipeToDismissState();
}

class SwipeToDismissState extends State<SwipeToDismiss> {
  /// swipeable items are to be found in [SwipeList]
  /// cmd + left click to see data structure
  final List<Widget> list = SwipeToDismissRepository().loadWidgets();

  /// Define the [title] here
  final String title = "SWIPE TO DISMISS";

  @override
  Widget build(BuildContext context) {
    final List<Widget> items = list;

    return Layout(
        backButton: true,
        fab: true,
        title: title,
        body: Container(
          color: Colors.white,
          child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, int index) {
                return Dismissible(
                    background: Container(
                      padding: EdgeInsets.symmetric(horizontal: 25.0),
                      decoration: BoxDecoration(color: Styles.primaryFontColor),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Icon(Icons.delete, color: Colors.white, size: 24.0)
                        ],
                      ),
                    ),
                    key: new Key("$index"),
                    direction: DismissDirection.endToStart,
                    confirmDismiss: (DismissDirection direction) async {
                      final bool res = await showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text("Confirm"),
                              content: const Text(
                                  "Are you sure you wish to delete this item?"),
                              actions: <Widget>[
                                FlatButton(
                                    onPressed: () =>
                                        Navigator.of(context).pop(true),
                                    child: const Text("DELETE")),
                                FlatButton(
                                  onPressed: () =>
                                      Navigator.of(context).pop(false),
                                  child: const Text("CANCEL"),
                                )
                              ],
                            );
                          });
                      return res;
                    },
                    onDismissed: (direction) {
                      items.removeAt(index);
                      Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text("Deleted item $index"),
                        duration: Duration(milliseconds: 500),
                      ));
                    },
                    child: items[index]);
              }),
        ));
  }
}
