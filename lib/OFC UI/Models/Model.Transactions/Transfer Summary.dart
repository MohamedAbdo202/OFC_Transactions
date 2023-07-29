import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutttter/OFC%20UI/Models/Model.home/HomeOFC.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../Shared/components/constants.dart';

class TransferSummary extends StatelessWidget {
  const TransferSummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        backgroundColor: myColor,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.start,          children: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => HomeOFC(),

                  ));

            },
            icon: Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.white,
              size: 24,
            ),
          ),

        ],
        ),
        titleSpacing: 0, // Remove default title spacing

        title:  Text(
          'Transfer Summary',
          style: TextStyle(color: Colors.white, fontSize: 24.sp),
        ),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
            height: 145.h,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
              color: myColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,children: [SizedBox(height: 27.h,),

            Text('23.69\$',style: TextStyle(fontSize:28.sp,color: Colors.white),),
              SizedBox(height: 8.h,),
              Container(width: 38.w,height: 38.h,
              child: Image(image: AssetImage('assets/images/TransferSummary.png'),fit: BoxFit.cover),),
              SizedBox(height: 8.h,),
              Text('Download Pdf',style: TextStyle(color: Colors.white))


            ],),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w),

            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
            SizedBox(height: 32.h,),
            Text('From',style: TextStyle(fontSize: 14.sp,color: HexColor("#8B8B8BBF")),),
            Text('Mohamed Abdo',style: TextStyle(fontSize: 14.sp,color: Colors.black),)
            , SizedBox(height: 12.h,),
            Text('Account Number',style: TextStyle(fontSize: 14.sp,color: HexColor("#8B8B8BBF")),),
            Text('206065478001',style: TextStyle(fontSize: 14.sp,color: Colors.black),),
            SizedBox(height: 12.h,),
            Text('To',style: TextStyle(fontSize: 14.sp,color: HexColor("#8B8B8BBF")),),
            Text('Amazon Co. ',style: TextStyle(fontSize: 14.sp,color: Colors.black),),
            SizedBox(height: 12.h,),
            Text('Account Number',style: TextStyle(fontSize: 14.sp,color: HexColor("#8B8B8BBF")),),
            Text('Amazon651',style: TextStyle(fontSize: 14.sp,color: Colors.black),),
            SizedBox(height: 12.h,),
            Text('Date',style: TextStyle(fontSize: 14.sp,color: HexColor("#8B8B8BBF")),),
            Text('14 April , 2023',style: TextStyle(fontSize: 14.sp,color: Colors.black),),
            SizedBox(height: 12.h,),
            Text('Time',style: TextStyle(fontSize: 14.sp,color: HexColor("#8B8B8BBF")),),
            Text('19:06 PM',style: TextStyle(fontSize: 14.sp,color: Colors.black),),
                                                 ] ),
          ),
        ],
      ),
    );
  }
}
