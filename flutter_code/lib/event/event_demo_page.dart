import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class EventDemoPage extends StatefulWidget {
  const EventDemoPage({Key? key}) : super(key: key);

  @override
  State<EventDemoPage> createState() => _EventDemoPageState();
}

class _EventDemoPageState extends State<EventDemoPage> {
  final double _top = 0.0;
  final double _left = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('用户事件交互'),
      ),
      // body: Listener(
      //   child: Container(
      //     color: Colors.red,
      //     width: 300,
      //     height: 300,
      //   ),
      //   onPointerHover: (event) => print('event$event'),
      //   onPointerDown: (event) => print('event$event'),
      //   onPointerUp: (event) => print('event$event'),
      // ),
      // body: Stack(
      //   children: [
      // Positioned(
      //   top: _top,
      //   left: _left,
      //   child: GestureDetector(
      //     onTap: () => print('Tap'),
      //     onPanUpdate: (e) {
      //       print(e.delta.dx);
      //       // 拖动回调 更新组件位置
      //       setState(() {
      //         _left += e.delta.dx;
      //         _top += e.delta.dy;
      //       });
      //     },
      //     child: Container(
      //       color: Colors.red,
      //       width: 100,
      //       height: 100,
      //     ),
      //   ),
      // ),
      //   ],
      // ),
      // body: GestureDetector(
      //   onTap: () => print('Parent Tapped'),
      //   child: Center(
      //     child: Container(
      //       color: Colors.black,
      //       child: Center(
      //         child: GestureDetector(
      //           onTap: () => print('Child Tapped'),
      //           child: Container(
      //             color: Colors.yellow,
      //             width: 100,
      //             height: 100,
      //           ),
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
      // body: GestureDetector(
      //   onDoubleTap: () => print('Parent Tapped'),
      //   child: Center(
      //     child: Container(
      //       color: Colors.black,
      //       child: Center(
      //           child: ElevatedButton(
      //         onPressed: () {
      //           print('Child Tapped');
      //         },
      //         child: const Text('按钮'),
      //       )),
      //     ),
      //   ),
      // ),
      body: RawGestureDetector(
        gestures: {
          // 建立自定义的手势识别器和手势识别工厂的映射关系
          MultiTapGestureRecognizer:
              GestureRecognizerFactoryWithHandlers<MultiTapGestureRecognizer>(
                  () => MultiTapGestureRecognizer(),
                  (MultiTapGestureRecognizer instance) {
            instance.onTap = () => print('Parent Tapped');
          }),
        },
        child: Container(
          color: Colors.pink,
          child: Center(
            child: GestureDetector(
              onTap: () => print('Child Tapped'),
              child: Container(
                color: Colors.blue,
                width: 100,
                height: 100,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// 自定义手势识别器
class MultiTapGestureRecognizer extends TapGestureRecognizer {
  @override
  void rejectGesture(int pointer) {
    acceptGesture(pointer); //手动把自己复活
  }
}
