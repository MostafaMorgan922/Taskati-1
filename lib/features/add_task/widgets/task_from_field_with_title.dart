

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theam/app_colores.dart';

class TaskFromFieldWithTitle extends StatelessWidget {
 final String title;
 final String hintText;
 final int maxLine;
 final Icon? suffixIcon;
  const TaskFromFieldWithTitle({super.key, required this.title, required this.hintText,  this.maxLine=1, this.suffixIcon  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,style: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.bold
        ),),
        SizedBox(height: 10.h,),
        TextFormField(
          cursorColor: AppColors.mainColor,
          keyboardType: TextInputType.phone ,
          maxLines: maxLine,

          decoration: InputDecoration(
            suffixIcon:suffixIcon ,

            enabledBorder:OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.r)
            ) ,
            focusedBorder:OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.mainColor),
                borderRadius: BorderRadius.circular(12.r)
            ) ,
            hintStyle:TextStyle(
              fontSize: 18.sp,
            ) ,
            hintText: hintText,

          ),
        )
      ],
    );
  }
}
