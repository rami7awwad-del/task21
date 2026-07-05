import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MobileBody extends StatefulWidget {
  const MobileBody({super.key});

  @override
  State<MobileBody> createState() => _MobileBodyState();
}

class _MobileBodyState extends State<MobileBody> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    double screenHight = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width:350.w,
              height: 200.h,
              color: Colors.amber,
              child: Container(
                child: Image.asset("assets/images/tamkeen_logo.jpg", fit: BoxFit.cover,),),
              ), //assets/images/tamkeen_logo.jpg
            
            GridView(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 300, 
                crossAxisSpacing: 10, 
                mainAxisSpacing: 10, 
                childAspectRatio: 1,
            
              ),
              padding: const EdgeInsets.all(10),
              shrinkWrap: true,
              children: [
                Container(
                  color: Colors.teal,
                  child: const Center(child: Text("1")),
                ),
                Container(
                  color: Colors.blue,
                  child: const Center(child: Text("2")),
                ),
                Container(
                  color: Colors.orange,
                  child: const Center(child: Text("3")),
                ),
                Container(
                  color: Colors.purple,
                  child: const Center(child: Text("4")),
                ),
                Container(
                  color: Colors.teal,
                  child: const Center(child: Text("1")),
                ),
                Container(
                  color: Colors.blue,
                  child: const Center(child: Text("2")),
                ),
                Container(
                  color: Colors.orange,
                  child: const Center(child: Text("3")),
                ),
                Container(
                  color: Colors.purple,
                  child: const Center(child: Text("4")),
                ),
                Container(
                  color: Colors.teal,
                  child: const Center(child: Text("1")),
                ),
                Container(
                  color: Colors.blue,
                  child: const Center(child: Text("2")),
                ),
                Container(
                  color: Colors.orange,
                  child: const Center(child: Text("3")),
                ),
                Container(
                  color: Colors.purple,
                  child: const Center(child: Text("4")),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
