import 'package:flutter/material.dart';
import 'package:flutter_course/route/page_two.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('PageOne'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              const Text('PageOne'),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, 'page-two'),
                child: const Text('命名路由跳转到PageTwo'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PageTwo(),
                  ),
                ),
                child: const Text('普通路由跳转到PageTwo'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, 'page'),
                child: const Text('命名路由异常处理'),
              ),
            ],
          ),
        ));
  }
}
