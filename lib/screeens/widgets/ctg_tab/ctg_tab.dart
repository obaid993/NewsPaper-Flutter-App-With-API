// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Controllers/ctg_btn_controller.dart';
import '../../../Controllers/news_controller.dart';
import '../../../main.dart';
import '../buttons/ctg_btn.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    NewsController newsController = Get.put(NewsController());
    CategoryButtonController controller = Get.put(CategoryButtonController());

    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      CategoryButton(
          title: 'Politics',
          onTap: () {
            controller.index.value = 0;
          },
          index : 0,
          ),
      CategoryButton(
          title: 'Economics',
          onTap: () {
            controller.index.value = 1;
          },
          index : 1,
          ),
      CategoryButton(
          title: 'Sports',
          onTap: () {
            controller.index.value = 2;
          },
          index : 2,
          ),
    ]);
  }
}
