import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class EventPage extends StatefulWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  double _tap = 0.8;
  double _left = 0.8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('用户事件交互')),
      ),
      // body: Listener(
      //   child: Container(
      //     color: Colors.red,
      //     width: 300,
      //     height: 300,
      //   ),
      //   onPointerDown: (event) => print('down $event'),
      //   onPointerUp: (event) => print('up $event'),
      //   onPointerMove: (event) => print('move $event'),
      // ),
      // body: Stack(
      //   children: [
      //     Positioned(
      //       top: _tap,
      //       left: _left,
      //       child: GestureDetector(
      //         onTap: () => print('Tap'),
      //         onPanUpdate: (e) {
      //           print(e.delta.dx);
      //           //拖动回调
      //           setState(() {
      //             _left += e.delta.dx;
      //             _tap += e.delta.dy;
      //           });
      //         },
      //         child: Container(
      //           color: Colors.red,
      //           width: 100,
      //           height: 100,
      //         ),
      //       ),
      //     )
      //   ],
      // ),
      // body: GestureDetector(
      //   onTap: () => print('Parent Tapped'),
      //   child: Container(
      //     color: Colors.blue,
      //     child: Center(
      //       child: GestureDetector(
      //         onTap: () => print('child Tapped'),
      //         child: Container(
      //           color: Colors.yellow,
      //           width: 200,
      //           height: 200,
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
      body: RawGestureDetector(
        gestures: {
          //建立手势识别器和手势识别工厂类的映射关系
          MultiTapGestureRecognizer:
              GestureRecognizerFactoryWithHandlers<MultiTapGestureRecognizer>(
            () => MultiTapGestureRecognizer(),
            (MultiTapGestureRecognizer instance) {
              instance.onTap = () => print('parent tapped');
            },
          ),
        },
        child: Container(
          color: Colors.black,
          child: Center(
            child: GestureDetector(
              onDoubleTap: () => print('double tapped'),
              onTap: () => print('child tapped'),
              child: Container(
                color: Colors.yellow,
                width: 200,
                height: 200,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//自定义手势识别器
class MultiTapGestureRecognizer extends TapGestureRecognizer {
  @override
  void rejectGesture(int pointer) {
    acceptGesture(pointer); //手动把自己复活
  }
}
