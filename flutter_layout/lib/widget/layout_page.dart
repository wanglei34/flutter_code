import 'package:flutter/material.dart';
import 'package:flutter_layout/global/style.dart';

import '../mock/list.dart';
import '../model/ListModel.dart';
import 'Collection.dart';

class LayoutPage extends StatelessWidget {
  const LayoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.indigo.shade300,
              Colors.indigo.shade500,
            ])),
          ),
          ListView.builder(
            itemCount: 7,
            itemBuilder: _buildBody,
          )
        ],
      ),
    );
  }

  Widget _buildBody(BuildContext context, int index) {
    if (index == 0) return _buildHeader(context);
    if (index == 1) return _buildSectionHeader(context);
    if (index == 2) return _buildCollectionHeader(context);
    if (index == 3) {
      return Container(
          color: Colors.white,
          padding: const EdgeInsets.all(20),
          child: const Text(
            'Most Liked Posts',
            // style: Theme.of(context).textTheme.headline5),
            style: titleStyle,
          ));
    }
    return _buildListItem();
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      height: 280,
      child: Stack(
        children: [
          Container(
              padding: const EdgeInsets.all(40),
              child: Material(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 8.0,
                color: Colors.white,
                child: Column(
                  children: [
                    const SizedBox(height: 50),
                    Text(
                      'Flutter 布局',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'UI Designer | Flutter Developer',
                    ),
                    const SizedBox(height: 5),
                    SizedBox(
                      height: 40,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: ListTile(
                              title: const Text(
                                '302',
                                textAlign: TextAlign.center,
                              ),
                              subtitle: Text(
                                'Post'.toUpperCase(),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListTile(
                              title: const Text(
                                '10.3k',
                                textAlign: TextAlign.center,
                              ),
                              subtitle: Text(
                                'follower'.toUpperCase(),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListTile(
                              title: const Text(
                                '999',
                                textAlign: TextAlign.center,
                              ),
                              subtitle: Text(
                                'following'.toUpperCase(),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Material(
                  elevation: 12,
                  shape: CircleBorder(),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        'http://wangleis.oss-cn-beijing.aliyuncs.com/avatar/1.JPG'),
                  )),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildSectionHeader(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Collection',
                style: titleStyle,
              ),
              Text(
                'Create new',
                style: itemStyle,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCollectionHeader(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: 190,
      child: ListView.builder(
        itemCount: data.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          ListModel model = data[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Collection(
              title: model.title,
              imageUrl: model.url,
            ),
          );
        },
      ),
    );
  }

  Widget _buildListItem() {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
      height: 200,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: data.length,
          itemBuilder: (context, index) {
            ListModel model = data[index];
            return Container(
                height: 184,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(model.url), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10),
                ));
          }),
    );
  }
}
