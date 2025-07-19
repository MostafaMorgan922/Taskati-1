

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskati/core/theam/app_colores.dart';
import 'package:taskati/features/add_task/widgets/select_task_color.dart';
import 'package:taskati/features/add_task/widgets/task_from_field_with_title.dart';

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
        title: Text('Add Task', style: TextStyle(
            fontSize: 18.sp,
            color: AppColors.mainColor,
            fontWeight: FontWeight.bold
        ),),
      ),
      bottomNavigationBar:Padding(
        padding:  EdgeInsets.only(right: 20.0.w,left: 20.w,bottom: 30.h),
        child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.mainColor,
        )
        ,onPressed: (){}, child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Create Task',style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),),
        )),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 15.h,
          children: [
            TaskFromFieldWithTitle(
              title: 'Title',
              hintText: 'Enter title',
            ),

            TaskFromFieldWithTitle(
              title: 'Description',
              hintText: 'Enter Description',
              maxLine: 5,
            ),
            TaskFromFieldWithTitle(
              title: 'Date',
              hintText: '12-5-2020',
              suffixIcon: Icon(Icons.date_range),


            ),
            Row(
              children: [
                 Expanded(child:
                 TaskFromFieldWithTitle(
                   title: 'Description',
                   hintText: 'Enter Description',
                   suffixIcon: Icon(Icons.date_range),

                 ),
                 ),
                SizedBox(width: 5.w,),
                Expanded(child:
                TaskFromFieldWithTitle(
                  title: 'Description',
                  hintText: 'Enter Description',
                  suffixIcon: Icon(Icons.date_range),

                ),
                ),
              ],
            ),
            SelectTaskColor()
          ],
        ),
      ),
    );
  }
}


// Container(
//         alignment: Alignment.center,
//         margin: EdgeInsets.only(left: 20.w,right: 20.w,bottom: 30.h),
//         height: 60.h,
//         decoration: BoxDecoration(
//           color: AppColors.mainColor,
//           borderRadius: BorderRadius.circular(12.r)
//         ),
//         child: Text('Create Task',style: TextStyle(
//           fontWeight: FontWeight.bold,
//           fontSize: 18.sp,
//           color: Colors.white
//         ),),
//       ),