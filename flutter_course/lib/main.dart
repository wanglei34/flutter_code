import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_course/route/page_one.dart';
import 'package:flutter_course/route/page_three.dart';
import 'package:flutter_course/route/page_two.dart';
import 'package:flutter_course/route/unknown_page.dart';

import 'Pritice/first_page.dart';
import 'Pritice/second_page.dart';
import 'animation/animation_page.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    //设置状态栏颜色
    statusBarColor: Colors.transparent,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        'page-one': (context) => const PageOne(),
        'page-two': (context) => const PageTwo(),
        'page-three': (context) => const PageThree(),
        'first-page': (context) => const FirstPage(),
        'second-Page': (context) => const SecondPage(),
      },
      onUnknownRoute: (RouteSettings setting) =>
          MaterialPageRoute(builder: (context) => const UnknownPage()),
      debugShowCheckedModeBanner: false,
      // home: CounterDemoPage(),
      // home: NotificationDemoPage(),
      // home: EventbusFirstPage(),
      // home: const PageOne(),
      // home: FirstPage(),
      home: AnimationPage(),
    );
  }
}
