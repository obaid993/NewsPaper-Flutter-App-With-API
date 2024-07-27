// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../../Controllers/news_controller.dart';

class SearchWidget extends StatelessWidget {
  SearchWidget({super.key});
  NewsController newsController = Get.put(NewsController());
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: searchController,
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0Xfff5ece6),
        border: OutlineInputBorder(),
        hintText: 'Explore News',
        prefixIcon: Obx(() => newsController.isPoliticsLoading.value
            ? Icon(Icons.search_rounded)
            : InkWell(
                onTap: () {
                  newsController.searchNews(searchController.text);
                },
                child: const Icon(Icons.search_rounded),
              )),
    
       
      ),
    );
  }
}
