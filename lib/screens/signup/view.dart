// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jawad_project/screens/login/view.dart';
import 'package:jawad_project/screens/search_filter/view.dart';

import 'logic.dart';

class SignupPage extends StatelessWidget {
  final logic = Get.put(SignupLogic());
  final state = Get.find<SignupLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: MediaQuery.of(context).size.height * 0.06,
        child: Center(
          child: InkWell(
            onTap: () {
              Get.to(() => LoginPage());
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account? / ',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Text(
                  'Login',
                  style: TextStyle(color: Color(0xffFDBDFF)),
                )
              ],
            ),
          ),
        ),
      ),
      extendBody: true,
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/bg-image.png',
                ),
                fit: BoxFit.fitWidth)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Image.asset(
                'assets/images/logo.png',
                width: MediaQuery.of(context).size.width * 0.5,
              ),
              Spacer(),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white.withOpacity(0.2),
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  fillColor: Colors.white.withOpacity(0.2),
                  hintText: "Phone",
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white.withOpacity(0.2),
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  fillColor: Colors.white.withOpacity(0.2),
                  hintText: "Username",
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white.withOpacity(0.2),
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  fillColor: Colors.white.withOpacity(0.2),
                  hintText: "password",
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.white),
                  )),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Get.to(() => Search_filterPage());
                },
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.1,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/images/btn-bg.png')),
                  ),
                  child: Center(
                      child: Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  )),
                ),
              ),
              Spacer(),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
