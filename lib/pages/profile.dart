import 'package:flutter/material.dart';
import 'package:instagramui/Components/gridcard.dart';
import 'package:instagramui/Components/story.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with SingleTickerProviderStateMixin {
  TabController tabController;
  int currentTab;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
    currentTab = 0;
  }

  void goTo(int index) {
    this.tabController.animateTo(index);
    setState(() {
      this.currentTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 2,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.lock,
              size: 15,
              color: Colors.black,
            ),
            Text(
              "dogukanuhn",
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.only(left: 5, right: 15),
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          image: DecorationImage(
                              image: AssetImage("images/pp.jpg"))),
                    ),
                    Positioned(
                      bottom: 10,
                      right: 10,
                      child: Icon(
                        Icons.add_circle,
                        size: 25,
                        color: Colors.blueAccent,
                      ),
                    )
                  ],
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 13),
                        child: Column(
                          children: [
                            Text(
                              "10",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            Text("Gönderiler",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 13),
                        child: Column(
                          children: [
                            Text(
                              "285",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            Text("Takipçi",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 13),
                        child: Column(
                          children: [
                            Text(
                              "291",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            Text("Takip",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500)),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.only(left: 20, right: 15),
            child: Row(
              children: [
                Text(
                  "Berkay Dogukan Urhan",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 17),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(left: 20, right: 15),
            child: FlatButton(
              color: Colors.grey[200],
              shape: new RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Colors.grey[300]),
                  borderRadius: new BorderRadius.circular(10.0)),
              onPressed: () {},
              child: Text(
                "Profili Düzenle",
              ),
            ),
          ),
          Container(
            height: 110,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Story("images/pp.jpg", false, "<3"),
                Story("images/a.jpg", false, "kalb"),
              ],
            ),
          ),
          Divider(
            height: 0,
            color: Colors.grey[400],
          ),
          Container(
            child: Row(
              children: [
                Expanded(
                  child: FlatButton(
                      shape: Border(
                          bottom: BorderSide(
                              color: (this.currentTab == 0
                                  ? Colors.grey[700]
                                  : Colors.grey[200]))),
                      color: Colors.grey[200],
                      onPressed: () => goTo(0),
                      child: Icon(Icons.line_style)),
                ),
                Expanded(
                    child: FlatButton(
                        shape: Border(
                            bottom: BorderSide(
                                color: (this.currentTab == 1
                                    ? Colors.grey[700]
                                    : Colors.grey[200]))),
                        color: Colors.grey[200],
                        onPressed: () => goTo(1),
                        child: Icon(Icons.person_pin_circle))),
              ],
            ),
          ),
          Container(
            child: GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              children: [
                SearchGridCard("images/story3.jpg", false),
                SearchGridCard("images/asdf.png", false),
                SearchGridCard("images/story4.jpg", false),
                SearchGridCard("images/a.jpg", false),
                SearchGridCard("images/story3.jpg", false),
                SearchGridCard("images/asdf.png", false),
                SearchGridCard("images/story4.jpg", false),
                SearchGridCard("images/a.jpg", false),
                SearchGridCard("images/story3.jpg", false),
                SearchGridCard("images/asdf.png", false),
                SearchGridCard("images/story4.jpg", false),
                SearchGridCard("images/a.jpg", false),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
