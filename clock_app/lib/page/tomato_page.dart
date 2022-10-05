import 'dart:async';

import 'package:clock_app/widget/button.dart';
import 'package:flutter/material.dart';

class TomatoPage extends StatefulWidget {
  const TomatoPage({Key? key}) : super(key: key);

  @override
  State<TomatoPage> createState() => _TomatoPageState();
}

class _TomatoPageState extends State<TomatoPage> {
  static const DEFAULT_COUNT_DOWN = Duration.secondsPerMinute * 1;
  int countDown = 0;
  late Timer timer = Timer(const Duration(seconds: 1), () {});

  bool isPlaying = false;

  void startCountDown() {
    timer.cancel();
    countDown = DEFAULT_COUNT_DOWN - (DEFAULT_COUNT_DOWN - countDown);
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        --countDown;
      });
      if (countDown == 0) {
        countDown = DEFAULT_COUNT_DOWN;
        timer.cancel();
        showDialog(
            context: context,
            builder: (context) {
              return const AlertDialog(
                content: Text(
                  '获得一个番茄钟，注意休息....',
                  style: TextStyle(
                      fontFamily: '平方星辰体',
                      fontSize: 18,
                      color: Colors.indigoAccent),
                ),
              );
            });
      }
      print(countDown);
    });
  }

  void stopCountDown() {
    timer.cancel();
  }

  String padDigits(int value) {
    return value.toString().padLeft(2, '0');
  }

  String parseText() {
    return '${padDigits(countDown ~/ 60)}:${padDigits(countDown % 60)}';
  }

  @override
  Widget build(BuildContext context) {
    if (countDown < 10) {
      return Scaffold(
        body: Center(
          child: Text(
            parseText(),
            style: const TextStyle(
                fontFamily: '孤独的流浪诗', fontSize: 60, color: Colors.red),
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: FloatingActionButton(
                onPressed: () {
                  if (isPlaying == false) {
                    startCountDown();
                    isPlaying = true;
                  } else {
                    stopCountDown();
                    isPlaying = true;
                  }
                  //stopCountDown();
                },
                child: RoundButton(
                  icon: isPlaying == false ? Icons.pause : Icons.play_arrow,
                ),
              ),
            ),
          ],
        ),
      );
    }
    ;
    return Scaffold(
      body: Center(
        child: Text(
          parseText(),
          style: const TextStyle(
              fontFamily: '孤独的流浪诗', fontSize: 45, color: Colors.green),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: FloatingActionButton(
              onPressed: () {
                if (isPlaying == false) {
                  startCountDown();
                  isPlaying = true;
                } else {
                  stopCountDown();
                  isPlaying = false;
                }
                //stopCountDown();
              },
              child: RoundButton(
                icon: isPlaying == true ? Icons.pause : Icons.play_arrow,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
