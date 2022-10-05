import 'package:flutter/material.dart';

class WidgetAnimationWidget extends StatefulWidget {
  const WidgetAnimationWidget({Key? key}) : super(key: key);

  @override
  State<WidgetAnimationWidget> createState() => _WidgetAnimationWidgetState();
}

class _WidgetAnimationWidgetState extends State<WidgetAnimationWidget>
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

    animation = Tween(begin: 50.0, end: 200.0).animate(curve);
    // 启动动画
    controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedLogo(
      animation: animation,
    );
  }
}

class AnimatedLogo extends AnimatedWidget {
  const AnimatedLogo({
    Key? key,
    required Animation<double> animation,
  }) : super(key: key, listenable: animation);

  @override
  Widget build(BuildContext context) {
    final Animation<double> animation = listenable as Animation<double>;
    return Center(
      child: SizedBox(
        width: animation.value,
        height: animation.value,
        child: const FlutterLogo(),
      ),
    );
  }
}
