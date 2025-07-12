

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskati/features/home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 8),(){
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>HomeScreen()),
          (r)=>false
      );
    });
    super.initState();
  }
  void dispos(){
    super.dispose();
  }
  Widget build(BuildContext context) {
    double screenWidth=MediaQuery.of(context).size.width;
    double screenHeight=MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
         Image.asset('assets/images/splash_logo.gif'),
            SizedBox(height: 20.h,),
            Text('Taskati',style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 30.h,),
            Text("it's time to get organized",
            style: TextStyle(
              fontSize: 17.sp,

            ),
            ),
          ],
        ),
      ),
    );
  }
}
