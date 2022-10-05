import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_code/class1/button_widget.dart';

class BasicWidget extends StatefulWidget {
  const BasicWidget({Key? key}) : super(key: key);

  @override
  State<BasicWidget> createState() => _BasicWidgetState();
}

class _BasicWidgetState extends State<BasicWidget> {
  TextStyle blackStyle = const TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 20,
    color: Colors.black,
  ); //黑色样式

  TextStyle redStyle = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20,
    color: Colors.red,
  ); //红色样式

  ButtonStyle buttonStyle = TextButton.styleFrom(
    backgroundColor: Colors.orange,
    primary: Colors.black87,
    shape: BeveledRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
    ),
  );

  void _test() {
    print('触发自定义按钮事件');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('basic'),
      ),
      body: Column(
        children: <Widget>[
          Text(
            '单一文本样式单一文本样式单一文本样式单一文本样式单一文本样式',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.red.shade100,
            ),
          ),
          Text.rich(
            TextSpan(children: <TextSpan>[
              TextSpan(
                  text: '文本是视图系统中常见的控件，它用来显示一段特定样式的字符串，类似',
                  style: redStyle), //第1个片段，红色样式
              TextSpan(text: 'Android', style: blackStyle), //第1个片段，黑色样式
              TextSpan(text: '中的', style: redStyle), //第1个片段，红色样式
              TextSpan(text: 'TextView', style: blackStyle) //第1个片段，黑色样式
            ]),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            width: double.infinity,
            height: 220,
            child: FadeInImage.assetNetwork(
              //gif占位
              placeholder: 'images/loading.gif',
              image: 'https://avatars.githubusercontent.com/u/59445871?v=4',
              fit: BoxFit.cover,
              //图片拉伸模式
              width: 200,
              height: 200,
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 220,
            child: CachedNetworkImage(
              imageUrl: "https://avatars.githubusercontent.com/u/59445871?v=",
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
          Wrap(
            spacing: 20,
            children: [
              FloatingActionButton(
                backgroundColor: Colors.lightBlue,
                foregroundColor: Colors.black87,
                onPressed: () => print('FloatingActionButton pressed'),
                child: const Text('FAB'),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.orange, //按钮背景色
                  primary: Colors.white, //文字颜色
                ),
                onPressed: () => print('TextButton pressed'),
                child: const Text('TextButton'),
              ),
              ElevatedButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.indigo, //按钮背景色
                  primary: Colors.yellow, //文字颜色
                ),
                onPressed: () => print('ElevatedButton pressed'),
                child: const Text('ElevatedButton'),
              ),
            ],
          ),
          SizedBox(
              width: 120,
              height: 40,
              child: Wrap(
                spacing: 20,
                children: <Widget>[
                  // ElevatedButton(
                  //   style: TextButton.styleFrom(
                  //     backgroundColor: Colors.orange,
                  //     primary: Colors.black87,
                  //     shape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(20.0),
                  //     ),
                  //     // const StadiumBorder(),
                  //     // const  CircleBorder(),
                  //     // BeveledRectangleBorder(
                  //     //   borderRadius: BorderRadius.circular(20.0),
                  //     // ), //
                  //   ),
                  //   onPressed: () => print('FlatButton pressed'),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     children: const <Widget>[
                  //       Icon(Icons.add),
                  //       Text("Add"),
                  //     ],
                  //   ),
                  // ),
                  ButtonWidget(fun: _test, style: buttonStyle, content: '自定义按钮')
                ],
              )),
        ],
      ),
    );
  }
}
