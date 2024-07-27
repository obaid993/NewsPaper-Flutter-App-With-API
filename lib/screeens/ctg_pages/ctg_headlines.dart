// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../ViewAllScreens/view_all_screen.dart';
import '../../Components/ctg_headlines_loading.dart';
import '../../Controllers/ctg_btn_controller.dart';
import '../../Controllers/news_controller.dart';
import '../news_details.dart';
import '../widgets/general_widgets/ctg_headilnes_card.dart';
import 'widget/ctg_apis_loading.dart';
// import '../../Controller/news_controller.dart';

class CategoryHeadlines extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    NewsController newsController = Get.put(NewsController());
    CategoryButtonController controller = Get.put(CategoryButtonController());
    return SingleChildScrollView(
        child: Obx(() => controller.index.value == 0
            ? newsController.isPoliticsLoading.value
                ? CategoryApisLoading()
                : Column(
                    children: [
                      Column(
                        children: newsController.politicsNews5
                            .map((e) => CtgHeadilnesCard(
                                author: e.author ?? 'Unknown',
                                title: e.title ?? 'Null',
                                description: e.description ?? 'Null',
                                imageUrl: e.urlToImage ??
                                    'https://images.pexels.com/photos/466685/pexels-photo-466685.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                                publishedAt: e.publishedAt ?? '00:00:00',
                                content: e.content ?? ' ',
                                onTap: () {
                                  Get.to(NewsDetails(
                                    author: e.author ?? 'Unknown',
                                    title: e.title ?? 'Null',
                                    description: e.description ?? 'Null',
                                    imageUrl: e.urlToImage ??
                                        'https://images.pexels.com/photos/466685/pexels-photo-466685.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                                    publishedAt: e.publishedAt ?? '00:00:00',
                                    content: e.content ?? ' ',
                                  ));
                                }))
                            .toList(),
                      ),
                      SizedBox(height: 10),
                      InkWell(
                          onTap: () => Get.to(ViewAllScreen()),
                          child: Center(child: Text('View All Headlines')))
                    ],
                  )
            : controller.index.value == 1
                ? newsController.isEconomicsLoading.value
                    ? CategoryApisLoading()
                    : Column(
                        children: [
                          Column(
                            children: newsController.economicsNews5
                                .map((e) => CtgHeadilnesCard(
                                    author: e.author,
                                    title: e.title,
                                    description: e.description,
                                    imageUrl: e.imageUrl,
                                    publishedAt: e.publishedAt,
                                    content: e.content,
                                    onTap: () {
                                      Get.to(NewsDetails(
                                          author: e.author,
                                          title: e.title,
                                          description: e.description,
                                          imageUrl: e.imageUrl,
                                          publishedAt: e.publishedAt,
                                          content: e.content));
                                    }))
                                .toList(),
                          ),
                          SizedBox(height: 10),
                          InkWell(
                              onTap: () => Get.to(ViewAllScreen()),
                              child: Center(child: Text('View All Headlines')))
                        ],
                      )
                : newsController.isSportsLoading.value
                    ? CategoryApisLoading()
                    : Column(
                        children: [
                          Column(
                            children: newsController.sportsNews5
                                .map((e) => CtgHeadilnesCard(
                                    author: e.author,
                                    title: e.title,
                                    description: e.description,
                                    imageUrl: e.imageUrl,
                                    publishedAt: e.publishedAt,
                                    content: e.content,
                                    onTap: () {
                                      Get.to(NewsDetails(
                                          author: e.author,
                                          title: e.title,
                                          description: e.description,
                                          imageUrl: e.imageUrl,
                                          publishedAt: e.publishedAt,
                                          content: e.content));
                                    }))
                                .toList(),
                          ),
                          SizedBox(height: 10),
                          InkWell(
                              onTap: () => Get.to(ViewAllScreen()),
                              child: Center(child: Text('View All Headlines')))
                        ],
                      )));
  }
}
