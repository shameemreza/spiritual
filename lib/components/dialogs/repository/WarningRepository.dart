import 'package:flutter/cupertino.dart';
import 'package:spiritual/components/dialogs/widget/WarningDialog.dart';

class WarningRepository {
  Widget loadDialog(BuildContext context) {
    return WarningDialog(
        title: 'WARNING!',
        description:
            'Lorem Ipsum has been the industy standard since the 1500s',
        positiveButton: 'OK',
        negativeButton: 'CANCEL',
        positivePress: () {
          Navigator.of(context).pop();
        },
        negativePress: () {
          Navigator.of(context).pop();
        });
  }
}
