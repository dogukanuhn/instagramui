import 'package:flutter/material.dart';
import 'package:instagramui/Components/category.dart';
import 'package:instagramui/Components/gridcard.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.all(Radius.circular(10))),
          height: 40,
          child: TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "Ara",
                fillColor: Colors.red,
                border: InputBorder.none),
          ),
        ),
        actions: [
          Container(
            padding: EdgeInsets.only(
              right: 15,
            ),
            child: Icon(
              Icons.scanner,
              color: Colors.black,
              size: 30,
            ),
          )
        ],
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(color: Colors.grey[400], offset: Offset(0, 1))
            ]),
            height: 55,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Category(
                    Icon(
                      Icons.tv,
                      size: 20,
                    ),
                    "IGTV"),
                Category(
                    Icon(
                      Icons.card_travel,
                      size: 20,
                    ),
                    "Mağaza"),
                Category(null, "Seyahat"),
                Category(null, "Mimari")
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 3),
              child: GridView.count(
                crossAxisCount: 3,
                children: [
                  SearchGridCard("images/story3.jpg", true),
                  SearchGridCard("images/asdf.png", true),
                  SearchGridCard("images/story4.jpg", true),
                  SearchGridCard("images/a.jpg", false),
                  SearchGridCard("images/story3.jpg", true),
                  SearchGridCard("images/asdf.png", true),
                  SearchGridCard("images/story4.jpg", true),
                  SearchGridCard("images/a.jpg", false),
                  SearchGridCard("images/story3.jpg", true),
                  SearchGridCard("images/asdf.png", true),
                  SearchGridCard("images/story4.jpg", true),
                  SearchGridCard("images/a.jpg", false),
                  SearchGridCard("images/story3.jpg", true),
                  SearchGridCard("images/asdf.png", true),
                  SearchGridCard("images/story4.jpg", true),
                  SearchGridCard("images/a.jpg", false)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
