import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Category extends StatefulWidget {
  Icon icon;
  String name;

  Category(this.icon, this.name);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.grey[200]),
      child: Row(children: [
        (this.widget.icon != null ? this.widget.icon : Container()),
        Container(
            padding: EdgeInsets.only(left: 5),
            child: Text(
              this.widget.name,
              style: TextStyle(fontWeight: FontWeight.w500),
            ))
      ]),
    );
  }
}
