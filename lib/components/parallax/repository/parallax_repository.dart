import 'package:flutter/cupertino.dart';
import 'package:spiritual/components/common/card/post_card.dart';
import 'package:spiritual/components/common/separator/separator.dart';
import 'package:spiritual/components/common/style/styles.dart';

class ParallaxRepository {
  List<Widget> loadWidgets() {
    return [
      Separator(height: 10.0),
      Text(
        'March 14th, 2020',
        style: TextStyle(
            fontWeight: Styles.lightFont,
            fontSize: Styles.h5,
            color: Styles.secondaryFontColor),
      ),
      Separator(height: 10.0),
      Text(
        'Lorem Ipsum is simply dummy text of the \nprinting and typesetting industry.',
        style: TextStyle(
            color: Styles.primaryFontColor,
            fontWeight: Styles.lightFont,
            fontSize: Styles.h2),
      ),
      Separator(height: 10.0),
      Text(
        'Lorem Ipsum is simply dummy text of the \nprinting and typesetting industry.',
        style: TextStyle(
          color: Styles.secondaryFontColor,
          fontSize: Styles.h3,
          fontWeight: Styles.lightFont,
        ),
      ),
      Separator(height: 20.0),
      PostCard(
        avatar: 'assets/avatars/avatar_3.jpg',
        name: 'John Smith',
        author: 'McDowels',
        description:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
        image: 'assets/images/spiritual_img_8.jpg',
      ),
      Separator(height: 10.0),
      PostCard(
        avatar: 'assets/avatars/avatar_2.jpg',
        name: 'Alice Parker',
        author: 'Browers Co.',
        description:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
        image: 'assets/images/spiritual_img_9.jpg',
      ),
      Separator(height: 10.0),
      PostCard(
        avatar: 'assets/avatars/avatar_3.jpg',
        name: 'John Smith',
        author: 'McDowels',
        description:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
        image: 'assets/images/spiritual_img_10.jpg',
      ),
      Separator(height: 10.0)
    ];
  }
}
