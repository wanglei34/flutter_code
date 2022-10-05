import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProfileTwoPage extends StatelessWidget {
  const ProfileTwoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemUiOverlayStyle systemUiOverlayStyle = const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);

    return Scaffold(
      backgroundColor: Colors.indigo.shade100,
      body: Stack(children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Image.network(
            'https://images.pexels.com/photos/9318382/pexels-photo-9318382.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load',
            fit: BoxFit.fitHeight,
          ),
        ),
        SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.fromLTRB(16, 120, 16, 16),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(14),
                      margin: const EdgeInsets.only(top: 22),
                      decoration: BoxDecoration(
                        color: Colors.white.withAlpha(180),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 100),
                            child: _buildColumn(context), //构建名片上半部分
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          _buildRow(),
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
                                'https://avatars.githubusercontent.com/u/59445871?v=4'),
                            fit: BoxFit.cover),
                      ),
                      margin: const EdgeInsets.only(left: 16),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Card(
                  color: Colors.white.withAlpha(180),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 5,
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          "User Information",
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        leading: const Icon(Icons.person),
                        trailing: const Icon(Icons.arrow_forward_ios),
                      ),
                      ListView(
                        shrinkWrap: true,
                        children: infoList
                            .map((info) => SizedBox(
                                  height: 70,
                                  child: ListTile(
                                    title: Text(info.title),
                                    subtitle: Text(info.subTitle),
                                    leading: Icon(info.icon),
                                  ),
                                ))
                            .toList(),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }

  Widget _buildColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Little Butterfly',
          style: Theme.of(context).textTheme.headline4,
        ),
        const ListTile(
          contentPadding: EdgeInsets.all(0),
          title: Text('Flutter Developer'),
          subtitle: Text('crq'),
        )
      ],
    );
  }

  Widget _buildRow() {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: const [Text('288'), Text('Likes')],
          ),
        ),
        Expanded(
          child: Column(
            children: const [Text('366'), Text('Comments')],
          ),
        ),
        Expanded(
          child: Column(
            children: const [Text('699'), Text('Favourites')],
          ),
        ),
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
  Info(Icons.email, 'Email', '2631315464@qq.com'),
  Info(Icons.phone, 'Phone', '+86 18851699003'),
  Info(Icons.code, 'Website', 'https://poicc.github.io'),
  Info(Icons.web, 'Github', 'https://github.con'),
  Info(Icons.calendar_view_day, 'Join Date', '14 September 2022'),
];
