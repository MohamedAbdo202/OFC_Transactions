import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutttter/OFC%20UI/Models/Model.crad/Card3.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../Shared/components/components.dart';
import '../../../Shared/components/constants.dart';
import 'Cards.dart';

class Cards2 extends StatelessWidget {
  const Cards2({Key? key}) : super(key: key);

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
                builder: (context) => Cards(),

        )
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
          'Transfer',
          style: TextStyle(color:myColor, fontSize: 24.sp),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.only(left: 20.w,top: 30.h,right: 20.w),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start
                ,children: [

              Text('From',style: TextStyle(fontSize: 14.sp,color: HexColor("#8B8B8BBF")),),
              Text('206065478001',style: TextStyle(fontSize: 14.sp,color: Colors.black),),
              SizedBox(height: 12.h,),
              Text('Available Amount',style: TextStyle(fontSize: 14.sp,color: HexColor("#8B8B8BBF")),),
              Text('1539.14 \$',style: TextStyle(fontSize: 14.sp,color:  Colors.black),),
              SizedBox(height: 66.h,),
              Text('To',style: TextStyle(fontSize: 14.sp,color: HexColor("#8B8B8BBF")),),
              SizedBox(height: 16.h,),

              defaultFormField(

                controller: passwordControl,
                label: 'Account Type',
                suffix: Icons.keyboard_arrow_down,
                suffixPressed: ()
                {
                  // setState(()
                  // {
                  //   isPassword = !isPassword;
                  // });
                },
                type: TextInputType.visiblePassword,
                validator: ( value)
                {
                  if(value== null || value.isEmpty)
                  {
                    return 'password must not be empty';
                  }

                  return null;
                },
              ),              SizedBox(height: 16.h,),

              defaultFormField(

                controller: passwordControl,
                label: 'Account Number',

                type: TextInputType.visiblePassword,
                validator: ( value)
                {
                  if(value== null || value.isEmpty)
                  {
                    return 'password must not be empty';
                  }

                  return null;
                },
              ),              SizedBox(height: 16.h,),

              defaultFormField(

                controller: passwordControl,
                label: 'Amount',

                type: TextInputType.visiblePassword,
                validator: ( value)
                {
                  if(value== null || value.isEmpty)
                  {
                    return 'password must not be empty';
                  }

                  return null;
                },
              ),              SizedBox(height: 16.h,),

              defaultFormField(

                controller: passwordControl,
                label: 'Owner Name',

                type: TextInputType.visiblePassword,
                validator: ( value)
                {
                  if(value== null || value.isEmpty)
                  {
                    return 'password must not be empty';
                  }

                  return null;
                },
              ),              SizedBox(height: 16.h,),

              defaultFormField(

                controller: passwordControl,
                label: 'Transfer Date',

                type: TextInputType.visiblePassword,
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

          }, text: 'SEND',background: myColor,radius: 10)

            ])),
      ),
    );
  }
}
