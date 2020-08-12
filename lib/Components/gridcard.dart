import 'package:flutter/material.dart';

class SearchGridCard extends StatefulWidget {
  String image;
  bool isMultiple = false;
  SearchGridCard(this.image, this.isMultiple);

  @override
  _SearchGridCardState createState() => _SearchGridCardState();
}

class _SearchGridCardState extends State<SearchGridCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        margin: EdgeInsets.all(1),
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage(this.widget.image))),
      ),
      (this.widget.isMultiple
          ? Positioned(
              right: 5,
              top: 5,
              child: Icon(
                Icons.content_copy,
                color: Colors.white,
                size: 15,
              ))
          : Container()),
    ]);
  }
}
