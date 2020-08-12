import 'package:flutter/material.dart';
import 'package:instagramui/Components/history-card.dart';

class History extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 2,
        title: Text(
          "Hareketler",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(),
              child: FlatButton(
                onPressed: () {},
                child: Container(
                  width: double.infinity,
                  child: Text(
                    "Takip İstekleri",
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ),
            Divider(
              height: 1,
              color: Colors.grey[500],
            ),
            Container(
              margin: EdgeInsets.only(left: 10, top: 10),
              width: MediaQuery.of(context).size.width,
              child: Text(
                "Bu Ay",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  HistoryCard("images/a.jpg", "images/pp.jpg",
                      ["test", "test2", "asfd"], false),
                  HistoryCard("images/a.jpg", "images/pp.jpg",
                      ["test", "test2", "asfd"], false),
                  HistoryCard("images/story2.jpg", null, ["test"], true),
                  HistoryCard("images/a.jpg", "images/pp.jpg", ["test"], false),
                  HistoryCard("images/story4.jpg", null, ["test"], true)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
