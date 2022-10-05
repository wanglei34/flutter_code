import 'package:flutter/material.dart';

class HeroAnimationWidget extends StatelessWidget {
  const HeroAnimationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => const PageTwo()));
        },
        child: Row(
          children: const [
            Hero(
              tag: 'hero',
              child: SizedBox(
                width: 100,
                height: 100,
                child: FlutterLogo(),
              ),
            ),
            Text('点击logo查看Hero动画效果'),
          ],
        ),
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Two'),
      ),
      body: const Center(
        child: Hero(
          tag: 'hero',
          child: SizedBox(
            width: 300,
            height: 300,
            child: FlutterLogo(),
          ),
        ),
      ),
    );
  }
}
