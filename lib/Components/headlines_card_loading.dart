// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import '../main.dart';
import 'loading_container.dart';

class HeadlinesCardLoading extends StatelessWidget {
  const HeadlinesCardLoading({super.key});

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Container(
      padding : EdgeInsets.all(20),
      margin: EdgeInsets.only(right: 15),
      height: mq.height * 0.30,
      width: mq.width * 0.85,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment : MainAxisAlignment.spaceBetween,
        children: [
          LoadingContainer(
            height: mq.height * 0.16,
            width: mq.width * 0.80,
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment : MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  LoadingContainer(width: mq.width * 0.50, height: 10),
                  SizedBox(height : 3),
                  LoadingContainer(width: mq.width * 0.50, height: 10),
                ],
              ),
              SizedBox(width: mq.width * 0.10),
              LoadingContainer(width: 20, height: 30)
            ],
          ),
          
          SizedBox(height: 10),
          Row(
            children: [
              LoadingContainer(width: mq.width * 0.15, height: 5),
              SizedBox(width: 5),
              LoadingContainer(width: mq.width * 0.05, height: 3),
            ],
          ),
          
        ],
      ),
    );
  }
}
