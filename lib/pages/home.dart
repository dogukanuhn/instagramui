import 'package:flutter/material.dart';

import 'package:instagramui/Components/image-card.dart';
import 'package:instagramui/Components/story.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: Icon(
            Icons.camera_alt,
            color: Colors.black,
          ),
          actions: [
            Container(
              padding: EdgeInsets.only(right: 15),
              child: Stack(
                fit: StackFit.loose,
                alignment: Alignment.center,
                overflow: Overflow.visible,
                children: [
                  Icon(
                    Icons.send,
                    color: Colors.black,
                  ),
                  Positioned(
                    top: 8,
                    right: -5,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Text("1"),
                    ),
                  )
                ],
              ),
            )
          ],
          title: Image(image: AssetImage("images/logo.png")),
          elevation: 2,
          backgroundColor: Colors.white,
        ),
        body: Container(
          child: ListView(children: [
            Column(
              children: [
                Container(
                  height: 110,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Story("images/pp.jpg", true, "dogukanuhn"),
                      Story("images/a.jpg", false, "mcyarali"),
                      Story("images/story2.jpg", false, "tolugun"),
                      Story("images/story3.jpg", true, "exkatq"),
                      Story("images/story4.jpg", true, "itüce"),
                      Story("images/story5.jpg", false, "exel"),
                    ],
                  ),
                ),
                Column(
                  children: [ImageCard(), ImageCard()],
                )
              ],
            )
          ]),
        ));
  }
}
