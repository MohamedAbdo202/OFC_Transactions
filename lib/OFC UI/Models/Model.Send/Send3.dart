import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../Shared/components/components.dart';
import '../../../Shared/components/constants.dart';
import '../Model.crad/Card3.dart';
import '../Model.home/HomeOFC.dart';

class Send3 extends StatefulWidget {
  const Send3({Key? key}) : super(key: key);

  @override
  State<Send3> createState() => _Send3State();
}

class _Send3State extends State<Send3> {
  @override
  Widget build(BuildContext context) {
    var passwordControl=TextEditingController();

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
          'Transfer To Yourself',
          style: TextStyle(color:myColor, fontSize: 24.sp),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 24.h,),
          Text('Step3'),
          SizedBox(height: 7.h,),

          Row(

            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              3, // Total number of dots
                  (index) => Container(
                width: 49.w,
                height: 2.h,
                margin: EdgeInsets.only(left: 0),
                decoration: BoxDecoration(
                  color: index < 3 ? myColor : HexColor('#8B8B8BBF'),
                ),
              ),
            ),
          ),
          SizedBox(height: 16.h,),
          Padding(
              padding: REdgeInsets.only(left:20.w,right: 20.w),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start
                  ,children:[ Text('From',style: TextStyle(fontSize: 24.sp,color: myColor),),
                SizedBox(height: 8.h,),
                Row(children: [
                  Text('Card Type',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 14.sp,color: HexColor("#8B8B8BBF")),),
                  Spacer(),
                  Text('Debit Card',style: TextStyle(fontSize: 14.sp,color: Colors.black),),],),

                SizedBox(height: 16.h,),
                Row(children: [        Text('Card Number',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 14.sp,color: HexColor("#8B8B8BBF")),),
                  Spacer(),
                  Text('651654151416152',style: TextStyle(fontSize: 14.sp,color: Colors.black),),],),

                SizedBox(height: 16.h,),
                Row(children: [        Text('Card Balance',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 14.sp,color: HexColor("#8B8B8BBF")),),
                  Spacer(),
                  Text('1369.16 \$',style: TextStyle(fontSize: 14.sp,color: Colors.black),),],),

                SizedBox(height: 16.h,),
              Text('To',style: TextStyle(fontSize: 24.sp,color: myColor)),
                SizedBox(height: 8.h,),
                Row(children: [
                  Text('Card Type',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 14.sp,color: HexColor("#8B8B8BBF")),),
                  Spacer(),
                  Text('Debit Card',style: TextStyle(fontSize: 14.sp,color: Colors.black),),],),

                SizedBox(height: 16.h,),
                Row(children: [        Text('Card Number',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 14.sp,color: HexColor("#8B8B8BBF")),),
                  Spacer(),
                  Text('651654151416152',style: TextStyle(fontSize: 14.sp,color: Colors.black),),],),

                SizedBox(height: 16.h,),
                Row(children: [        Text('Card Balance',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 14.sp,color: HexColor("#8B8B8BBF")),),
                  Spacer(),
                  Text('1369.16 \$',style: TextStyle(fontSize: 14.sp,color: Colors.black),),],),
                SizedBox(height: 24.h,),
                Text('Amount',style: TextStyle(fontSize: 24.sp,color: myColor)),
                SizedBox(height: 16.h,),
                Text('Choose the amount you want to transfer',style: TextStyle(fontSize: 14.sp,)),
                SizedBox(height: 8.h,),

                defaultFormField(

                  controller: passwordControl,
                  label: 'Amount',

                  type: TextInputType.number,
                  validator: ( value)
                  {
                    if(value== null || value.isEmpty)
                    {
                      return 'password must not be empty';
                    }

                    return null;
                  },
                ),
                SizedBox(height: 32.h,),
                defaultButton(function: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Card3(),

                      )
                  );

                }, text: 'SUBMIT',background: myColor,radius: 10 )


              ])),


        ]),
      ),
    );
  }
}
