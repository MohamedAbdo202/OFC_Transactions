import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutttter/OFC%20UI/Models/Model.Setting/Secuirty.dart';
import 'package:flutttter/Shared/components/components.dart';

import '../../../Shared/components/constants.dart';
import '../Model.home/HomeOFC.dart';

class Changepassword extends StatelessWidget {
  const Changepassword({Key? key}) : super(key: key);

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
                builder: (context) => Secuirty(),
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
          'CHANGE YOUR PASSWORD',
          style: TextStyle(color:myColor, fontSize: 19.sp),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(padding:REdgeInsets.only(top: 46.h,left: 20.w,right: 20.w),child:
        Column(children: [
          defaultFormField(

            controller: passwordControl,
            label: 'Enter Your Old Password',

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
          SizedBox(height: 16.h,),
          defaultFormField(

            controller: passwordControl,
            label: 'Enter Your New Password',

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
          SizedBox(height: 16.h,),
          defaultFormField(

            controller: passwordControl,
            label: 'Repeat Your Old Password',

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
          SizedBox(height: 310.h,),
          defaultButton(function: (){}, text: 'SUBMIT',background: myColor,radius: 8)

        ],)),
      ),
    );
  }
}
