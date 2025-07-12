

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskati/core/theam/app_colores.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: AppColors.mainColor,
        ),
        centerTitle: true,
        title: Text('Add Task',style: TextStyle(
          fontSize: 18.sp,
          color: AppColors.mainColor,
          fontWeight: FontWeight.bold
        ),),
      ),
     body: Padding(
       padding:  EdgeInsets.symmetric(horizontal: 16.0.w),
       child: Column(
         children: [
           TextFormField(
             cursorColor: AppColors.mainColor,
             keyboardType: TextInputType.phone ,
             maxLines: 1,

             decoration: InputDecoration(

               enabledBorder:OutlineInputBorder() ,
               focusedBorder:OutlineInputBorder(
                 borderSide: BorderSide(color: AppColors.mainColor),
                 borderRadius: BorderRadius.circular(12)
               ) ,
               hintStyle:TextStyle(
                 fontSize: 18.sp,
               ) ,
                hintText: 'enter title',

             ),
           )
         ],
       ),
     ),
    );
  }
}
