import 'package:flutter/material.dart';
import 'package:spiritual/components/common/style/styles.dart';
import 'package:spiritual/components/image_gallery/repository/gallery_image_repository.dart';
import 'package:spiritual/menu/default_layout.dart';
import 'package:photo_view/photo_view_gallery.dart';

class GalleryView extends StatelessWidget {
  final title;

  /// This is where the image liast is defined
  /// cmd + left click on [ImageList] to see the data structure
  final imageList = GalleryRepository().loadImages();

  GalleryView({
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Layout(
        title: this.title.toUpperCase(),
        backButton: true,
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Styles.backGroundColor,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 5.0,
                  crossAxisSpacing: 5.0),
              itemCount: imageList.length,
              padding: EdgeInsets.all(5.0),
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  child: Container(
                    child: Image.asset(
                      imageList[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return PhotoViewGallery.builder(
                        itemCount: imageList.length,
                        builder: (context, index) {
                          return PhotoViewGalleryPageOptions(
                              imageProvider: AssetImage(imageList[index]));
                        },
                      );
                    }));
                  },
                );
              },
            )));
  }
}
