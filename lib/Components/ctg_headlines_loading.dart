// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../main.dart';
import 'loading_container.dart';

class CategoryHeadlinesLoading extends StatelessWidget {
  const CategoryHeadlinesLoading({super.key});

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        bottom : 8
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        border: Border(
          bottom: BorderSide(
            color: Theme.of(context).colorScheme.primaryContainer,
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height : 10),
                LoadingContainer(width: mq.width * 0.50, height: 10),
                LoadingContainer(width: mq.width * 0.50, height: 10),
                SizedBox(height: 10),
                LoadingContainer(width: mq.width * 0.60, height: 8),
                LoadingContainer(width: mq.width * 0.50, height: 8),
                SizedBox(height: 8),
                LoadingContainer(width: mq.width * 0.15, height: 5),
                SizedBox(height : 10),
              ],
            ),
          ),
          LoadingContainer(
            width: mq.width * 0.30,
            height: mq.height * 0.16,
            
          ),
        ],
      ),
    );
  }
}
