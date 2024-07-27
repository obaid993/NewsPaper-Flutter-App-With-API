// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Controllers/ctg_btn_controller.dart';
import '../../../main.dart';

class CategoryButton extends StatelessWidget {
  final String title;
  final int index;
  final VoidCallback onTap;

  CategoryButton({required this.title, required this.onTap,
  required this.index,
  });

  @override
  Widget build(BuildContext context) {
    CategoryButtonController controller = Get.put(CategoryButtonController());
    mq = MediaQuery.of(context).size;
    return InkWell(
      onTap: onTap,
      child: Obx(() => AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            curve: Curves.bounceInOut,
            height: 50,
            width: mq.width * 0.28,
            // Color(0xff0057FF)
            decoration: BoxDecoration(
              color: controller.index.value == index
                  ? Color(0xffFF9900)
                  : null,
              border: controller.index.value == index ? null : Border.all(
              color: Colors.black12,
              width : 1,
              ),
            ),

            child: Center(
              child: Text(
                title,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: controller.index.value == index
                        ? Colors.white
                        : null),
              ),
            ),
          )),
    );
  }
}
