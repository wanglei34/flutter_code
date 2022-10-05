import 'package:flutter/cupertino.dart';

import 'counter_demo_page.dart';

class CounterContainer extends InheritedWidget {
  //方便子widget能在 Widget树中找到它
  static CounterContainer of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<CounterContainer>()
          as CounterContainer;

  // final int count;
  //直接使用CounterDemoPage中的状态类，来获取数据
  final CounterDemoPageState model;
  final Function() increment;

  CounterContainer({
    Key? key,
    required this.model,
    required this.increment,
    // required this.count,
    required Widget child,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(CounterContainer oldWidget) {
    // return count != oldWidget.count;
    return model != oldWidget.model;
  }
}
