import 'package:flutter/material.dart';
import 'package:flutter_study/global/profile_six_style.dart';
import 'package:flutter_study/mock/profile_six_mock.dart';
import 'package:flutter_study/widget/Profile_six_widget.dart';

class ProfileSixPage extends StatefulWidget {
  const ProfileSixPage({Key? key}) : super(key: key);

  @override
  State<ProfileSixPage> createState() => _ProfileSixPageState();
}

class _ProfileSixPageState extends State<ProfileSixPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Positioned(
              child: Container(
                width: size.width,
                height: size.height / 3,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(10),
                    right: Radius.circular(10),
                  ),
                  gradient: LinearGradient(
                    colors: [color1, color2],
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft,
                  ),
                ),
                child: Column(
                  children: const [
                    SizedBox(
                      height: 60,
                    ),
                    Text(
                      'Todo App',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    ListTile(
                      leading: Text(
                        '18',
                        style: TextStyle(
                          fontSize: 56,
                          color: Colors.amber,
                        ),
                      ),
                      // leading: Icon(
                      //   Icons.calendar_month,
                      //   size: 50,
                      // ),
                      title: Padding(
                        padding: EdgeInsets.symmetric(vertical: 4),
                        child: Text(
                          'September',
                          style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      subtitle: Text(
                        '2022',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: size.height / 4.5,
              left: 16,
              child: Container(
                width: size.width - 32,
                height: size.height / 1.4,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(10),
                    right: Radius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: ListView.separated(
                    padding: const EdgeInsets.only(top: 8),
                    itemBuilder: (context, index) {
                      return ProfileSixWidget(task: listTask[index]);
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: 4,
                      );
                    },
                    itemCount: listTask.length,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color(0xff4696ec),
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.list_alt_rounded,
                color: Colors.white,
                size: 28,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.archive_outlined,
                color: Colors.white,
                size: 28,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
          size: 36,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
