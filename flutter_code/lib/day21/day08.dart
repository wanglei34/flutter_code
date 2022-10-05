import 'package:flutter/material.dart';

class LoginPageTwo extends StatelessWidget {
  const LoginPageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 360,
              foregroundDecoration: BoxDecoration(
                color: Colors.black.withOpacity(0.15),
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(300),
                ),
              ),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(300),
                ),
                image: DecorationImage(
                  image: NetworkImage(
                      'https://images.pexels.com/photos/13639243/pexels-photo-13639243.jpeg?auto=compress&cs=tinysrgb&w=1600&lazy=load'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 70,
                    right: 50,
                    width: 100,
                    height: 150,
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://wx-login.oss-cn-shanghai.aliyuncs.com/upload/R-C%20(1).png'),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      child: Container(
                    margin: const EdgeInsets.only(top: 60, right: 120),
                    child: Center(
                      child: Text(
                        'sign in',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.pink.shade50,
                            blurRadius: 20,
                            offset: Offset(5, 10),
                          )
                        ]),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              border: Border(
                            bottom: BorderSide(color: Colors.grey.shade200),
                          )),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Email',
                              hintStyle: TextStyle(color: Colors.grey.shade400),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Password',
                              hintStyle: TextStyle(color: Colors.grey.shade400),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 50),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(colors: [
                        Colors.pink.shade100,
                        Colors.pink.shade300,
                      ]),
                    ),
                    child: const Center(
                      child: Text(
                        'SIGN IN',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  Text(
                    'Forgot Password ?',
                    style: TextStyle(color: Colors.pink.shade200),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
