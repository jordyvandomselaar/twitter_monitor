import 'package:flutter/material.dart';

class FollowersPage extends StatefulWidget {
  @override
  _FollowersPageState createState() => _FollowersPageState();
}

class _FollowersPageState extends State<FollowersPage>
    with SingleTickerProviderStateMixin {
  final _scrollController = ScrollController();
  TabController _tabController;
  String _appbarString = "Unfollowers";

  @override
  void initState() {
    super.initState();

    this._tabController =
        TabController(length: 2, vsync: this, initialIndex: 0);
    this._tabController.addListener(() {
      setState(() {
        this._appbarString =
            _tabController.index == 0 ? "Unfollowers" : "Followers";
      });
    });
  }

  @override
  void dispose() {
    this._tabController.dispose();
    this._scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this._appbarString),
          bottom: TabBar(
            controller: this._tabController,
            tabs: <Widget>[
              Text("Unfollowers"),
              Text("Followers"),
            ],
          ),
        ),
        body: TabBarView(
          controller: this._tabController,
          children: <Widget>[
            ListView(
              controller: this._scrollController,
              children: <Widget>[
                GridView.count(
                    controller: this._scrollController,
                    crossAxisCount: 3,
                    shrinkWrap: true,
                    children: <Widget>[
                      FollowerCard(
                        name: "Jordy",
                      ),
                      FollowerCard(
                        name: "Jordy",
                      ),
                      FollowerCard(
                        name: "Jordy",
                      ),
                      FollowerCard(
                        name: "Jordy",
                      ),
                      FollowerCard(
                        name: "Jordy",
                      ),
                    ])
              ],
            ),
            ListView(
              controller: this._scrollController,
              children: <Widget>[
                GridView.count(
                    controller: this._scrollController,
                    crossAxisCount: 3,
                    shrinkWrap: true,
                    children: <Widget>[
                      FollowerCard(
                        name: "Jordy",
                      ),
                      FollowerCard(
                        name: "Jordy",
                      ),
                      FollowerCard(
                        name: "Jordy",
                      ),
                      FollowerCard(
                        name: "Jordy",
                      ),
                      FollowerCard(
                        name: "Jordy",
                      ),
                    ])
              ],
            )
          ],
        ));
  }
}

class FollowerCard extends StatelessWidget {
  final String name;

  FollowerCard({@required this.name, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: NetworkImage(
          "https://www.deviersprong.nl/wp-content/uploads/2017/11/img-person-placeholder.jpg"),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
        ),
        clipBehavior: Clip.antiAlias,
        child: Container(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(this.name),
            ),
            color: Colors.black26,
            width: double.infinity,
            height: 40),
        alignment: Alignment.bottomCenter,
      ),
    );
  }
}
