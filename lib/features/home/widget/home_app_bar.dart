

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskati/features/profile/profile_screen.dart';

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
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileScreen()) );
          },
          child: CircleAvatar(
            radius: 35.r,
           backgroundImage: AssetImage('assets/images/M_Morgan_logo.jpg'),
          ),
        )
      ],
    );
  }
}


//  CircleAvatar(
//           radius: 35.r,
//          backgroundImage: AssetImage('assets/images/Morgan_logo2.jpg'),
//         )
//       ],
//     );
//   }
// }