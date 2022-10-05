import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

class SwiperDemo extends StatefulWidget {
  const SwiperDemo({Key? key}) : super(key: key);

  @override
  _SwiperDemoState createState() => _SwiperDemoState();
}

class _SwiperDemoState extends State<SwiperDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('12321'),
      ),
      body: Container(
        height: 200.0,
        child: Swiper(
          itemBuilder: (BuildContext context, int index) {
            return Image.network(
              "https://www.itying.com/images/flutter/1.png",
              fit: BoxFit.fill,
            );
          },
          itemCount: 3,
          pagination: const SwiperPagination(),
          control: const SwiperControl(),
        ),
      ),
    );
  }
}
