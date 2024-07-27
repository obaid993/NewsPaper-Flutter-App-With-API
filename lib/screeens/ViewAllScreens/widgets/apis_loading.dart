// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../Components/ctg_headlines_loading.dart';


class ApisLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CategoryHeadlinesLoading(),
      CategoryHeadlinesLoading(),
      CategoryHeadlinesLoading(),
      CategoryHeadlinesLoading(),
      CategoryHeadlinesLoading(),
    ]);
  }
}
