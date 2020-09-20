import 'package:flutter/material.dart';
import 'package:spiritual/components/common/separator/separator.dart';
import 'package:spiritual/components/common/style/styles.dart';

class AlbumCard extends StatefulWidget {
  final image;
  final title;
  final photosNumber;
  final Function onClickItem;

  AlbumCard({this.image, this.title, this.photosNumber, this.onClickItem});

  @override
  AlbumCardState createState() => AlbumCardState(
      image: this.image, title: this.title, photosNumber: this.photosNumber);
}

class AlbumCardState extends State<AlbumCard> {
  String image;
  String title;
  int photosNumber;

  AlbumCardState({this.image, this.title, this.photosNumber});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        this.widget.onClickItem(context);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
              height: 180.0,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              )),
          Flexible(
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(this.title,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: Styles.h3,
                              fontWeight: Styles.lightFont,
                              color: Styles.primaryFontColor)),
                      Separator(height: 7.0),
                      Text('${this.photosNumber} Photos',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Styles.secondaryFontColor,
                              fontWeight: Styles.lightFont,
                              fontSize: Styles.h5))
                    ],
                  ))),
        ],
      ),
    );
  }
}
