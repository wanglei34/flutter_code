import 'package:flutter/material.dart';

class AppBarPage extends StatelessWidget {
  const AppBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.red,
              // leading: IconButton(
              //     onPressed: () {
              //       print('menu pressed');
              //     },
              //     tooltip: 'search',
              //     icon: const Icon(Icons.menu),
              // ),
              title: const Text('Drawer组件'),
              // actions: <Widget>[
              //   IconButton(
              //     onPressed: () {
              //       print('search pressed');
              //     },
              //     tooltip: 'search',
              //     icon: const Icon(Icons.search),
              //   ),
              //   IconButton(
              //     onPressed: () {
              //       print('more_horiz pressed');
              //     },
              //     tooltip: 'more_horiz',
              //     icon: const Icon(Icons.more_horiz),
              //   ),
              // ],
              // bottom: const TabBar(tabs: <Widget>[
              //   Tab(
              //     text: '热门',
              //   ),
              //   Tab(
              //     text: '推荐',
              //   )
              // ]),
            ),
            drawer: Drawer(
              child: Column(
                children: <Widget>[
                  UserAccountsDrawerHeader(
                    accountName: const Text('crq'),
                    accountEmail: const Text("1232123213@qq.com"),
                    currentAccountPicture: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://avatars.githubusercontent.com/u/59445871?v=4'),
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.yellow,
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://www.itying.com/images/flutter/1.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    otherAccountsPictures: <Widget>[
                      Image.network(
                          'https://www.itying.com/images/flutter/2.png'),
                      Image.network(
                          'https://www.itying.com/images/flutter/3.png'),
                      Image.network(
                          'https://www.itying.com/images/flutter/4.png'),
                    ],
                  ),

                  // DrawerHeader(
                  //   decoration: const BoxDecoration(
                  //     color: Colors.yellow,
                  //     image: DecorationImage(
                  //       image: NetworkImage(
                  //           "https://www.itying.com/images/flutter/1.png"),
                  //       fit: BoxFit.cover,
                  //     ),
                  //   ),
                  //   child: ListView(
                  //     children: const <Widget>[
                  //       Text("我是头部"),
                  //     ],
                  //   ),
                  // ),
                  const ListTile(
                    title: Text("个人中心"),
                    leading: CircleAvatar(
                      child: Icon(Icons.people),
                    ),
                  ),
                  const Divider(),
                  const ListTile(
                    title: Text("系统设置"),
                    leading: CircleAvatar(
                      child: Icon(Icons.settings),
                    ),
                  ),
                  const Divider(),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.pushNamed(context, '/search');
                    },
                    child: const ListTile(
                      title: Text("搜索"),
                      leading: CircleAvatar(
                        child: Icon(Icons.settings),
                      ),
                    ),
                  )
                ],
              ),
            ),
            endDrawer: const Drawer(
              child: Text("右侧侧边栏"),
            ),
            body: TabBarView(
              children: [
                ListView(
                  children: const <Widget>[
                    ListTile(
                      title: Text('这是第一个tab'),
                    ),
                    ListTile(
                      title: Text('这是第二个tab'),
                    ),
                    ListTile(
                      title: Text('这是第三个tab'),
                    )
                  ],
                ),
                ListView(
                  children: const <Widget>[
                    ListTile(
                      title: Text('这是第一个tab'),
                    ),
                    ListTile(
                      title: Text('这是第二个tab'),
                    ),
                    ListTile(
                      title: Text('这是第三个tab'),
                    )
                  ],
                )
              ],
            )),
      ),
    );
  }
}

class AppBarPage1 extends StatefulWidget {
  const AppBarPage1({Key? key}) : super(key: key);

  @override
  _AppBarPage1State createState() => _AppBarPage1State();
}

class _AppBarPage1State extends State<AppBarPage1>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 3,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('顶部tab切换'),
          bottom: TabBar(
            tabs: const <Widget>[
              Tab(
                icon: Icon(Icons.directions_bike),
              ),
              Tab(
                icon: Icon(Icons.directions_boat),
              ),
              Tab(
                icon: Icon(Icons.directions_bus),
              )
            ],
            controller: _tabController,
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: const <Widget>[
            Center(
              child: Text('自行车'),
            ),
            Center(
              child: Text('船'),
            ),
            Center(
              child: Text('巴士'),
            ),
          ],
        ));
  }
}
