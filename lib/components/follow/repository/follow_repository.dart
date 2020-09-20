import 'package:flutter/material.dart';
import 'package:spiritual/components/common/card/follow_card.dart';

class FollowRepository {
  List<AssetImage> _iconAssets() {
    return [
      AssetImage('assets/avatars/avatar_1.jpg'),
      AssetImage('assets/avatars/avatar_3.jpg'),
      AssetImage('assets/avatars/avatar_2.jpg'),
      AssetImage('assets/avatars/avatar_1.jpg'),
    ];
  }

  List<Widget> loadWidgets() {
    return [
      FollowCard(
          county: 'BANGLADESH',
          name: 'Shameem from Appbuff',
          icons: _iconAssets()),
      FollowCard(
          county: 'BANGLADESH',
          name: 'Munny from Appbuff',
          icons: _iconAssets()),
      FollowCard(
          county: 'BANGLADESH',
          name: 'Aarish from Appbuff',
          icons: _iconAssets()),
      FollowCard(
          county: 'BANGLADESH',
          name: 'Salvin from Appbuff',
          icons: _iconAssets()),
    ];
  }
}
