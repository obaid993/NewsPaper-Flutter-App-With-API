// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../Components/ctg_headlines_loading.dart';

class CategoryApisLoading extends StatelessWidget {
  const CategoryApisLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
                    SizedBox(height: 5),
                    CategoryHeadlinesLoading(),
                    CategoryHeadlinesLoading(),
                    CategoryHeadlinesLoading()
                  ]);
  }
}