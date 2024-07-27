// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newspaper/screeens/news_details.dart';

import '../Components/headlines_card_loading.dart';
import '../Controllers/news_controller.dart';
import 'widgets/general_widgets/headlines_card.dart';

class HeadlinesCard5 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    NewsController newsController = Get.put(NewsController());
    return  SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Obx(
                    () => newsController.isPoliticsLoading.value
                        ? HeadlinesCardLoading()
                        : 
                        Row(
                            children: newsController.politicsNews5
                                .map((e) => HeadlinesCard(
                                    imageUrl: e.urlToImage ?? 'https://images.pexels.com/photos/466685/pexels-photo-466685.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                                    title: e.title ?? 'Null' ,
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
                                    },
                                    author: e.author ?? 'Unknown',
                                    time: e.publishedAt ?? '00:00:00'))
                                .toList(),
                          ),
                  
                  
                  ));
  }
}