import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:share_app/model/login_resp.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObscure = true;
  final mobileController = TextEditingController(text: '13770872966');
  final passwordController = TextEditingController(text: '123123');
  var mobile = '';
  var password = '';

  @override
  void initState() {
    super.initState();
  }

  Future _login() async {
    Dio dio = Dio();
    var apiLogin = "http://10.0.2.2:10001/api/users/login";

    var res = await dio.post(
      apiLogin,
      data: {"mobile": mobile, "password": password},
    );

    LoginResponse resp = LoginResponse.fromJson(json.decode(res.toString()));
    var code = resp.code;
    return code;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 360,
              foregroundDecoration: BoxDecoration(
                color: Colors.black.withOpacity(0.1),
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(250),
                ),
              ),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(250),
                ),
                image: DecorationImage(
                  image: NetworkImage(
                    'http://wangleis.oss-cn-beijing.aliyuncs.com/banner_h/3.JPG',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              // 使用Stack和绝对定位装饰图片和文字
              child: Stack(
                children: [
                  Positioned(
                    child: Container(
                      margin: const EdgeInsets.only(top: 60, right: 120),
                      child: const Center(
                        child: Text(
                          "SIGN IN",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(143, 148, 251, .4),
                            blurRadius: 20,
                            offset: Offset(5, 10),
                          ),
                        ]),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: Colors.grey.shade200),
                            ),
                          ),
                          child: TextField(
                            keyboardType: TextInputType.number,
                            controller: mobileController,
                            maxLength: 11,
                            decoration: InputDecoration(
                              counterText: "",
                              prefixIcon: Icon(
                                Icons.phone_android,
                                size: 23,
                                color: Colors.brown.shade400,
                              ),
                              border: InputBorder.none,
                              hintText: "Mobile",
                              hintStyle: TextStyle(color: Colors.grey.shade400),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(2.0),
                          child: TextField(
                            obscureText: _isObscure,
                            controller: passwordController,
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _isObscure
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: Colors.brown.shade400,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _isObscure = !_isObscure;
                                  });
                                },
                              ),
                              prefixIcon: Icon(
                                Icons.lock,
                                size: 23,
                                color: Colors.brown.shade400,
                              ),
                              border: InputBorder.none,
                              hintText: "Password",
                              hintStyle: TextStyle(color: Colors.grey.shade400),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 50),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        mobile = mobileController.text;
                        password = passwordController.text;
                      });

                      _login().then((value) {
                        if (value == 1) {
                          Navigator.pushNamed(context, '/home');
                        } else {
                          return const AlertDialog(
                            title: Text('密码错误'),
                            content: Text("11111"),
                          );
                        }
                      });
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          colors: [
                            Colors.brown.shade100,
                            Colors.brown.shade300,
                          ],
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          "SIGN IN",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "忘记密码?",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(height: 35),
                  const Text(
                    "—其它登录方式—",
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.weixin,
                          size: 30,
                        ),
                        color: Colors.green,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.alipay,
                          size: 30,
                        ),
                        color: Colors.blue,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.github,
                          size: 30,
                        ),
                        color: Colors.black,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
