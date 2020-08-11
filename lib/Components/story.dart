import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Story extends StatefulWidget {
  String imagePath;
  String name;

  bool status = false;

  Story(
    this.imagePath,
    this.status,
    this.name,
  );

  @override
  _StoryState createState() => _StoryState();
}

class _StoryState extends State<Story> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Stack(
        children: [
          Container(
            height: 62,
            width: 62,
            decoration: BoxDecoration(
                border: (this.widget.status
                    ? Border.all(color: Colors.redAccent, width: 2)
                    : Border.all(color: Colors.grey[500], width: 2)),
                borderRadius: BorderRadius.all(Radius.circular(50)),
                image:
                    DecorationImage(image: AssetImage(this.widget.imagePath))),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Text(this.widget.name,
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis),
          )
        ],
      ),
    );
  }
}
