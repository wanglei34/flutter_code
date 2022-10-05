import 'package:flutter/material.dart';

import 'login_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const LoginPage()));
    });
    return Container(
      // color: mainColor,
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
            image: NetworkImage(
              'http://wangleis.oss-cn-beijing.aliyuncs.com/banner_h/9.jpg',
            ),
            fit: BoxFit.fill),
      ),
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
                  'http://wangleis.oss-cn-beijing.aliyuncs.com/avatar/10.png',
                  fit: BoxFit.cover,
                ),
              )),
          const Align(
            child: Padding(
                padding: EdgeInsets.only(top: 180),
                child: Text(
                  'Welcome to the Share app',
                  style: TextStyle(
                      color: Colors.deepOrange,
                      decoration: TextDecoration.none,
                      fontSize: 20),
                )),
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 60),
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(Colors.brown),
              ),
            ),
          )
        ],
      ),
    );
  }
}
