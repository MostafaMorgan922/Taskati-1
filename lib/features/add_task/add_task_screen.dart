

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskati/core/theam/app_colores.dart';
import 'package:taskati/features/add_task/widgets/select_task_color.dart';
import 'package:taskati/features/add_task/widgets/task_from_field_with_title.dart';
import 'package:taskati/features/home/models/task_model.dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen({super.key});

  var validationKey = GlobalKey<FormState>();
  var titleController=TextEditingController();
  var desController=TextEditingController();
  TimeOfDay? startTime;
  TimeOfDay? endTime;

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
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(right: 20.0.w, left: 20.w, bottom: 10.h),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.mainColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r)
                )
            )
            , onPressed: () {
          if(validationKey.currentState?.validate()??false){
            TaskModel.tasks.add(TaskModel(title: titleController.text,
                startTime: '${startTime?.hour}${startTime?.minute}',
                endTime: '${endTime?.hour}${endTime?.minute}',
                des: desController.text,
                status: 'ToDo',
                taskColor: AppColors.mainColor
            ));
          }
        }, child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Create Task', style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white
          ),),
        )),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w),
        child: Form(
          key: validationKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 7.h,
            children: [
              TaskFromFieldWithTitle(
                controller:titleController ,
                title: 'Title',
                hintText: 'Enter title',
                validator: (value) {
                  if (value == null || value!.isEmpty ?? false) {
                    return 'Title is required';
                  }
                },
              ),

              TaskFromFieldWithTitle(
                controller: desController,
                title: 'Description',
                hintText: 'Enter Description',
                maxLine: 4,
                validator: (value){
                  if (value == null || value.isEmpty ){
                    return 'dec is required';
                  }
                },
              ),
              TaskFromFieldWithTitle(
                title: 'Date',
                hintText: '12-5-2020',
                suffixIcon: Icon(Icons.date_range),
               onTap: (){
                  showDatePicker(context: context, firstDate: DateTime.now(), lastDate: DateTime(2030));
               },

              ),
              Row(
                children: [
                  Expanded(child:
                  TaskFromFieldWithTitle(
                    onTap: (){
                     showTimePicker(context: context, initialTime: TimeOfDay(hour: 12, minute: 0)).then((v){
                       startTime=v;
                     });
                    },
                    title: 'Start Time',
                    hintText: '12:00 PM',
                    suffixIcon: Icon(Icons.timelapse),

                  ),
                  ),
                  SizedBox(width: 5.w,),
                  Expanded(child:
                  TaskFromFieldWithTitle(
                    onTap: (){
                      showTimePicker(context: context, initialTime: TimeOfDay(hour: 12, minute: 0)).then((v){
                        endTime=v;
                      });
                    },
                    title: 'End Time',
                    hintText: '12:00 PM',
                    suffixIcon: Icon(Icons.timelapse),

                  ),
                  ),
                ],
              ),
              SelectTaskColor()
            ],
          ),
        ),

      ),);
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
