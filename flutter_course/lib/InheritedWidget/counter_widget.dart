import 'package:flutter/material.dart';
import 'package:flutter_course/InheritedWidget/counter_container.dart';

class CounterWidget extends StatelessWidget {
  const CounterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CounterContainer state = CounterContainer.of(context);
    return Column(
      children: [
        Center(
          child: Text(
            '目前的值是: ${state.model.count}',
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 500),
          child: FloatingActionButton(
            onPressed: state.increment,
            child: const Icon(Icons.add),
          ),
        )
      ],
    );
  }
}
