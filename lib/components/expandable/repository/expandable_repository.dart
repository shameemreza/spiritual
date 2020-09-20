import 'package:flutter/material.dart';
import 'package:spiritual/components/common/list/expandable_user.dart';
import 'package:spiritual/settings/Settings.dart';

class ExpandableRepository {
  List<Widget> loadWidgets() {
    return [
      ExpandableUser(
          username: 'Shameem Reza',
          year: '1990',
          description: 'info@shameem.me',
          firstLine: 'Shameem Reza',
          secondLine: '88017000000',
          image: 'assets/avatars/avatar_1.jpg',
          rtl: Settings.rtl),
      ExpandableUser(
          username: 'Nazmoon Munny',
          year: '1991',
          description: 'info@appbuff.net',
          firstLine: 'Nazmoon Munny',
          secondLine: '88017100000',
          image: 'assets/avatars/avatar_2.jpg',
          rtl: Settings.rtl),
      ExpandableUser(
          username: 'John Donne',
          year: '2000',
          description: 'appbuffdev@gmail.com',
          firstLine: 'John Donne',
          secondLine: '88017100000',
          image: 'assets/avatars/avatar_3.jpg',
          rtl: Settings.rtl),
      ExpandableUser(
          username: 'John Doe',
          year: '1974',
          description: 'info@appbuff.net',
          firstLine: 'John Doe',
          secondLine: '8801710002020',
          image: 'assets/avatars/avatar_4.jpg',
          rtl: Settings.rtl),
      ExpandableUser(
          username: 'John Don',
          year: '1989',
          description: 'info@appbuff.net',
          firstLine: 'John Don',
          secondLine: '8801710002020',
          image: 'assets/avatars/avatar_5.jpg',
          rtl: Settings.rtl),
      ExpandableUser(
          username: 'John Dun',
          year: '2000',
          description: 'info@appbuff.net',
          firstLine: 'John Dun',
          secondLine: '8801710002020',
          image: 'assets/avatars/avatar_6.jpg',
          rtl: Settings.rtl),
      ExpandableUser(
          username: 'John Donne',
          year: '1974',
          description: 'info@appbuff.net',
          firstLine: 'John Donne',
          secondLine: '8801710002020',
          image: 'assets/avatars/avatar_7.jpg',
          rtl: Settings.rtl),
      ExpandableUser(
          username: 'John Donne',
          year: '1989',
          description: 'info@appbuff.net',
          firstLine: 'John Donne',
          secondLine: '8801710002020',
          image: 'assets/avatars/avatar_8.jpg',
          rtl: Settings.rtl),
      ExpandableUser(
          username: 'John Donne',
          year: '2000',
          description: 'info@appbuff.net',
          firstLine: 'John Donne',
          secondLine: '8801710002020',
          image: 'assets/avatars/avatar_9.jpg',
          rtl: Settings.rtl),
      ExpandableUser(
          username: 'John Donne',
          year: '1974',
          description: 'info@appbuff.net',
          firstLine: 'John Donne',
          secondLine: '8801710002020',
          image: 'assets/avatars/avatar_10.jpg',
          rtl: Settings.rtl),
    ];
  }
}
