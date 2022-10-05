import 'package:flutter/material.dart';
import 'package:flutter_code/day21/widget/primary_button.dart';

import 'day21/ui_page.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              _buildHeader(context),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            'http://wangleis.oss-cn-beijing.aliyuncs.com/banner_h/9.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Flutter课程代码',
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(color: Colors.cyan),
              ),
              const SizedBox(
                height: 20,
              ),
              PrimaryButton(
                title: '21天UI打卡',
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const UiPage()));
                },
              ),
              PrimaryButton(
                title: 'Flutter数据共享',
                onPressed: () {},
              ),
              PrimaryButton(
                title: 'Flutter事件',
                onPressed: () {},
              ),
              PrimaryButton(
                title: 'Flutter路由',
                onPressed: () {},
              ),
              PrimaryButton(
                title: 'Flutter绘制',
                onPressed: () {},
              ),
              PrimaryButton(
                title: 'Flutter动画',
                onPressed: () {},
              ),
              PrimaryButton(
                title: 'Flutter网络请求',
                onPressed: () {},
              ),
              PrimaryButton(
                title: 'Flutter本地存储和数据库',
                onPressed: () {},
              ),
              PrimaryButton(
                title: 'Flutter状态管理',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
