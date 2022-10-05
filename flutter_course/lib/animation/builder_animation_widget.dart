import 'package:flutter/material.dart';

class BuilderAnimationWidget extends StatefulWidget {
  const BuilderAnimationWidget({Key? key}) : super(key: key);

  @override
  State<BuilderAnimationWidget> createState() => _BuilderAnimationWidgetState();
}

class _BuilderAnimationWidgetState extends State<BuilderAnimationWidget>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    final CurvedAnimation curve = CurvedAnimation(
      parent: controller,
      curve: Curves.fastLinearToSlowEaseIn,
    );

    animation = Tween(begin: 50.0, end: 200.0).animate(curve);

    controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: animation,
        child: const FlutterLogo(),
        builder: (context, child) => SizedBox(
          width: animation.value,
          height: animation.value,
          child: child,
        ),
      ),
    );
  }
}
