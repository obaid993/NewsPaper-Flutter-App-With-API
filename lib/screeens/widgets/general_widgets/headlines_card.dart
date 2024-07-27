// ignore_for_file: unused_import, prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../../../main.dart';

class HeadlinesCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String author;
  final String time;
  final VoidCallback onTap;

  HeadlinesCard(
      {required this.imageUrl,
      required this.title,
      required this.onTap,
      required this.author,
      required this.time});

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(right: 15),
      height: mq.height * 0.30,
      width: mq.width * 0.85,
      decoration:
          BoxDecoration(border: Border.all(width: 2, color: Colors.black)),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              height: mq.height * 0.16,
              width: mq.width * 0.75,
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: mq.width * 0.70,
                  // height: mq.height * 0.05,
                  child: Text(title,
                      maxLines: 2,
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                ),
                Icon(Icons.bookmark, size: 30),
              ],
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
    );
  }
}
