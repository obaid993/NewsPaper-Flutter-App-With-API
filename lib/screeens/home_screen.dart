// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, unnecessary_import, sort_child_properties_last, unused_import, unused_local_variable, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:newspaper/screeens/widgets/buttons/ctg_btn.dart';
import 'package:newspaper/screeens/widgets/general_widgets/headlines_card.dart';
import '../Controllers/ctg_btn_controller.dart';
import '../main.dart';
import 'ctg_pages/ctg_headlines.dart';
import 'ctg_pages/widget/search_widget.dart';
import 'headlines_cards_5.dart';
import 'news_details.dart';
import 'widgets/ctg_tab/ctg_tab.dart';
import 'widgets/general_widgets/ctg_headilnes_card.dart';
import 'widgets/splash_widgets/np_widget.dart';
import '../Controllers/news_controller.dart';

class HomeScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    NewsController newsController = Get.put(NewsController());
    CategoryButtonController controller = Get.put(CategoryButtonController());

    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.menu,
                      color: Colors.grey,
                      size: 50.0,
                    ),
                    onPressed: () {
                      _scaffoldKey.currentState?.openDrawer();
                    },
                  ),
                  NewsPaperHeadTag(),
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/15057524/pexels-photo-15057524/free-photo-of-group-of-cheerful-friends.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
                  ),
                ],
              ),
              Text(DateFormat.yMMMMEEEEd().format(DateTime.now())),
              SizedBox(height: 20),
              SearchWidget(),
              SizedBox(
                height: 20,
              ),
              HeadlinesCard5(),
              SizedBox(
                height: 20,
              ),
              CategoryTab(),
              SizedBox(height : 10),
              CategoryHeadlines()
              
              // Obx(
              //   () => controller.pages[controller.index.value],
              // ),
            ]),
          ),
        ),
        drawer: Drawer(
          backgroundColor: Color(0Xffefd1be),
          // child: ListView(
          //   children: [
          //     DrawerHeader(
          //       child: Text('Header'),
          //       decoration: BoxDecoration(
          //         color: Colors.blue,
          //       ),
          //     ),
          //     ListTile(
          //       title: Text('Khan'),
          //     ),
          //   ],
          // ),
        ),
      ),
    );
  }
}
