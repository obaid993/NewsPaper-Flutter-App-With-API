// ignore_for_file: unused_import, unused_local_variable, avoid_print, annotate_overrides

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../model/news_model.dart';
import '../model/se_news_model.dart';

class NewsController extends GetxController {
  RxList<NewsModel> politicsNewsList = <NewsModel>[].obs;
  RxList<NewsModel> politicsNews5 = <NewsModel>[].obs;
  RxList<SENewsModel> economicsNewsList = <SENewsModel>[].obs;
  RxList<SENewsModel> economicsNews5 = <SENewsModel>[].obs;
  RxList<SENewsModel> sportsNewsList = <SENewsModel>[].obs;
  RxList<SENewsModel> sportsNews5 = <SENewsModel>[].obs;

  RxBool isPoliticsLoading = false.obs;
  RxBool isEconomicsLoading = false.obs;
  RxBool isSportsLoading = false.obs;

  void onInit() async {
    super.onInit();
    getEconomicsNews();
    getPoliticsNews();
    getSportsNews();
  }

  Future<void> getPoliticsNews() async {
    isPoliticsLoading.value = true;
    var baseUrl =
        'https://newsapi.org/v2/everything?q=tesla&from=2024-06-27&sortBy=urlToImage&apiKey=115fb5330748403cb83be085530e78cc';
    try {
      var response = await http.get(Uri.parse(baseUrl));
      print(response);
      if (response.statusCode == 200) {
        print(response.body);
        var body = jsonDecode(response.body);
        var articals = body['articles']; 
        for (var news in articals) {
          politicsNewsList.add(NewsModel.fromJson(news));
        }
        politicsNews5.value = politicsNewsList.sublist(0, 5).obs;
      } else {
        print("Something went Wrong in Tranding News");
      }
    } catch (ex) {
      print(ex);
    }
    isPoliticsLoading.value = false;
  }

  Future<void> getEconomicsNews() async {
    isEconomicsLoading.value = true;
    var baseUrl =
        'https://obaid993.github.io/economic_api/get_economy_apis.json';
    try {
      var response = await http.get(Uri.parse(baseUrl));
      if (response.statusCode == 200) {
        print(response.body);
        var body = jsonDecode(response.body);
        var articals = body['articles'];
        for (var news in articals) {
          economicsNewsList.add(SENewsModel.fromJson(news));
        }
        economicsNews5.value = economicsNewsList.sublist(0, 5);
      } else {
        print('Something else happening ! ');
      }
    } catch (ex) {
      print(ex);
    }
    isEconomicsLoading.value = false;
  }

  Future<void> getSportsNews() async {
    isSportsLoading.value = true;
    var baseUrl = 'https://obaid993.github.io/sports_api/get_sports_api.json';
    try {
      var response = await http.get(Uri.parse(baseUrl));
      if (response.statusCode == 200) {
        print(response.body);
        var body = jsonDecode(response.body);
        var articals = body['articles'];
        for (var news in articals) {
          sportsNewsList.add(SENewsModel.fromJson(news));
        }
        sportsNews5.value = sportsNewsList.sublist(0,5);
      } else {
        print("Something else happening ");
      }
    } catch (ex) {
      print(ex);
    }
    isSportsLoading.value = false;
  }

  Future<void> searchNews(String search) async {
    isPoliticsLoading.value = true;
    var baseURL =
        'https://newsapi.org/v2/everything?q=$search&from=2024-06-27&sortBy=urlToImage&apiKey=115fb5330748403cb83be085530e78cc';
    try {
      var response = await http.get(Uri.parse(baseURL));
      print(response);
      if (response.statusCode == 200) {
        print(response.body);
        var body = jsonDecode(response.body);
        var articals = body["articles"];
        politicsNewsList.clear();
        int i = 0;
        for (var news in articals) {
          i++;
          politicsNewsList.add(NewsModel.fromJson(news));
          if (i == 10) {
            break;
          }
        }
      } else {
        print("Something went Wrong in Tranding News");
      }
    }  catch (ex) {
      print(ex);
    }
    isPoliticsLoading.value = false;
  }

}
