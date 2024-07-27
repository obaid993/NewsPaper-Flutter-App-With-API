// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, sized_box_for_whitespace, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

import '../../../main.dart';

class CtgHeadilnesCard extends StatelessWidget {
  final String? author;
  final String? title;
  final String? description;
  final String? imageUrl;
  final String? publishedAt;
  final String? content;
  final VoidCallback onTap;
  CtgHeadilnesCard({
    this.author,
    this.title,
    this.description,
    this.imageUrl,
    this.publishedAt,
    this.content,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.black,
            width: 2,
          ),
        ),
      ),
      child: Row(
        children: [
          Container(
            height: mq.height * 0.20,
            width: mq.width * 0.58,
            padding: EdgeInsets.only(right: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title!,
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  description!,
                  maxLines: 2,
                  style: TextStyle(),
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: onTap,
                      child: Text(
                        'Read more',
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: mq.width * 0.30,
            height: mq.height * 0.16,
            child: Image.network(
              imageUrl!,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
