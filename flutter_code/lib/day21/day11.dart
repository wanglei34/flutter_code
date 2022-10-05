import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';

const TextStyle descStyle = TextStyle(
  color: Colors.white54,
  fontSize: 16.0,
);

class OnBoardingUI extends StatelessWidget {
  const OnBoardingUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "OnBoarding UI",
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => const OnBoardScreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          "Let's go",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w900,
            letterSpacing: 1,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.network(
        "https://crq.oss-cn-beijing.aliyuncs.com/%E7%A7%8B%E5%A4%A9%E9%87%91%E9%BB%84%E8%90%BD%E5%8F%B6%E5%94%AF%E7%BE%8E%E6%B5%AA%E6%BC%AB%E9%9B%A8%E5%A4%A9%E8%83%8C%E6%99%AF%E8%A7%86%E9%A2%91%EF%BC%88%E6%9C%89%E9%9F%B3%E4%B9%90%EF%BC%89.mp4");

    _controller.addListener(() {
      setState(() {});
    });

    _controller.setLooping(true);

    _controller.initialize().then((_) => setState(() {}));

    _controller.play();
  }

  @override
  Widget build(BuildContext context) {
    SystemUiOverlayStyle systemUiOverlayStyle = const SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    );

    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);

    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            child: FittedBox(
              fit: BoxFit.cover,
              child: Container(
                foregroundDecoration: BoxDecoration(
                  color: Colors.white.withOpacity(.1),
                ),
                height: _controller.value.size.height,
                width: _controller.value.size.width,
                child: VideoPlayer(_controller),
              ),
            ),
          ),
          Positioned.fill(
              child: Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(top: 220, left: 20, right: 20),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                    Text(
                      "Beautiful App",
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: Colors.white,
                          ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      "Welcome to this awesome app. We are so happy that you are using our app.",
                      style: descStyle,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 16,
                            horizontal: 32,
                          ),
                          suffixIcon: const Icon(
                            Icons.person,
                            color: Colors.white54,
                          ),
                          hintText: "Username",
                          hintStyle: const TextStyle(color: Colors.white54),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white54),
                            borderRadius: BorderRadius.circular(40),
                          )),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 16,
                            horizontal: 32,
                          ),
                          suffixIcon: const Icon(
                            Icons.lock,
                            color: Colors.white54,
                          ),
                          hintText: "Password",
                          hintStyle: const TextStyle(color: Colors.white54),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.white54),
                              borderRadius: BorderRadius.circular(40))),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    MaterialButton(
                        textColor: Colors.white,
                        child: const Text("Create new account"),
                        onPressed: () {})
                  ],
                ),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
