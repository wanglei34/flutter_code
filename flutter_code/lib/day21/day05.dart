import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const Color color1 = Color(0xffFA696C);
const Color color2 = Color(0xffFA8165);
const Color color3 = Color(0xffFB8964);

TextStyle lightText = const TextStyle(color: Colors.white, fontSize: 18);

TextStyle darkText = const TextStyle(color: Colors.black54, fontSize: 18);

TextStyle titleText = TextStyle(
  color: Colors.grey.shade700,
  fontSize: 36,
  fontWeight: FontWeight.bold,
);

class TodoHomePage extends StatefulWidget {
  const TodoHomePage({Key? key}) : super(key: key);

  @override
  State<TodoHomePage> createState() => _TodoHomePageState();
}

class _TodoHomePageState extends State<TodoHomePage> {
  final List tasks = [
    {'title': '购买跨平台开发相关书籍', 'completed': true},
    {'title': '编写代码，修改bug', 'completed': false},
    {'title': '还支付宝账单', 'completed': false},
    {'title': '准备项目申报书', 'completed': false},
  ];

  int num = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                '今日任务',
                style: titleText,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ...tasks.map(
              (task) => Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                ),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      task['completed'] = !task['completed'];
                    });
                  },
                  child: CheckboxListTile(
                    activeColor: color1,
                    secondary: const Icon(Icons.alarm_on),
                    title: Text(
                      task['title'],
                      style: TextStyle(
                        decoration: task['completed']
                            ? TextDecoration.lineThrough
                            : TextDecoration.none,
                        decorationColor: Colors.red,
                        fontSize: 20,
                      ),
                    ),
                    subtitle: task['completed']
                        ? const Text('')
                        : const Text('58分钟后响铃'),
                    value: task['completed'],
                    onChanged: (value) {
                      setState(() {
                        task['completed'] = value;
                      });
                      if (task['completed']) {
                        setState(() {
                          num--;
                        });
                        print(num);
                      } else {
                        setState(() {
                          num++;
                        });
                        print(num);
                      }
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: SizedBox(
          height: 50,
          child: Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  size: 30,
                ),
                color: Colors.grey.shade700,
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.calendarMinus,
                  size: 30,
                ),
                color: Colors.grey.shade700,
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: color2,
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }

  SizedBox _buildHeader() {
    return SizedBox(
      height: 260,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: -100,
            top: -150,
            child: Container(
              width: 360,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(colors: [color1, color2]),
                boxShadow: [
                  BoxShadow(
                    color: color3,
                    offset: Offset(4, 4),
                    blurRadius: 10,
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 60, left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'poicc',
                  style: lightText.copyWith(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  '今天你还有 $num 项\n任务未完成 !',
                  style: lightText,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
