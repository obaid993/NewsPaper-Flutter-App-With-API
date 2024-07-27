// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace, unused_import

import 'package:flutter/material.dart';
import 'package:newspaper/screeens/widgets/buttons/fav_btn.dart';
import 'package:get/get.dart';
import '../main.dart';
import 'home_screen.dart';
import 'widgets/splash_widgets/np_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
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
              NewsPaperHeadTag(),
              SizedBox(height: mq.height * 0.025),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: mq.width * .40,
                    height: mq.height * 0.25,
                    margin: EdgeInsets.only(right: 20),
                    child: Image.network(
                      'https://images.pexels.com/photos/10161899/pexels-photo-10161899.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: mq.width * .40,
                    height: mq.height * 0.25,
                    child: Image.network(
                      'https://images.pexels.com/photos/23894013/pexels-photo-23894013/free-photo-of-elderly-couple-in-front-of-the-gate-in-black-and-white.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: mq.height * 0.025),
              Center(
                child: Container(
                  height: mq.width * .25,
                  width: mq.height * 0.60,
                  child: Image.network(
                    'https://images.pexels.com/photos/23885282/pexels-photo-23885282/free-photo-of-vintage-cars-in-front-of-a-retro-restaurant-in-the-light-of-neon-signs.jpeg?auto=compress&cs=tinysrgb&w=600',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: mq.height * 0.025),
              Container(
                  width: mq.width * .80,
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                    color: Colors.black,
                    width: 2,
                  )))),
              Text('Breaking News at Your Fingertips: Join the Revolution',
                  maxLines: 2,
                  // textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(height: 5),
              Text(
                '''Stay ahead with real-time updates and in-depth analysis on the stories that matter most. Our app brings you the latest breaking news from around the world, directly to your device. Be part of the news revolution and never miss a beat with instant alerts, comprehensive coverage, and expert insights. Join us in transforming the way you stay informed – anytime, anywhere.''',
                textAlign: TextAlign.justify,
                // maxLines: 6,
              ),
              SizedBox(height: mq.height * 0.025),
              FavButton(
                  title: 'Start Reading',
                  onTap: () {
                    Get.off(HomeScreen());
                  })
            ],
          ),
        ),
      )),
    );
  }
}
