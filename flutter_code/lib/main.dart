import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_code/route/count/count_page.dart';
import 'package:flutter_code/route/page_one.dart';
import 'package:flutter_code/route/page_three.dart';
import 'package:flutter_code/route/unknown_page.dart';

// import 'package:flutter_code/feign/screens/main_screen.dart';
// import 'package:flutter_code/basic/text_widget.dart';
// import 'package:flutter_code/basic/image_widget.dart';
// import 'package:flutter_code/basic/news_content.dart';
// import 'package:flutter_code/basic/list_tile_base.dart';
// import 'package:flutter_code/basic/news_page.dart';
// import 'package:flutter_code/basic/list_view_base.dart';
// import 'basic/my_dialog_code.dart';
// import 'package:flutter_code/basic/list_view_dynamic.dart';
// import 'package:flutter_code/basic/http_demo.dart';
// import 'package:flutter_code/basic/gird_view_base.dart';
// import 'package:flutter_code/basic/swiper_demo.dart';
// import 'package:flutter_code/basic/grid_view_builder.dart';
// import 'package:flutter_code/basic/aspect_ratio.dart';
// import 'package:flutter_code/basic/padding_demo.dart';
// import 'package:flutter_code/basic/card_demo.dart';
// import 'package:flutter_code/basic/row_demo.dart';
// import 'package:flutter_code/basic/layout_demo.dart';
// import 'package:flutter_code/basic/column_demo.dart';
// import 'package:flutter_code/basic/wrap_demo.dart';
// import 'package:flutter_code/basic/expanded_demo.dart';
// import 'package:flutter_code/basic/routes.dart';
// import 'package:flutter_code/basic/stack_align.dart';
// import 'package:flutter_code/pages/appbar_page.dart';
// import 'package:flutter_code/basic/stack_positioned.dart';
// import 'package:flutter_code/basic/button_demo.dart';
// import 'package:flutter_code/class/image_test.dart';
// import 'package:flutter_code/basic/floating_action_button_demo.dart';
// import 'package:flutter_code/basic/form_demo.dart';
// import 'package:flutter_code/basic/form_widget.dart';
// import 'package:flutter_code/basic/date_demo.dart';

import 'index_page.dart';
import 'route/page_two.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    //设置状态栏颜色
    statusBarColor: Colors.transparent,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // List themeList = [
    //   ThemeData(
    //     brightness: Brightness.light,
    //     // primarySwatch: Colors.red,
    //     appBarTheme: const AppBarTheme(
    //       backgroundColor: Colors.cyan,
    //     ),
    //     iconTheme: const IconThemeData(
    //       color: Colors.red, //设置icon主题色为黄色
    //       size: 32, // 设置icon大小
    //     ),
    //     textTheme: TextTheme(
    //       headline4: TextStyle(color: Colors.cyan.shade900), // 设置标题4号文本颜色为红色
    //     ),
    //     //分割线颜色
    //     dividerColor: Colors.cyan.shade600,
    //     scaffoldBackgroundColor: Colors.cyan,
    //     textButtonTheme: TextButtonThemeData(
    //       // 按钮主题
    //       style: TextButton.styleFrom(
    //         foregroundColor: Colors.blue,
    //         side: const BorderSide(
    //           color: Colors.blue,
    //         ),
    //       ),
    //       // ButtonStyle(
    //       // backgroundColor: MaterialStatePropertyAll(Colors.cyan.shade800),
    //       // foregroundColor: const MaterialStatePropertyAll(Colors.white),
    //       // ),
    //     ),
    //   ),
    //   ThemeData(
    //     brightness: Brightness.light,
    //     // primarySwatch: Colors.red,
    //     appBarTheme: const AppBarTheme(
    //       backgroundColor: Colors.greenAccent,
    //     ),
    //     iconTheme: const IconThemeData(
    //       color: Colors.red, //设置icon主题色为黄色
    //       size: 32, // 设置icon大小
    //     ),
    //     textTheme: TextTheme(
    //       headline4: TextStyle(color: Colors.green.shade900), // 设置标题4号文本颜色为红色
    //     ),
    //     //分割线颜色
    //     dividerColor: Colors.green.shade600,
    //     scaffoldBackgroundColor: Colors.greenAccent,
    //     textButtonTheme: TextButtonThemeData(
    //       // 按钮主题
    //       style: TextButton.styleFrom(
    //         foregroundColor: Colors.greenAccent,
    //         side: const BorderSide(
    //           color: Colors.greenAccent,
    //         ),
    //       ),
    //       // ButtonStyle(
    //       // backgroundColor: MaterialStatePropertyAll(Colors.cyan.shade800),
    //       // foregroundColor: const MaterialStatePropertyAll(Colors.white),
    //       // ),
    //     ),
    //   ),
    // ];
    final _navKey = GlobalKey<NavigatorState>();

    // final List<double> doubleList = [2.0, 5.0, 8.0, 9.0, 2.0, 4.0];

    // return ScopedModel<ThemeStateModel>(
    //   model: ThemeStateModel(),
    //   child: ScopedModelDescendant<ThemeStateModel>(
    //     builder: (context, child, model) {
    return MaterialApp(
      routes: {
        'page_one': (context) => const PageOne(),
        'page_two': (context) => const PageTwo(),
        'page_three': (context) => const PageThree(),
        'page_count': (context) => const CountAddPage(),
      },
      onUnknownRoute: (RouteSettings setting) =>
          MaterialPageRoute(builder: (context) => const UnknownPage()),
      navigatorKey: _navKey,
      debugShowCheckedModeBanner: false,
      title: 'Flutter UIs',
      // theme: themeList[model.themeIndex],
      supportedLocales: const [Locale('zh', 'CH'), Locale('en', 'US')],
      // home: PaintPage(doubleList: doubleList),
      home: const IndexPage(),
      // onGenerateRoute: onGenerateRoute,
      // routes: {
      //   '/': (context) => const NewsPage(),
      //   '/news-content': (context, {arguments}) => NewsContent(arguments: arguments),
      // },
    );
    //     },
    //   ),
    // );
  }
}
