import 'package:flutter/material.dart';

class HistoryCard extends StatefulWidget {
  String userPhoto;
  String likedPhoto;
  List<String> users;
  bool isFollowing = false;

  HistoryCard(this.userPhoto, this.likedPhoto, this.users, this.isFollowing);

  @override
  _HistoryCardState createState() => _HistoryCardState();
}

class _HistoryCardState extends State<HistoryCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      image: DecorationImage(
                          image: AssetImage(this.widget.userPhoto))),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  margin: EdgeInsets.only(left: 10),
                  child: RichText(
                    text: TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        children: _getUserList()),
                  ),
                ),
              ],
            ),
          ),
          (this.widget.isFollowing == false
              ? Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(this.widget.likedPhoto))),
                )
              : FlatButton(
                  onPressed: () {},
                  padding: EdgeInsets.symmetric(),
                  shape: new RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Colors.grey[400]),
                      borderRadius: new BorderRadius.circular(10.0)),
                  child: Text("Takiptesin"),
                ))
        ],
      ),
    );
  }

  List<InlineSpan> _getUserList() {
    List<InlineSpan> list = [];

    for (var i = 0; i < this.widget.users.length; i++) {
      list.add(TextSpan(
          text: this.widget.users[i] +
              (i < this.widget.users.length - 2
                  ? ", "
                  : i < this.widget.users.length - 1 ? " ve " : ""),
          style: TextStyle(fontWeight: FontWeight.w500)));
    }

    if (!this.widget.isFollowing) {
      list.add(TextSpan(
          text: " gönderini beğendi.",
          style: TextStyle(
            color: Colors.black,
          )));
    } else {
      list.add(TextSpan(
          text: " seni takip etmeye başladı",
          style: TextStyle(
            color: Colors.black,
          )));
    }

    list.add(TextSpan(
        text: " 2h",
        style:
            TextStyle(color: Colors.grey[500], fontWeight: FontWeight.w500)));
    return list;
  }
}
