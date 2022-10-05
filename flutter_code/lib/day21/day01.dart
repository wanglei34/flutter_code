import 'package:flutter/material.dart';

TextStyle _titleStyle =
    const TextStyle(color: Colors.deepOrange, fontSize: 15.0);
TextStyle _subTitleStyle = const TextStyle(fontSize: 14.0);

class ProfileOnePage extends StatelessWidget {
  const ProfileOnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              _buildHeader(),
              _buildRow(),
              Expanded(child: _buildListTile()),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      height: 270,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          stops: const [0.2, 0.9],
          colors: [
            Colors.red,
            Colors.deepOrange.shade300,
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  minRadius: 30.0,
                  backgroundColor: Colors.red.shade600,
                  child: const Icon(
                    Icons.call,
                    size: 30.0,
                  ),
                ),
                CircleAvatar(
                  minRadius: 60,
                  backgroundColor: Colors.deepOrange.shade300,
                  child: const CircleAvatar(
                    backgroundImage: AssetImage(
                      'images/avatar.jpg',
                    ),
                    minRadius: 50,
                  ),
                ),
                CircleAvatar(
                  minRadius: 30.0,
                  backgroundColor: Colors.red.shade600,
                  child: const Icon(
                    Icons.message,
                    size: 30.0,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'crq',
            style: TextStyle(fontSize: 22.0, color: Colors.white),
          ),
          Text(
            '热忱',
            style: TextStyle(fontSize: 14.0, color: Colors.red.shade100),
          ),
        ],
      ),
    );
  }

  Widget _buildRow() {
    return Row(
      children: [
        Expanded(
          child: Container(
            color: Colors.deepOrange.shade300,
            child: const ListTile(
              title: Text(
                '50898',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0),
              ),
              subtitle: Text(
                'FOLLOWERS',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.red,
            child: const ListTile(
              title: Text(
                '345288',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0),
              ),
              subtitle: Text(
                'FOLLOWERS',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white70,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildListTile() {
    return ListView.builder(
        itemCount: infoList.length,
        itemExtent: 80,
        itemBuilder: (context, index) {
          return ListTile(
            dense: true,
            title: Text(
              infoList[index].title,
              style: _titleStyle,
            ),
            subtitle: Text(
              infoList[index].subTitle,
              style: _subTitleStyle,
            ),
          );
        });
  }
}

class Info {
  String title;
  String subTitle;

  Info(this.title, this.subTitle);
}

List<Info> infoList = [
  Info('Email', '2631315464@qq.com'),
  Info('Phone', '+86 18851699003'),
  Info('Github', 'https://github.con'),
  Info('Google', 'https://www.google.com'),
  Info('Baidu', 'https://www.baidu.com'),
];
