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

    controller.repeat(reverse: true);

    // animation = Tween(begin: 50.0, end: 200.0).animate(controller)
    //   ..addListener(() {
    //     setState(() {});
    //   });
    // controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: animation.value,
        height: animation.value,
        child: Icon(
          Icons.park_outlined,
          color: Colors.green,
          size: animation.value,
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
