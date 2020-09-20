import 'package:flutter/material.dart';
import 'package:spiritual/components/common/card/user_card.dart';
import 'package:spiritual/settings/Settings.dart';

class DragAndDropRepository {
  IconData _loadDragHandleIcon() {
    return Icons.drag_handle;
  }

  List<Widget> loadWidgets() {
    return [
      UserCard(
          image: 'assets/avatars/avatar_1.jpg',
          username: 'Shameem Reza',
          description: 'Programmer',
          icon: _loadDragHandleIcon(),
          rtl: Settings.rtl),
      UserCard(
          image: 'assets/avatars/avatar_2.jpg',
          username: 'Nazmoon Munny',
          description: 'Developer',
          icon: _loadDragHandleIcon(),
          rtl: Settings.rtl),
      UserCard(
          image: 'assets/avatars/avatar_3.jpg',
          username: 'Wasif Salvin',
          description: 'Artist',
          icon: _loadDragHandleIcon(),
          rtl: Settings.rtl),
      UserCard(
          image: 'assets/avatars/avatar_4.jpg',
          username: 'Arrish Reza',
          description: 'Actor',
          icon: _loadDragHandleIcon(),
          rtl: Settings.rtl),
      UserCard(
          image: 'assets/avatars/avatar_5.jpg',
          username: 'Mirana Reza',
          description: 'Weather Reporter',
          icon: _loadDragHandleIcon(),
          rtl: Settings.rtl),
      UserCard(
          image: 'assets/avatars/avatar_6.jpg',
          username: 'John Doe',
          description: '_loadDragHandleIcon',
          icon: _loadDragHandleIcon(),
          rtl: Settings.rtl),
      UserCard(
          image: 'assets/avatars/avatar_7.jpg',
          username: 'John Donne',
          description: 'Journalist',
          icon: _loadDragHandleIcon(),
          rtl: Settings.rtl),
      UserCard(
          image: 'assets/avatars/avatar_8.jpg',
          username: 'John Dun',
          description: 'Writer',
          icon: _loadDragHandleIcon(),
          rtl: Settings.rtl),
      UserCard(
          image: 'assets/avatars/avatar_9.jpg',
          username: 'Done sinu',
          description: 'Student',
          icon: _loadDragHandleIcon(),
          rtl: Settings.rtl),
      UserCard(
          image: 'assets/avatars/avatar_10.jpg',
          username: 'Wasif Reza',
          description: 'Doctor',
          icon: _loadDragHandleIcon(),
          rtl: Settings.rtl)
    ];
  }
}
