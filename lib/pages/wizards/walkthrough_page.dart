import 'package:flutter/material.dart';
import 'package:spiritual/components/walkthrough/repository/WalkthroughRepository.dart';
import 'package:spiritual/components/walkthrough/widget/walkthrough.dart';
import 'package:spiritual/menu/default_layout.dart';

class WalkthroughPage extends StatelessWidget {
  void _onButtonClick(BuildContext context) {
    Scaffold.of(context)
        .showSnackBar(SnackBar(content: Text("Clicked on button")));
  }

  // The Screen build
  @override
  Widget build(BuildContext context) {
    return Layout(
        backButton: true,
        title: "WALKTHROUGH",
        body: Walkthrough(
            pages: WalkthoughtRepository().loadWidgets(),
            buttonText: 'FORK IT',
            onButtonClick: _onButtonClick));
  }
}
