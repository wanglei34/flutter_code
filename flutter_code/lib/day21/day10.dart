import 'package:flutter/material.dart';

const TextStyle whiteText = TextStyle(color: Colors.white);

class DashboardOnePage extends StatelessWidget {
  const DashboardOnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Dashboard'),
        centerTitle: true,
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Stack(
      children: [
        Container(
          foregroundDecoration: BoxDecoration(
            color: Colors.indigo.withOpacity(0.3),
          ),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                'https://images.pexels.com/photos/13639243/pexels-photo-13639243.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load',
              ),
              fit: BoxFit.fill,
            ),
          ),
        ),
        SafeArea(
          top: false,
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(top: 130, left: 16, right: 16),
            child: Column(
              children: [
                _buildHeader(),
                const SizedBox(
                  height: 50,
                ),
                Opacity(
                  opacity: 0.6,
                  child: _buildRow(context),
                ),
                const SizedBox(
                  height: 10,
                ),
                Opacity(
                  opacity: 0.6,
                  child: _buildRow(context),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildHeader() {
    return Row(
      children: [
        Container(
          height: 100,
          width: 100,
          padding: const EdgeInsets.all(8),
          child: CircularProgressIndicator(
            value: 0.55,
            valueColor: AlwaysStoppedAnimation(
              Colors.deepPurple.withOpacity(0.8),
            ),
            backgroundColor: Colors.white54,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Task\nDaliy Progress',
                style: whiteText.copyWith(fontSize: 22),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                '45% to go',
                style: whiteText.copyWith(fontSize: 16),
              )
            ],
          ),
        ),
      ],
    );
  }

  Row _buildRow(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              CardItem(
                title: '9,850',
                icon: Icons.sports_basketball,
                desc: 'Steps',
                height: 190,
                color: Colors.pink.shade300,
              ),
              const SizedBox(
                height: 10,
              ),
              CardItem(
                title: '70 bpm',
                icon: Icons.favorite,
                iconColor: Colors.red,
                desc: 'Avg. Heart Rate',
                height: 120,
                color: Colors.cyan,
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            children: [
              CardItem(
                title: '2,430',
                icon: Icons.watch,
                desc: 'Calories Burned',
                height: 120,
                color: Colors.amber,
              ),
              const SizedBox(
                height: 10,
              ),
              CardItem(
                title: '15 kms',
                icon: Icons.hotel,
                desc: 'Distance',
                height: 190,
                color: Colors.green.shade400,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

class CardItem extends StatelessWidget {
  String title;
  IconData icon;
  String desc;
  Color? color;
  Color? iconColor;
  double height;

  CardItem({
    Key? key,
    required this.title,
    required this.icon,
    required this.desc,
    this.color = Colors.blue,
    this.iconColor = Colors.white,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle titleStyle =
        Theme.of(context).textTheme.displayLarge!.copyWith(
              color: Colors.white,
              fontSize: 24,
            );
    return Container(
      height: height,
      color: color,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(
              title,
              style: titleStyle,
            ),
            trailing: Icon(
              icon,
              color: iconColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              desc,
              style: whiteText,
            ),
          ),
        ],
      ),
    );
  }
}
