import 'package:flutter/cupertino.dart';
import 'package:spiritual/components/dialogs/widget/InfoDialog.dart';

class InfoRepository {
  Widget loadDialog(BuildContext context) {
    return InfoDialog(
      title: 'This is an info dialog',
      description: 'Lorem Ipsum has been the industy standard since the 1500s',
      positiveButton: 'OK',
      onPress: () {
        Navigator.of(context).pop();
      },
    );
  }
}
