import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spiritual/components/common/separator/separator.dart';
import 'package:spiritual/components/common/style/styles.dart';

class WalkthroughTemplate extends StatelessWidget {
  final image;
  final largeText;
  final smallText;

  WalkthroughTemplate({
    this.image,
    this.largeText,
    this.smallText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SvgPicture.asset(image),
        Text(largeText,
            style: TextStyle(
                color: Styles.helperTextColor,
                fontSize: Styles.h2,
                fontWeight: Styles.mediumFont)),
        Separator(height: 5.0),
        Text(smallText,
            style: TextStyle(
                color: Styles.helperTextColor,
                fontSize: Styles.h3,
                fontWeight: Styles.lightFont)),
      ],
    );
  }
}
