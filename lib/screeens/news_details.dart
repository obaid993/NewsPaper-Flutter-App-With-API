// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_interpolation_to_compose_strings, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../main.dart';

class NewsDetails extends StatelessWidget {
  final String? author;
  final String? title;
  final String? description;
  final String? imageUrl;
  final String? publishedAt;
  final String? content;

  NewsDetails({
    this.author,
    this.title,
    this.description,
    this.imageUrl,
    this.publishedAt,
    this.content,
  });

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0Xffefd1be),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(Icons.arrow_back_ios_new)),
                    Text('News Details',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                    Icon(Icons.bookmark, size: 30),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.black, width: 1))),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
                  ),
                  width: double.infinity,
                  height: mq.height * 0.85,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            title!,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            height: mq.height * 0.25,
                            width: double.infinity,
                            child: Image.network(
                              imageUrl!,
                                   
                               
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Text(
                                  publishedAt!.toString() + ' By ',
                                  style: TextStyle(
                                    color: Color.fromARGB(221, 51, 47, 47),
                                  ),
                                ),
                                Text(
                                  author!.toString(),
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: double.infinity,
                            height: 50,
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            decoration: BoxDecoration(
                              color: Color(0Xfff5e6dc),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Share this post '),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 30,
                                      child: Image.asset(
                                          'assets/icons/facebook.png'),
                                    ),
                                    SizedBox(width: 10),
                                    Container(
                                      height: 30,
                                      child: Image.asset(
                                          'assets/icons/whatsapp.png'),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Text(
                            description.toString() + '\n' + content.toString(),
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
