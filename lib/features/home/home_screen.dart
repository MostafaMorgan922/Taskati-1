

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskati/core/theam/app_colores.dart';
import 'package:taskati/features/home/widget/date_add_task_row.dart';
import 'package:taskati/features/home/widget/home_app_bar.dart';
import 'package:taskati/features/home/widget/task_filter_date.dart';
import 'package:taskati/features/home/widget/tasks_list_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    body: SafeArea(
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            HomeAppBar(),
            SizedBox(height: 20.h,),
            DateAddTaskRow(),
            SizedBox(height: 20.h,),
            TaskFilterDate(),
            SizedBox(height: 20.h,),
            TasksListView()


      ],
        ),
              ),
            )



      );
  }
}
