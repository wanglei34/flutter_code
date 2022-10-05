import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.brown.shade300,
        title: const Center(child: Text("我的")),
      ),
      backgroundColor: Colors.brown.shade100,
      body: Stack(
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            // child: Image.network(
            //   "http://wangleis.oss-cn-beijing.aliyuncs.com/banner_h/6.JPG",
            //   fit: BoxFit.fill,
            // ),
          ),
          SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.fromLTRB(16, 120, 16, 16),
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(16),
                        margin: const EdgeInsets.only(top: 32),
                        decoration: BoxDecoration(
                          color: Colors.white.withAlpha(180),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.only(left: 100),
                              child: _buildColumn(context),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: NetworkImage(
                                "http://wangleis.oss-cn-beijing.aliyuncs.com/pic/cat.JPG"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        margin: const EdgeInsets.only(left: 16),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Card(
                    color: Colors.white.withAlpha(160),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 5,
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          title: Text(
                            "User Information",
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                          leading: const Icon(Icons.person),
                          trailing: const Icon(Icons.arrow_forward_ios),
                        ),
                        ListView(
                          shrinkWrap: true,
                          children: infoList
                              .map(
                                (info) => SizedBox(
                                  height: 80,
                                  child: ListTile(
                                    title: Text(info.title),
                                    subtitle: Text(info.subTitle),
                                    leading: Icon(info.icon),
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    height: 45,
                    width: 355,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 16),
                          primary: Colors.brown.shade300,
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: const Text(
                        "退出登录",
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Column _buildColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("wanglei111", style: Theme.of(context).textTheme.headlineMedium),
        const ListTile(
          contentPadding: EdgeInsets.all(0),
          title: Text("Flutter Developer"),
          subtitle: Text("Elliot"),
        )
      ],
    );
  }
}

class Info {
  IconData icon;
  String title;
  String subTitle;

  Info(this.icon, this.title, this.subTitle);
}

List<Info> infoList = [
  Info(Icons.account_circle, 'roles', 'admin'),
  Info(Icons.phone, 'Phone', '13770872966'),
  Info(Icons.attach_money, 'bonus', '20'),
  Info(Icons.calendar_view_day, 'Join', '2022-09-03'),
];
