import 'package:flutter/material.dart';
import 'package:flutter_course/InheritedWidget/counter_demo_page.dart';

class CounterContainer extends InheritedWidget {
  static CounterContainer of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<CounterContainer>()
          as CounterContainer;

  final CounterDemoPageState model;
  final Function() increment;

  const CounterContainer({
    Key? key,
    required this.model,
    required this.increment,
    required Widget child,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(CounterContainer oldWidget) {
    return model != oldWidget.model;
  }
}
