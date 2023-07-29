import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutttter/OFC%20UI/Models/Model.Setting/ActiveFaceID.dart';
import 'package:flutttter/OFC%20UI/Models/Model.Setting/ChangePASSWORD.dart';
import 'package:flutttter/Shared/components/components.dart';

import '../../../Shared/components/constants.dart';
import '../Model.home/HomeOFC.dart';

class Secuirty extends StatelessWidget {
  const Secuirty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.start,          children: [
          IconButton(
            onPressed: () {  Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => HomeOFC(),
              ),
            );
            },
            icon: Icon(
              Icons.arrow_back_ios_outlined,
              color: myColor,
              size: 24,

            ),
          ),

        ],
        ),
        titleSpacing: 0, // Remove default title spacing

        title:  Text(
          'Secuirty & sign in',
          style: TextStyle(color:myColor, fontSize: 24.sp),
          
        ),
      ),
      body: Padding(padding: REdgeInsets.only(top:58.h,left: 20.w,right: 20.w),child: Column(children: [
        InkWell(
          onTap: (){

            Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Changepassword(),

                ));
          },
          child: Container(height: 42.h,width: double.infinity,
          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8)),color: myColor),
          child: Row(children: [SizedBox(width: 16.w
            ,),Text('CHANGE YOUR PASSWORD',style: TextStyle(color: Colors.white,fontSize: 14.sp),)]),
          ),
        ),
        SizedBox(height: 12.h,),
        InkWell(
          onTap: (){

            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ActiveFaceID(),
              ),
            );


          },
          child: Container(height: 42.h,width: double.infinity,
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8)),color: myColor),
            child: Padding(
              padding: REdgeInsets.only(left: 16.w,right: 16.w),
              child: Row(children: [Text('ACTIVE FACE ID ',style: TextStyle(color: Colors.white,fontSize: 14.sp),

              ),
                Spacer(),
                Container(width: 40.w,height: 22.h,
                child: Image(image: AssetImage('assets/images/60.png'),),)
              ]),
            ),
          ),
        )

      ],)),


    );
  }
}
