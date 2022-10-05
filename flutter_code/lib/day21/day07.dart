import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

final Color color1 = Colors.red.shade100;
final Color color2 = Colors.red.shade200;
final Color color3 = Colors.red.shade300;
final Color color4 = Colors.red.shade400;

TextStyle titleStyle = const TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.w700,
  fontSize: 30,
);

TextStyle tipStyle = const TextStyle(
  color: Colors.red,
  fontWeight: FontWeight.w700,
  fontSize: 12,
);

class LoginSevenPage extends StatefulWidget {
  const LoginSevenPage({Key? key}) : super(key: key);

  @override
  State<LoginSevenPage> createState() => _LoginSevenPageState();
}

class _LoginSevenPageState extends State<LoginSevenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                ClipPath(
                  clipper: WaveClipperOne(),
                  child: Container(
                    width: double.infinity,
                    height: 300,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [color1, color2],
                      ),
                    ),
                    child: Column(),
                  ),
                ),
                ClipPath(
                  clipper: WaveClipperTwo(),
                  child: Container(
                    width: double.infinity,
                    height: 300,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [color3, color4],
                      ),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 50,
                        ),
                        const Icon(
                          Icons.code,
                          color: Colors.white,
                          size: 60,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Coding Life',
                          style: titleStyle,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 32,
              ),
              child: Material(
                elevation: 3,
                borderRadius: const BorderRadius.all(Radius.circular(30)),
                child: TextField(
                  onChanged: (String value) {},
                  cursorColor: color4,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    prefixIcon: Material(
                      elevation: 0,
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                      child: Icon(
                        Icons.email,
                        color: color4,
                      ),
                    ),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 22, vertical: 12),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Material(
                elevation: 3,
                borderRadius: const BorderRadius.all(Radius.circular(30)),
                child: TextField(
                  onChanged: (String value) {},
                  cursorColor: color4,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    prefixIcon: Material(
                      elevation: 0,
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                      child: Icon(
                        Icons.lock,
                        color: color4,
                      ),
                    ),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 22, vertical: 12),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(100)),
                color: color4,
              ),
              child: MaterialButton(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Text('Login', style: titleStyle.copyWith(fontSize: 18)),
                onPressed: () {},
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'FORGET PASSWORD ?',
                style: tipStyle,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don t have an Account ?',
                  style: tipStyle.copyWith(
                      color: Colors.black87, fontWeight: FontWeight.normal),
                ),
                Text(
                  'Sign up',
                  style:
                      tipStyle.copyWith(decoration: TextDecoration.underline),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
