import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout/model/ListModel.dart';
import 'package:flutter_layout/widget/theme_model.dart';
import 'package:scoped_model/scoped_model.dart';

import '../mock/list.dart';

class AppStorePage extends StatefulWidget {
  const AppStorePage({Key? key}) : super(key: key);

  @override
  State<AppStorePage> createState() => _AppStorePageState();
}

class _AppStorePageState extends State<AppStorePage> {
  int current = 0;
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   backgroundColor: Colors.white,
    //   appBar: AppBar(
    //     backgroundColor: Colors.blue.shade50,
    //     foregroundColor: Colors.black87,
    //     title: const Center(child: Text('Updates')),
    //   ),
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.black87,
        title: const Text('Updates'),
        actions: [
          InkWell(
            child: const Icon(Icons.change_circle),
            onTap: () {
              setState(() {
                current = current == 0 ? 1 : 0;
              });
              ScopedModel.of<ThemeStateModel>(context, rebuildOnChange: true)
                  .changeTheme(current);
            },
          )
        ],
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return _buildItem(context, itemList[index]);
        },
        itemCount: itemList.length,
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(
            color: Colors.grey,
            indent: 10,
            endIndent: 10,
          );
        },
      ),
    );
  }

  Widget _buildItem(BuildContext context, UpdateItemModel model) {
    return Column(
      children: [
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Image.network(model.appIcon,
                      width: 60, height: 60, fit: BoxFit.cover)),
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  model.appName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 16),
                ),
                Text(
                  model.appDate,
                  maxLines: 1,
                )
              ],
            )),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    onSurface: Colors.blue,
                    side: const BorderSide(color: Colors.blue)),
                child: const Text("UPDATE"),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ExpandableText(
                model.appDescription,
                expandText: '更多',
                collapseText: '收起',
                maxLines: 2,
                linkColor: Colors.blue,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text("Version:${model.appVersion} · ${model.appSize}MB"),
              )
            ],
          ),
        )
      ],
    );
  }
}
