


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectTaskColor extends StatelessWidget {
  const SelectTaskColor({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Color',style: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.bold
        ),),
        SizedBox(height: 10.h,),
      SizedBox(
        height: 50.h,
        child: ListView.separated(
         scrollDirection: Axis.horizontal,
        itemBuilder: (context,index)=>CircleAvatar(
          radius: 20.r,
          backgroundColor: Colors.black,
        child: Icon(Icons.check,color: Colors.white,),
        ),
            separatorBuilder: (context,index)=>SizedBox(width: 10.w,),
            itemCount: 3),
      )

      ],
    );
  }
}
