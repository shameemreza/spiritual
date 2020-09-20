import 'package:flutter/material.dart';
import 'package:spiritual/components/common/card/component_card.dart';
import 'package:spiritual/menu/component/component_list.dart';
import 'package:spiritual/routers/routes.dart';

class CardsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ComponentList(
      title: "CARDS",
      componentCards: [
        ComponentCard(
          text: 'Rate Us',
          route: Routes.rates,
          icon: Icons.poll,
          margin: EdgeInsets.symmetric(vertical: 5.0),
        ),
        ComponentCard(
          text: 'Follow Us',
          route: Routes.follow,
          icon: Icons.supervised_user_circle,
          margin: EdgeInsets.symmetric(vertical: 5.0),
        ),
        ComponentCard(
          text: 'Our Profile',
          route: Routes.profile,
          icon: Icons.supervised_user_circle,
          margin: EdgeInsets.symmetric(vertical: 5.0),
        ),
      ],
    );
  }
}
