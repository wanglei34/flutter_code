import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button组件'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red.shade100,
        child: const Icon(
          Icons.favorite,
          color: Colors.red,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // 已过时
              // RaisedButton(
              //   onPressed: () {
              //     print('点击了');
              //   },
              //   child: const Text('普通按钮'),
              // ),
              const SizedBox(
                width: 20,
              ),
              // RaisedButton(
              //   textColor: Colors.white,
              //   color: Colors.green,
              //   elevation: 10,
              //   onPressed: () {
              //     print('点击了');
              //   },
              //   child: const Text('阴影按钮'),
              // ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 60,
                width: 200,
                // child: RaisedButton(
                //   textColor: Colors.white,
                //   color: Colors.pink.shade200,
                //   elevation: 10,
                //   onPressed: () {
                //     print('点击了');
                //   },
                //   child: const Text('有宽高的按钮'),
                // ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Container(
                    // height: 60,
                    // margin: const EdgeInsets.all(20),
                    // child: RaisedButton(
                    //   textColor: Colors.white,
                    //   color: Colors.blue,
                    //   elevation: 10,
                    //   onPressed: () {
                    //     print('点击了');
                    //   },
                    //   child: const Text('整宽按钮'),
                    // ),
                    ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 60,
                  margin: const EdgeInsets.all(20),
                  // child: RaisedButton(
                  //   textColor: Colors.white,
                  //   color: Colors.orange,
                  //   elevation: 10,
                  //   onPressed: () {
                  //     print('点击了');
                  //   },
                  //   shape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(10)),
                  //   child: const Text('带圆角带按钮'),
                  // ),
                ),
              ),
            ],
          ),
          Wrap(
            spacing: 10,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: Colors.indigo.shade200,
                    textStyle: const TextStyle(color: Colors.white),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10)),
                child: const Text('ElevatedButton'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('TextButton'),
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text('OutlinedButton'),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add),
                iconSize: 50,
                color: Colors.red,
              ),
            ],
          )
        ],
      ),
    );
  }
}
