import 'package:flutter/material.dart';

import 'demo.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const Demo()));
    });
    return Container(
      // color: mainColor,
      decoration: const BoxDecoration(
        color: Colors.black,
        // image: DecorationImage(
        //   image: NetworkImage(
        //       'http://wangleis.oss-cn-beijing.aliyuncs.com/pic/1.jpg'),
        // ),
      ),
      // child: const Center(
      //   child: Icon(
      //     Icons.terrain,
      //     size: 80,
      //     color: Colors.white,
      //   ),
      // ),
      child: Stack(
        children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                width: 120,
                height: 120,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.network(
                  'http://wangleis.oss-cn-beijing.aliyuncs.com/pic/cat.JPG',
                  fit: BoxFit.cover,
                ),
              )),
          const Align(
            child: Padding(
                padding: EdgeInsets.only(top: 180),
                child: Text(
                  '猫的App',
                  style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      fontSize: 30),
                )),
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 60),
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
