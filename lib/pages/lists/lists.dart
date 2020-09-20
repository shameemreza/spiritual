import 'package:flutter/material.dart';
import 'package:spiritual/components/common/card/component_card.dart';
import 'package:spiritual/menu/component/component_list.dart';
import 'package:spiritual/routers/routes.dart';

class Lists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ComponentList(
      title: "LISTS",
      componentCards: [
        ComponentCard(
          text: 'Swipe To Dismiss',
          route: Routes.swipeToDismiss,
          icon: Icons.switch_camera,
          margin: EdgeInsets.symmetric(vertical: 5.0),
        ),
        ComponentCard(
          text: 'Drag & Drop',
          route: Routes.dragAndDrop,
          icon: Icons.drag_handle,
          margin: EdgeInsets.symmetric(vertical: 5.0),
        ),
        ComponentCard(
          text: 'Expandable List',
          route: Routes.expandable,
          icon: Icons.expand_more,
          margin: EdgeInsets.symmetric(vertical: 5.0),
        ),
      ],
    );
  }
}
