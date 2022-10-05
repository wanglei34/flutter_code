import 'package:flutter/material.dart';

class Collection extends StatelessWidget {
  String title;
  String imageUrl;

  Collection({super.key, this.title = '', this.imageUrl = ''});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 150,
          width: 150,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(imageUrl), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Text(
          title,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black.withAlpha(90)),
        )
      ],
    );
  }
}
