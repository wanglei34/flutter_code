import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileThreePage extends StatelessWidget {
  const ProfileThreePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Color color1 = Color(0xff654ea3);
    const Color color2 = Color(0xffeaafc8);

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 360,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
              gradient: LinearGradient(
                  colors: [color1, color2],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 80),
            child: Column(
              children: [
                const Text(
                  'About Me',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontStyle: FontStyle.italic),
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        height: double.infinity,
                        margin: const EdgeInsets.only(
                          left: 30,
                          right: 30,
                          top: 10,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.network(
                            'https://avatars.githubusercontent.com/u/59445871?v=4',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topCenter,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 5),
                          decoration: BoxDecoration(
                            color: Colors.orange.shade200,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text("Flutter Developer"),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'SCS - 212',
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        fontSize: 18,
                        color: Colors.red,
                      ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.location_on,
                      size: 16.0,
                      color: Colors.grey,
                    ),
                    Text(
                      'Yangshan North Street 1,NANJING',
                      style: TextStyle(color: Colors.grey.shade600),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      color: Colors.blue,
                      icon: const Icon(FontAwesomeIcons.qq),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: const Icon(FontAwesomeIcons.weixin),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.red.shade600,
                      icon: const Icon(FontAwesomeIcons.weibo),
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 16,
                      ),
                      margin: const EdgeInsets.fromLTRB(20, 30, 20, 30),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [color1, color2],
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        children: [
                          IconButton(
                            color: Colors.white,
                            icon: const Icon(FontAwesomeIcons.user),
                            onPressed: () {},
                          ),
                          IconButton(
                            color: Colors.white,
                            icon: const Icon(Icons.location_on),
                            onPressed: () {},
                          ),
                          const Spacer(),
                          IconButton(
                            color: Colors.white,
                            icon: const Icon(Icons.add),
                            onPressed: () {},
                          ),
                          IconButton(
                            color: Colors.white,
                            icon: const Icon(Icons.message),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: FloatingActionButton(
                        backgroundColor: Colors.white,
                        onPressed: () {},
                        child: const Icon(
                          Icons.favorite,
                          color: Colors.pink,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.menu),
              )
            ],
          ),
        ],
      ),
    );
  }
}
