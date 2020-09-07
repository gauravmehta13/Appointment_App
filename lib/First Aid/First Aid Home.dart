import 'package:flutter/material.dart';

import 'Screens/BodyPain/BodyPain.dart';
import 'Screens/Grid.dart';

class FirstAid extends StatefulWidget {
  @override
  _FirstAidState createState() => _FirstAidState();
}

class _FirstAidState extends State<FirstAid>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
        title: new Text(
          "First Aid",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
        ),
        bottom: TabBar(
          labelPadding: EdgeInsets.symmetric(horizontal: 5),
          unselectedLabelColor: Colors.grey[400],
          labelColor: Colors.white,
          tabs: [
            Container(
                alignment: Alignment.center,
                height: 50,
                child: Text('Body Pain')),
            Container(
                alignment: Alignment.center,
                height: 50,
                child: Text('Common First Aid'))
          ],
          controller: _tabController,
          indicatorColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.tab,
        ),
        bottomOpacity: 1,
      ),
      body: TabBarView(
        children: [
          BodyPain(),
          Grid(),
        ],
        controller: _tabController,
      ),
    );
  }
}
