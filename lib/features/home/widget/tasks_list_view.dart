

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskati/features/home/models/task_model.dart';

import '../../../core/theam/app_colores.dart';

class TasksListView extends StatelessWidget {
  const TasksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return TaskModel.tasks.isEmpty?Column(
      children: [
        Image.asset('assets/images/empty_task (2).jpg'),
        Text("you don't have any task yet!",style: TextStyle(
          fontSize: 18.sp,
          color: Colors.grey
        ),),
      ],
    ) :Expanded(
      child: ListView.separated(
        separatorBuilder: (context,index)=>SizedBox(height: 10.h,),
        itemCount:TaskModel.tasks.length,
        itemBuilder: (context,index){
          return Dismissible(
              key: UniqueKey(),
              child: TaskItem(
                taskModel:TaskModel.tasks[index],
              ));
        },
      ),
    );
  }
}

class TaskItem extends StatelessWidget {
 final TaskModel taskModel;
  const TaskItem({super.key, required this.taskModel,});

  @override
  Widget build(BuildContext context) {
    return  Container(
        padding: EdgeInsets.symmetric(horizontal: 15.w,
            vertical:15.h
        ),
        decoration: BoxDecoration(
            color: taskModel.taskColor,
            borderRadius: BorderRadius.circular(12.r)
        ),
        child: IntrinsicHeight(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(taskModel.title,style: TextStyle(
                        fontSize: 22.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),),
                    SizedBox(height: 10.h,),
                    Row(children: [
                      Icon(Icons.alarm_add,color: Colors.white,),
                      SizedBox(width: 5.w,),
                      Text('${taskModel.startTime}  -${taskModel.endTime}',
                        style:TextStyle(
                        fontSize: 17.sp,
                        color: Colors.white,

                      )

                      )
                    ],),
                    SizedBox(height: 10.h,),
                    Text(taskModel.des,style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600
                    ),)
                  ],
                ),
              ),
              VerticalDivider(
                color: Colors.white,
                width: 20,
                thickness: 2,
                endIndent: 2,
              ),
              RotatedBox(
                quarterTurns: 3,
                child: Text(taskModel.status,style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold
                ),),
              )
            ],
          ),
        )
    );
  }
}
