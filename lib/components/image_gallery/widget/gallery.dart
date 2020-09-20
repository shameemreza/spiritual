import 'package:flutter/material.dart';
import 'package:spiritual/components/common/style/styles.dart';
import 'package:spiritual/components/image_gallery/repository/gallery_image_repository.dart';
import 'package:spiritual/components/image_gallery/widget/gallery_view.dart';
import 'package:spiritual/menu/default_layout.dart';

class Gallery extends StatelessWidget {
  ///title defined here
  final String title = "GALLERY";

  void _openGalleryView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => GalleryView(title: title)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Layout(
        backButton: true,
        title: title,
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Styles.backGroundColor,
            child: new GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                padding: const EdgeInsets.all(6.0),
                mainAxisSpacing: 6.0,
                crossAxisSpacing: 6.0,
                children: GalleryRepository().loadWidgets(_openGalleryView))));
  }
}
