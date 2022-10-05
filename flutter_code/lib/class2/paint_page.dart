import 'dart:math';

import 'package:flutter/material.dart';

class PaintPage extends StatelessWidget {
  final List<double> doubleList;

  const PaintPage({Key? key, required this.doubleList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('自绘组件'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Cake(doubleList: doubleList),
      ),
    );
  }
}

class WheelPainter extends CustomPainter {
  final List<double> doubleList;

  WheelPainter(this.doubleList); //设置画笔颜色

  Paint getColoredPaint(Color color) {
    //根据颜色返回不同的画笔
    Paint paint = Paint(); //生成画笔
    paint.color = color; //设置画笔颜色
    return paint;
  }

  @override
  void paint(Canvas canvas, Size size) {
    //绘制逻辑
    double wheelSize = min(size.width, size.height) / 2; //饼图尺寸
    // double nbElem = 8; //分成六份
    // double radius = (2 * pi) / nbElem; //1/6圆
    Rect boundingRect = Rect.fromCircle(
        center: Offset(wheelSize, wheelSize), radius: wheelSize);
    double sum = 0;
    for (var dou in doubleList) {
      sum += dou;
    }
    double radius = 0;
    for (var index = 0; index <= doubleList.length; index++) {
      canvas.drawArc(
          boundingRect,
          radius,
          (doubleList[index] / sum) * 2 * pi,
          true,
          getColoredPaint(
            Color.fromARGB(255, Random().nextInt(256) + 0,
                Random().nextInt(256) + 0, Random().nextInt(256) + 0),
          ));
      radius += (doubleList[index] / sum) * 2 * pi;
    }
    // canvas.drawArc(
    //     boundingRect, 0, radius, true, getColoredPaint(Colors.orange));
    // canvas.drawArc(
    //     boundingRect, radius, radius, true, getColoredPaint(Colors.lightGreen));
    // canvas.drawArc(
    //     boundingRect, radius * 2, radius, true, getColoredPaint(Colors.green));
    // canvas.drawArc(
    //     boundingRect, radius * 3, radius, true, getColoredPaint(Colors.cyan));
    // canvas.drawArc(
    //     boundingRect, radius * 4, radius, true, getColoredPaint(Colors.blue));
    // canvas.drawArc(boundingRect, radius * 5, radius, true,
    //     getColoredPaint(Colors.pink.shade300));
    // canvas.drawArc(boundingRect, radius * 6, radius, true,
    //     getColoredPaint(Colors.indigo.shade200));
    // canvas.drawArc(boundingRect, radius * 7, radius, true,
    //     getColoredPaint(Colors.deepPurpleAccent.shade100));
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => oldDelegate != this;
}

class Cake extends StatelessWidget {
  final List<double> doubleList;

  const Cake({super.key, required this.doubleList});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(200, 200),
      painter: WheelPainter(doubleList),
    );
  }
}
