import 'package:flutter/material.dart';
import 'package:flutter_layout/widget/layout_page.dart';
import 'package:flutter_layout/widget/theme_model.dart';
import 'package:scoped_model/scoped_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List themeList = [
      ThemeData(
        brightness: Brightness.light,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
        ),
        iconTheme: const IconThemeData(
          color: Colors.red, //设置icon主题色为黄色
          size: 32, // 设置icon大小
        ),
        textTheme: TextTheme(
          headline4: TextStyle(color: Colors.cyan.shade900), // 设置标题4号文本颜色为红色
        ),
        //分割线颜色
        dividerColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        textButtonTheme: TextButtonThemeData(
          // 按钮主题
          style: TextButton.styleFrom(
            onSurface: Colors.white,
            side: const BorderSide(
              color: Colors.white,
            ),
          ),
        ),
      ),
      ThemeData(
        brightness: Brightness.light,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
        ),
        iconTheme: const IconThemeData(
          color: Colors.red, //设置icon主题色为黄色
          size: 32, // 设置icon大小
        ),
        textTheme: TextTheme(
          headline4: TextStyle(color: Colors.green.shade900),
        ),
        dividerColor: Colors.green.shade600,
        scaffoldBackgroundColor: Colors.greenAccent,
        textButtonTheme: TextButtonThemeData(
          // 按钮主题
          style: TextButton.styleFrom(
            onSurface: Colors.greenAccent,
            side: const BorderSide(
              color: Colors.greenAccent,
            ),
          ),
        ),
      ),
    ];
    final _navKey = GlobalKey<NavigatorState>();

    final List<double> doubleList = [3.0, 6.0, 10.0, 5.0, 5.0, 4.0];

    return ScopedModel<ThemeStateModel>(
      model: ThemeStateModel(),
      child: ScopedModelDescendant<ThemeStateModel>(
        builder: (context, child, model) {
          return MaterialApp(
            navigatorKey: _navKey,
            debugShowCheckedModeBanner: false,
            title: 'Flutter',
            theme: themeList[model.themeIndex],
            // home: PainterPage(doubleList: doubleList),
            home: const LayoutPage(),
          );
        },
      ),
    );
  }
}
