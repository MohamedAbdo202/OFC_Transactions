import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Shared/components/constants.dart';
import '../Model.home/HomeOFC.dart';

class Contacus extends StatelessWidget {
  const Contacus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Contact Us',
          style: TextStyle(color:myColor, fontSize: 24.sp),
        ),
      ),

      body: Padding(padding: REdgeInsets.only(top:64.h),
      child: Column(children: [

            Padding(padding: REdgeInsets.only(left: 85.w,right: 85.w),
              child: Column(
                children:[
                  Container(width: 190.w,
          height: 76.h,
          child: Image(
                image: AssetImage('assets/images/1241.png'),
            fit: BoxFit.fill,
          ),
          ),
                  SizedBox(height: 16.h,),
                  Text('Have A Question?',style: TextStyle(color: myColor,fontSize: 14.sp),),
                  Text('Don’t hesitate to contact us',style: TextStyle(color: myColor,fontSize: 14.sp),)

                ]),
            ),
        SizedBox(height: 89.h,),
      Padding(padding: REdgeInsets.only(left: 73.w,right: 73.w),
          child: Column(children: [

            Container(height: 2,
            color: myColor,),
            SizedBox(height: 16.h,),

            Row(children: [Icon(Icons.local_phone_outlined,color: myColor,),SizedBox(width: 6.w,),Text('07775000')],)
        ,SizedBox(height: 16.h,),

            Row(children: [Icon(Icons.email_outlined,color: myColor,),SizedBox(width: 6.w,),Text('OFCmail@OFC.com')],)
          , SizedBox(height: 16.h,),
            Row(children: [Container(width: 24.w,height: 24.h,child: Image(image: AssetImage('assets/images/global.png')),),SizedBox(width: 6.w,),Text('WWW.OFC.COM')],)
           , SizedBox(height: 16.h,),
            Container(height: 2,
              color: myColor,),

          ]),

      )


      ]),
      ),
    );
  }
}
