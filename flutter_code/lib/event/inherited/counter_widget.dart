import 'package:flutter/material.dart';

import 'counter_container.dart';

class CounterWidget extends StatelessWidget {
  const CounterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //获得父组件节点
    CounterContainer state = CounterContainer.of(context);
    return Column(children: [
      Text(
        '目前的值是：${state.model.count}',
        style: Theme.of(context).textTheme.headline5,
      ),
      FloatingActionButton(
        onPressed: state.increment,
        child: Icon(Icons.add),
      )
    ]);
  }
}
