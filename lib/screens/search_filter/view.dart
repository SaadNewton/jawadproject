import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jawad_project/screens/bottom-navbar.dart';

import 'logic.dart';

class Search_filterPage extends StatelessWidget {
  final logic = Get.put(Search_filterLogic());
  final state = Get.find<Search_filterLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: MediaQuery.of(context).size.height * 0.1,
        child: InkWell(
          onTap: (){
            Get.to(()=> BottomNavBar());
          },
          child: Row(
            children: [
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.arrow_forward,size: 40,color: Colors.white,),
              )
            ],
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
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30))),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.1,
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Search',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  )),
            ),
            GridView(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20.0,
              mainAxisSpacing: 10.0,
                childAspectRatio: 4,
            ),
            padding: EdgeInsets.all(12),
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white),
                ),
                child: Center(child: Text('Self-love',style: TextStyle(color: Colors.white),)),),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white),
                ),
                child: Center(child: Text('Fitness',style: TextStyle(color: Colors.white),)),),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white),
                ),
                child: Center(child: Text('Brightness',style: TextStyle(color: Colors.white),)),),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white),
                ),
                child: Center(child: Text('Wisdom',style: TextStyle(color: Colors.white),)),),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white),
                ),
                child: Center(child: Text('Confidence',style: TextStyle(color: Colors.white),)),),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white),
                ),
                child: Center(child: Text('Best',style: TextStyle(color: Colors.white),)),),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white),
                ),
                child: Center(child: Text('Simplicity',style: TextStyle(color: Colors.white),)),),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white),
                ),
                child: Center(child: Text('Sales',style: TextStyle(color: Colors.white),)),),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white),
                ),
                child: Center(child: Text('Growth',style: TextStyle(color: Colors.white),)),),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white),
                ),
                child: Center(child: Text('Be Authentic',style: TextStyle(color: Colors.white),)),),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white),
                ),
                child: Center(child: Text('Love',style: TextStyle(color: Colors.white),)),),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white),
                ),
                child: Center(child: Text('Be a hero',style: TextStyle(color: Colors.white),)),),
            ],
            )
          ],
        ),
      ),
    );
  }
}
