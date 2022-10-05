import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        ElevatedButton(
          onPressed: () {
            // Navigator.of(context)
            //     .push(MaterialPageRoute(builder: (BuildContext context) {
            //   return const SearchPage(
            //     title: 'search',
            //   );
            // }));
            Navigator.pushNamed(context, '/search');
          },
          child: const Text("跳转到搜索页面"),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(
              context,
              '/form',
              arguments: {'id': 20, 'name': 'zhangsan'},
            );
          },
          child: const Text("跳转到表单页面"),
        ),
      ],
    ));
  }
}
