import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../global/profile_six_style.dart';
import '../model/profile_six_model.dart';

class ProfileSixWidget extends StatelessWidget {
  const ProfileSixWidget({Key? key, required this.task}) : super(key: key);
  final Task task;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shadowColor: color2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 16,
        ),
        minLeadingWidth: 2,
        leading: Container(
          width: 2,
          color: color2,
        ),
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(
            task.taskName,
            style: titleStyle,
          ),
        ),
        subtitle: Text(
          task.description,
          style: subTitleStyle,
        ),
        trailing: task.isDone
            ? const Text(
                'Done',
                style: doneStyle,
              )
            : Text(
                DateFormat('hh:mm a').format(task.taskTime),
                style: notDoneStyle,
              ),
      ),
    );
  }
}
