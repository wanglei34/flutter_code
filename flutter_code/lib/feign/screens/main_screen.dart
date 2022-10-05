import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_code/feign/json.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../constant.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Share? share;
  String? nickName;
  String? avatar;

  @override
  void initState() {
    super.initState();
    _getData();
  }

  _getData() async {
    var response = await Dio().get('http://10.62.61.43:8082/share/1');
    print(response.data);
    print(response.statusCode);

    Map<String, dynamic> map = Map<String, dynamic>.from(response.data);
    print(map['data']);
    // Map<String, dynamic> data = map['data'];

    Json1 j1 = Json1.fromJson(map['data']);
    setState(() {
      share = j1.share;
      nickName = j1.nickName;
      avatar = j1.avatar;
      print(share?.title);
      print(nickName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.grey, size: 28),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              color: Colors.grey,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5, right: 16, bottom: 5),
            child: CircleAvatar(
              backgroundImage: NetworkImage('$avatar'),
            ),
          )
        ],
      ),
      drawer: const Icon(Icons.add),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              RichText(
                text: TextSpan(
                  text: "Hello ",
                  style: const TextStyle(color: kDarkBlue, fontSize: 20),
                  children: [
                    TextSpan(
                      text: "$nickName",
                      style: TextStyle(
                          color: kDarkBlue, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: ", welcome back!",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "My Courses",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(color: kDarkBlue),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              GridView.builder(
                  itemCount: 1,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 16 / 7,
                      crossAxisCount: 1,
                      mainAxisSpacing: 20),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage('${share?.cover}'),
                            fit: BoxFit.fill),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  '${share?.title}',
                                  style: const TextStyle(color: Colors.white),
                                ),
                                Text(
                                  '${share?.author}',
                                  style: const TextStyle(color: Colors.white),
                                ),
                                CircularPercentIndicator(
                                  radius: 30,
                                  lineWidth: 8,
                                  animation: true,
                                  animationDuration: 1500,
                                  circularStrokeCap: CircularStrokeCap.round,
                                  percent: 30 / 100,
                                  progressColor: Colors.white,
                                  center: Text(
                                    "¥${share?.price}",
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  width: 120,
                                  height: 120,
                                  image: NetworkImage('${share?.cover}'),
                                  fit: BoxFit.fill,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
