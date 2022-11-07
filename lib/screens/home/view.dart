import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jawad_project/screens/bottom-navbar.dart';

import 'logic.dart';

class HomePage extends StatelessWidget {
  final logic = Get.put(HomeLogic());
  final state = Get.find<HomeLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/home-bg.png',
                ),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.11,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Home',
                      style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 10.0,
                    sigmaY: 10.0,
                  ),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.7,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: ListView(
                      physics: BouncingScrollPhysics(),
                      padding: EdgeInsets.zero,
                      children: [
                        const SizedBox(
                          height: 50,
                        ),
                        Container(
                          child: Text(
                            "Good morning, Adam",
                            style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.3), borderRadius: BorderRadius.circular(20)),
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: Center(
                            child: Text(
                              'Be the change that you \nwish to see in the world.',
                              style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.3), borderRadius: BorderRadius.circular(20)),
                          padding: const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white, width: 2),
                                      borderRadius: BorderRadius.circular(50),
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            'https://blackhorseexcellence.com/wp-content/uploads/2022/04/portrait-square-06.jpg'),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Charlotte',
                                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        'NewYork, US',
                                        style: TextStyle(color: Colors.white, fontSize: 10),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'You only live once, but if you do it right, once is enough.',
                                style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 100,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(
                                          CupertinoIcons.heart,
                                          color: Colors.white,
                                          size: 26,
                                        ),
                                        Icon(
                                          CupertinoIcons.bookmark,
                                          color: Colors.white,
                                          size: 24,
                                        ),
                                        Icon(
                                          CupertinoIcons.share,
                                          color: Colors.white,
                                          size: 24,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Image.asset(
                                    'assets/images/edit_square.png',
                                    width: 24,
                                    height: 24,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.3), borderRadius: BorderRadius.circular(20)),
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: Center(
                            child: Text(
                              'So many books, so little \ntime.',
                              style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 90,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
