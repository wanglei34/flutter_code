import 'package:flutter/material.dart';
import 'package:flutter_code/basic/news_content.dart';
import 'package:flutter_code/basic/news_page.dart';
import 'package:flutter_code/pages/form_page.dart';
import 'package:flutter_code/pages/search_page.dart';

final Map<String, Function> routes = {
  // '/': (context) => const Tabs(),
  // '/': (context) => const AppBarPage(),
  '/': (context) => const NewsPage(),
  '/search': (context) => const SearchPage(
        title: '搜索',
      ),
  '/form': (context, {arguments}) => FormPage(arguments: arguments),
  '/news-content': (context, {arguments}) => NewsContent(arguments: arguments),
};

var onGenerateRoute = (RouteSettings settings) {
  final String? name = settings.name;
  final Function? pageContainerBuilder = routes[name];
  if (pageContainerBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
        builder: (context) =>
            pageContainerBuilder(context, arguments: settings.arguments),
      );
      return route;
    } else {
      final Route route = MaterialPageRoute(
        builder: (context) => pageContainerBuilder(context),
      );
      return route;
    }
  }
};
