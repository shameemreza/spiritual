import 'package:flutter/material.dart';
import 'package:spiritual/components/common/card/user_card.dart';
import 'package:spiritual/settings/Settings.dart';

class SwipeToDismissRepository {
  List<Widget> loadWidgets() {
    return [
      UserCard(
        image: 'assets/avatars/avatar_10.jpg',
        username: 'Shameem Reza',
        description: 'Freelancer',
        rtl: Settings.rtl,
      ),
      UserCard(
        image: 'assets/avatars/avatar_9.jpg',
        username: 'Nazmoon Munny',
        description: 'Programmer',
        rtl: Settings.rtl,
      ),
      UserCard(
        image: 'assets/avatars/avatar_8.jpg',
        username: 'Wasif Salvin',
        description: 'Director',
        rtl: Settings.rtl,
      ),
      UserCard(
        image: 'assets/avatars/avatar_7.jpg',
        username: 'John Doe',
        description: 'Web Developer',
        rtl: Settings.rtl,
      ),
      UserCard(
        image: 'assets/avatars/avatar_6.jpg',
        username: 'John Donne',
        description: 'Designer',
        rtl: Settings.rtl,
      ),
      UserCard(
        image: 'assets/avatars/avatar_5.jpg',
        username: 'Salvin Reza',
        description: 'Journalist',
        rtl: Settings.rtl,
      ),
      UserCard(
        image: 'assets/avatars/avatar_4.jpg',
        username: 'Aarish Reza',
        description: 'Pilot',
        rtl: Settings.rtl,
      ),
      UserCard(
        image: 'assets/avatars/avatar_3.jpg',
        username: 'Mirana Mariom',
        description: 'Nurse',
        rtl: Settings.rtl,
      ),
      UserCard(
        image: 'assets/avatars/avatar_2.jpg',
        username: 'Shameem Reza',
        description: 'Pilot',
        rtl: Settings.rtl,
      ),
      UserCard(
        image: 'assets/avatars/avatar_1.jpg',
        username: 'Munny Reza',
        description: 'Dancer',
        rtl: Settings.rtl,
      ),
    ];
  }
}
