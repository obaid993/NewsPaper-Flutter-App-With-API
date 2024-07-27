// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Controllers/ctg_btn_controller.dart';
import '../../Controllers/news_controller.dart';
import '../ctg_pages/widget/search_widget.dart';
import '../news_details.dart';
import '../widgets/general_widgets/ctg_headilnes_card.dart';
import 'widgets/apis_loading.dart';

class ViewAllScreen extends StatelessWidget {
  const ViewAllScreen({super.key});

  @override
  Widget build(BuildContext context) {
    NewsController newsController = Get.put(NewsController());
    CategoryButtonController controller = Get.put(CategoryButtonController());
    return Scaffold(
      backgroundColor: Color(0Xffefd1be),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Obx(() => controller.index.value == 0
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: Icon(Icons.arrow_back_ios_new)),
                        Text('Politics News Headlines',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        Icon(Icons.bookmark, size: 30),
                      ],
                    )
                  : controller.index.value == 1
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                                onTap: () {
                                  Get.back();
                                },
                                child: Icon(Icons.arrow_back_ios_new)),
                            Text('Economics News Headlines',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                )),
                            Icon(Icons.bookmark, size: 30),
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                                onTap: () {
                                  Get.back();
                                },
                                child: Icon(Icons.arrow_back_ios_new)),
                            Text('Sports News Headlines',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                )),
                            Icon(Icons.bookmark, size: 30),
                          ],
                        )),
              SizedBox(
                height: 10,
              ),
              SearchWidget(),
              SizedBox(height: 20),
              SingleChildScrollView(
                child: Obx(() => controller.index.value == 0
                    ? newsController.isPoliticsLoading.value
                        ? ApisLoading()
                        : Column(
                            children: newsController.politicsNewsList
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
                                        publishedAt:
                                            e.publishedAt ?? '00:00:00',
                                        content: e.content ?? ' ',
                                      ));
                                    }))
                                .toList())
                    : controller.index.value == 1
                        ? newsController.isEconomicsLoading.value
                            ? ApisLoading()
                            : Column(
                                children: newsController.economicsNewsList
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
                                            content: e.content,
                                          ));
                                        }))
                                    .toList())
                        : newsController.isSportsLoading.value
                            ? ApisLoading()
                            : Column(
                                children: newsController.sportsNewsList
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
                                            content: e.content,
                                          ));
                                        }))
                                    .toList())),
              )
            ],
          ),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.background,
        onPressed: () {
          controller.index.value == 0 ? newsController.getPoliticsNews() : null;
        },
        child: Icon(Icons.refresh, color: Colors.white),
      ),
    );
  }
}
