

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theam/app_colores.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hello,Mostafa',style: TextStyle(
                fontSize: 18.sp,
                color: AppColors.mainColor,
                fontWeight: FontWeight.bold
            ),),
            Text('Have A Nice Day',style: TextStyle(
                fontSize: 17.sp
            ),)
          ],
        ),
        CircleAvatar(
          radius: 35.r,
          child:  Image.asset('assets/images/Morgan_logo1.jpg'),
        )
      ],
    );
  }
}
