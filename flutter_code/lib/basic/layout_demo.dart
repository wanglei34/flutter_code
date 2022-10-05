import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List listData = [
      {
        "title": 'Candy Shop',
        "author": 'Mohamed Chahin',
        "imageUrl": 'https://www.itying.com/images/flutter/1.png',
        "description":
            'Flutter is Google’s mobile UI framework for crafting high-quality native experiences on iOS and Android in record time. Flutter works with existing',
      },
      {
        "title": 'Childhood in a picture',
        "author": 'Google',
        "imageUrl": 'https://www.itying.com/images/flutter/2.png',
        "description":
            'Flutter is Google’s mobile UI framework for crafting high-quality native experiences on iOS and Android in record time. Flutter works with existing',
      },
      {
        "title": 'Alibaba Shop',
        "author": 'Alibaba',
        "imageUrl": 'https://www.itying.com/images/flutter/3.png',
        "description":
            'Dart is a client-optimized language for fast apps on any platform... Dart is a client-optimized language for fast apps on any platform Optimizedfor',
      },
      {
        "title": 'Candy Shop',
        "author": 'Mohamed Chahin',
        "imageUrl": 'https://www.itying.com/images/flutter/4.png',
        "description":
            'Dart is a client-optimized language for fast apps on any platform... Dart is a client-optimized language for fast apps on any platform Optimizedfor',
      },
      {
        "title": 'Tornado',
        "author": 'Mohamed Chahin',
        "imageUrl": 'https://www.itying.com/images/flutter/5.png',
        "description":
            'Flutter is Google’s mobile UI framework for crafting high-quality native experiences on iOS and Android in record time. Flutter works with existing',
      },
      {
        "title": 'Undo',
        "author": 'Mohamed Chahin',
        "imageUrl": 'https://www.itying.com/images/flutter/6.png',
        "description":
            'Flutter is Google’s mobile UI framework for crafting high-quality native experiences on iOS and Android in record time. Flutter works with existing',
      },
      {
        "title": 'white-dragon',
        "author": 'Mohamed Chahin',
        "imageUrl": 'https://www.itying.com/images/flutter/7.png',
        "description":
            'Dart is a client-optimized language for fast apps on any platform... Dart is a client-optimized language for fast apps on any platform Optimizedfor',
      }
    ];
    return ListView(
      children: listData.map((value) {
        return Card(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(value["imageUrl"], fit: BoxFit.cover),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(value["imageUrl"]),
                ),
                title: Text(value["title"]),
                subtitle: Text(
                  value["description"],
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}
