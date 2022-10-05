import 'package:flutter/material.dart';

class NormalAnimationWidget extends StatefulWidget {
  const NormalAnimationWidget({Key? key}) : super(key: key);

  @override
  State<NormalAnimationWidget> createState() => _NormalAnimationWidgetState();
}

class _NormalAnimationWidgetState extends State<NormalAnimationWidget>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    // 创建动画周期为1秒的AnimationController对象
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    final CurvedAnimation curve = CurvedAnimation(
      parent: controller,
      curve: Curves.easeInOut,
    );

    animation = Tween(begin: 50.0, end: 200.0).animate(curve)
      ..addListener(() {
        setState(() {});
      });
    // 启动动画
    controller.repeat(reverse: true);

    // 创建从50到200线性变化到Animation对象
    // animation = Tween(begin: 50.0, end: 200.0).animate(controller)
    //   ..addListener(() {
    //     setState(() {});
    //   });
    // // 启动动画
    // controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: animation.value,
        height: animation.value,
        child: Icon(
          Icons.favorite,
          color: Colors.red,
          size: animation.value,
        ),
      ),
    );
  }
}
