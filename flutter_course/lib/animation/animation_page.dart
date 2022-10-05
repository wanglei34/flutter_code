import 'package:flutter/material.dart';
import 'package:flutter_course/animation/builder_animation_widget.dart';
import 'package:flutter_course/animation/hero_animation_widget.dart';
import 'package:flutter_course/animation/normal_animation_widget.dart';
import 'package:flutter_course/animation/widget_animation_widget.dart';

class AnimationPage extends StatefulWidget {
  const AnimationPage({Key? key}) : super(key: key);

  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('动画学习')),
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
                icon: Icon(Icons.sentiment_satisfied_sharp),
                text: '普通动画',
              ),
              Tab(
                icon: Icon(Icons.keyboard_command_key),
                text: 'Builder动画',
              ),
              Tab(
                icon: Icon(Icons.auto_awesome),
                text: 'Widget动画',
              ),
              Tab(
                icon: Icon(Icons.bubble_chart),
                text: 'Hero动画',
              ),
            ],
            unselectedLabelColor: Colors.blueGrey,
            labelColor: Colors.orange,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Colors.orange,
          ),
        ),
      ),
    );
  }
}
