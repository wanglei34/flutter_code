import 'package:flutter/material.dart';

class LayoutWidget extends StatelessWidget {
  const LayoutWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.indigo.shade300,
                  Colors.indigo.shade500,
                ],
              ),
            ),
          ),
          ListView.builder(
            itemCount: 7,
            itemBuilder: _buildBody,
          )
        ],
      ),
      // appBar: AppBar(
      //   title: const Text('布局'),
      // ),
      // body: Column(
      //   children: [
      //     Row(
      //       children: [
      //         Container(
      //           color: Colors.yellow,
      //           width: 60,
      //           height: 80,
      //         ),
      //         Container(
      //           color: Colors.red,
      //           width: 100,
      //           height: 180,
      //         ),
      //         Container(
      //           color: Colors.black,
      //           width: 60,
      //           height: 80,
      //         ),
      //         Container(
      //           color: Colors.green,
      //           width: 60,
      //           height: 80,
      //         )
      //       ],
      //     ),
      //     // Column(
      //     //   children: [
      //     //     Container(
      //     //       color: Colors.yellow,
      //     //       width: 60,
      //     //       height: 80,
      //     //     ),
      //     //     Container(
      //     //       color: Colors.red,
      //     //       width: 100,
      //     //       height: 180,
      //     //     ),
      //     //     Container(
      //     //       color: Colors.black,
      //     //       width: 60,
      //     //       height: 80,
      //     //     ),
      //     //     Container(
      //     //       color: Colors.green,
      //     //       width: 60,
      //     //       height: 80,
      //     //     )
      //     //   ],
      //     // )
      //     Stack(
      //       children: [
      //         Container(
      //           color: Colors.yellow,
      //           width: 300,
      //           height: 300,
      //         ),
      //         Positioned(
      //           left: 18.0,
      //           top: 18.0,
      //           child: Container(
      //             color: Colors.green,
      //             width: 50,
      //             height: 50,
      //           ),
      //         ),
      //         const Positioned(
      //             left: 18.0, top: 70.0, child: Text('Stack提供了层叠布局的容器'))
      //       ],
      //     ),
      //   ],
      // ),
    );
  }

  Widget _buildBody(BuildContext context, int index) {
    if (index == 0) return _buildHeader(context);
    // if (index == 1) return _buildSectionHeader(context);
    if (index == 1) return _buildCollectionRow(context);
    if (index == 2) {
      return Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Text(
          'Most Liked Posts',
          style: Theme.of(context).textTheme.headline4,
        ),
      );
    }
    return _buildListItem();
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 60),
      height: 230,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(40, 40, 40, 10),
            child: Material(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 8.0,
              color: Colors.white,
              child: Column(
                children: [
                  const SizedBox(
                    height: 45,
                  ),
                  Text(
                    'Flutter 布局',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  const Text('UI Designer | Flutter Developer'),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    height: 40,
                    child: Row(
                      children: const [
                        Expanded(
                          child: ListTile(
                            title: Text(
                              '302',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            subtitle: Text(
                              'POST',
                              style: TextStyle(
                                fontSize: 11.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Expanded(
                          child: ListTile(
                            title: Text(
                              '10.3K',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            subtitle: Text(
                              'FOLLOWER',
                              style: TextStyle(
                                fontSize: 11.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Expanded(
                          child: ListTile(
                            title: Text(
                              '120',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            subtitle: Text(
                              'FOLLOWING',
                              style: TextStyle(
                                fontSize: 11.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SizedBox(
                width: 80,
                height: 80,
                child: Material(
                  elevation: 8.0,
                  shape: CircleBorder(),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                      'https://avatars.githubusercontent.com/u/59445871?v=4',
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildCollectionRow(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Collection',
                style: Theme.of(context).textTheme.headline4,
              ),
              Text(
                'Create new',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.blue.shade500,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 175,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 120,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Image(
                            width: 120,
                            height: 120,
                            image: NetworkImage(
                              'https://images.pexels.com/photos/13350109/pexels-photo-13350109.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load',
                            ),
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Food',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.grey.shade700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }

  Widget _buildListItem() {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            height: 180,
            margin: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                  image: NetworkImage(
                    'https://images.pexels.com/photos/12095219/pexels-photo-12095219.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load',
                  ),
                  fit: BoxFit.cover),
            ),
          ),
        ],
      ),
    );
  }
}
