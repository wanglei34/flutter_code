import 'package:flutter/material.dart';
import 'package:flutter_code/class2/data/update_item_list.dart';
import 'package:flutter_code/class2/theme_state_model.dart';
import 'package:scoped_model/scoped_model.dart';

class AppStorePage extends StatefulWidget {
  const AppStorePage({Key? key}) : super(key: key);

  @override
  State<AppStorePage> createState() => _AppStorePageState();
}

class _AppStorePageState extends State<AppStorePage> {
  int maxLines = 1;
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.black87,
        title: const Text('Updates'),
        actions: [
          InkWell(
            child: const Icon(Icons.access_alarm_outlined),
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
          separatorBuilder: (BuildContext context, int index) {
            return const Divider(
              indent: 10,
              endIndent: 10,
            );
          },
          itemCount: itemList.length),
    );
  }

  Widget _buildItem(BuildContext context, UpdateItemList model) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: Colors.white,
          padding: const EdgeInsets.all(5),
          child: ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.asset(
                model.appIcon,
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
            title: Text(
              model.appName,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 16),
            ),
            subtitle: Text(model.appDate),
            trailing: TextButton(
              onPressed: () {},
              child: const Text('UPDATE'),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LayoutBuilder(builder: (context, size) {
                final painter = TextPainter(
                  text: TextSpan(text: model.appDescription),
                  maxLines: maxLines,
                  textDirection: TextDirection.ltr,
                );
                painter.layout(maxWidth: size.maxWidth);
                if (!painter.didExceedMaxLines) {
                  return Text(model.appDescription);
                }
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(model.appDescription,
                        maxLines: model.expand ? null : 1),
                    GestureDetector(
                      onTap: () => setState(() {
                        model.expand = !model.expand;
                      }),
                      child: Text(
                        model.expand ? '<< 收起' : '展开 >>',
                        style: const TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                );
              }),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  "Version:${model.appVersion} . ${model.appSize} MB",
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
