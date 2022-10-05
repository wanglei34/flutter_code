import 'package:flutter/material.dart';
import 'package:flutter_code/animation/builder_animation_widget.dart';
import 'package:flutter_code/animation/widget_animation_widget.dart';

import 'hero_animation_widget.dart';
import 'normal_animation_widget.dart';

class AnimationPage extends StatefulWidget {
  const AnimationPage({Key? key}) : super(key: key);

  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('动画学习'),
      ),
      body: const TabBarView(
        children: [
          NormalAnimationWidget(),
          BuilderAnimationWidget(),
          WidgetAnimationWidget(),
          HeroAnimationWidget(),
        ],
      ),
      bottomNavigationBar: const SafeArea(
        child: TabBar(
          tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: '普通动画',
            ),
            Tab(
              icon: Icon(Icons.rss_feed),
              text: 'Builder 动画',
            ),
            Tab(
              icon: Icon(Icons.share),
              text: 'Widget 动画',
            ),
            Tab(
              icon: Icon(Icons.percent),
              text: 'Hero动画',
            )
          ],
          unselectedLabelColor: Colors.blueGrey,
          indicatorSize: TabBarIndicatorSize.label,
          labelColor: Colors.orange,
          indicatorColor: Colors.orange,
        ),
      ),
    );
  }
}
