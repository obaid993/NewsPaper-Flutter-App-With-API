// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../main.dart';

class NewsPaperHeadTag extends StatelessWidget {
  
  const NewsPaperHeadTag({super.key});

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          // padding: EdgeInsets.all(5),
          width: mq.width * 0.28,
          height: 35,
          color: Color(0Xff542f27),
          child: Text(
            'NEWS',
            textAlign: TextAlign.end,
            style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                height: 1.0,
                fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          // padding: EdgeInsets.all(5),
          width: mq.width * 0.28,
          height: 35,
          color: Color(0Xffe6542a),
          child: Text(
            'PAPER',
            textAlign: TextAlign.start,
            style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                height: 1.0,
                fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
