import 'package:flutter/material.dart';
import 'package:flutter_code/day21/day01.dart';
import 'package:flutter_code/day21/day02.dart';
import 'package:flutter_code/day21/day03.dart';
import 'package:flutter_code/day21/day13.dart';
import 'package:flutter_code/day21/widget/primary_button.dart';

import 'day04.dart';
import 'day05.dart';
import 'day06.dart';
import 'day07.dart';
import 'day08.dart';
import 'day09.dart';
import 'day10.dart';
import 'day11.dart';
import 'day12.dart';

class UiPage extends StatelessWidget {
  const UiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade300,
        title: const Text('21天ui挑战'),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Expanded(
                child: PrimaryButton(
                  color: Colors.indigo.shade200,
                  title: 'Day01',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const ProfileOnePage()),
                    );
                  },
                ),
              ),
              Expanded(
                child: PrimaryButton(
                  color: Colors.indigo.shade200,
                  title: 'Day02',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const ProfileTwoPage()),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Expanded(
                child: PrimaryButton(
                  color: Colors.blue.shade200,
                  title: 'Day03',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const ProfileThreePage()),
                    );
                  },
                ),
              ),
              Expanded(
                child: PrimaryButton(
                  color: Colors.blue.shade200,
                  title: 'Day04',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const ProfileFourPage()),
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Expanded(
                child: PrimaryButton(
                  color: Colors.orange.shade200,
                  title: 'Day05',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const TodoHomePage()),
                    );
                  },
                ),
              ),
              Expanded(
                child: PrimaryButton(
                  color: Colors.orange.shade200,
                  title: 'Day06',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const TodoHomeTwoPage()),
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Expanded(
                child: PrimaryButton(
                  color: Colors.indigo.shade200,
                  title: 'Day07',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const LoginSevenPage()),
                    );
                  },
                ),
              ),
              Expanded(
                child: PrimaryButton(
                  color: Colors.indigo.shade200,
                  title: 'Day08',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const LoginPageTwo()),
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Expanded(
                child: PrimaryButton(
                  color: Colors.green.shade200,
                  title: 'Day09',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const LandingOnePage()),
                    );
                  },
                ),
              ),
              Expanded(
                child: PrimaryButton(
                  color: Colors.green.shade200,
                  title: 'Day10',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const DashboardOnePage()),
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Expanded(
                child: PrimaryButton(
                  color: Colors.cyan.shade200,
                  title: 'Day11',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const OnBoardingUI()),
                    );
                  },
                ),
              ),
              Expanded(
                child: PrimaryButton(
                  color: Colors.cyan.shade200,
                  title: 'Day12',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const DialogsPage()),
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Expanded(
                child: PrimaryButton(
                  color: Colors.pink.shade200,
                  title: 'Day13',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const PinCodeTextFieldPage()),
                    );
                  },
                ),
              ),
              Expanded(
                child: PrimaryButton(
                  color: Colors.pink.shade200,
                  title: 'Day14',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const DashboardOnePage()),
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Expanded(
                child: PrimaryButton(
                  color: Colors.blue.shade200,
                  title: 'Day15',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const LandingOnePage()),
                    );
                  },
                ),
              ),
              Expanded(
                child: PrimaryButton(
                  color: Colors.blue.shade200,
                  title: 'Day16',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const DashboardOnePage()),
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Expanded(
                child: PrimaryButton(
                  color: Colors.orange.shade200,
                  title: 'Day17',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const LandingOnePage()),
                    );
                  },
                ),
              ),
              Expanded(
                child: PrimaryButton(
                  color: Colors.orange.shade200,
                  title: 'Day18',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const DashboardOnePage()),
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Expanded(
                child: PrimaryButton(
                  color: Colors.green.shade200,
                  title: 'Day19',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const LandingOnePage()),
                    );
                  },
                ),
              ),
              Expanded(
                child: PrimaryButton(
                  color: Colors.green.shade200,
                  title: 'Day20',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const DashboardOnePage()),
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Expanded(
            child: PrimaryButton(
              color: Colors.indigo.shade200,
              title: 'Day21',
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          const DashboardOnePage()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
