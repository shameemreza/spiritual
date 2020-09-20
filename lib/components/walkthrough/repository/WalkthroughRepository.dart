import 'package:flutter/cupertino.dart';
import 'package:spiritual/components/walkthrough/component/walkthrough_template.dart';

class WalkthoughtRepository {
  List<Widget> loadWidgets() {
    return [
      WalkthroughTemplate(
        image: 'assets/svg/wizard1.svg',
        largeText: 'Awesome UIKit',
        smallText:
            'Lorem Ipsum is simply dummy text of \nthe printing and typesetting industry.',
      ),
      WalkthroughTemplate(
        image: 'assets/svg/wizard2.svg',
        largeText: 'Easy to use',
        smallText:
            'Lorem Ipsum is simply dummy text of \nthe printing and typesetting industry.',
      ),
      WalkthroughTemplate(
        image: 'assets/svg/wizard3.svg',
        largeText: 'Free forever',
        smallText:
            'Lorem Ipsum is simply dummy text of \nthe printing and typesetting industry.',
      )
    ];
  }
}
