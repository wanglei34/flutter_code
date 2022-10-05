import 'package:flutter/material.dart';
import 'package:share_app/animation/index_page.dart';
import 'package:share_app/animation/share_page.dart';

import 'my_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 3,
      child: Scaffold(
        body: TabBarView(
          children: [
            SharePage(),
            IndexPage(),
            MyPage(),
          ],
        ),
        bottomNavigationBar: SafeArea(
          child: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.sentiment_satisfied_sharp),
                text: '主页',
              ),
              Tab(
                icon: Icon(Icons.keyboard_command_key),
                text: 'XXX',
              ),
              Tab(
                icon: Icon(Icons.auto_awesome),
                text: '我的',
              ),
            ],
            unselectedLabelColor: Colors.blueGrey,
            labelColor: Colors.brown,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Colors.brown,
          ),
        ),
      ),
    );
  }
}
