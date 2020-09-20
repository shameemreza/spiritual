import 'package:flutter/cupertino.dart';
import 'package:spiritual/components/dialogs/widget/SubscribeDialog.dart';

class SubscribeRepository {
  Widget loadDialog(BuildContext context) {
    return SubscribeDialog(
      title: 'Subscribe for more!',
      hintText: 'Email',
      buttonText: 'Subscribe',
      onPress: () {
        Navigator.of(context).pop();
      },
    );
  }
}
