// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../main.dart';

class FavButton extends StatelessWidget {
  String title;
  final VoidCallback onTap;
  FavButton({required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: mq.width * 0.80,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 2,
          ),
          color: Color(0Xfff17452),
        ),
        child: Center(
          child: Text(
           title,
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
    );
  }
}
