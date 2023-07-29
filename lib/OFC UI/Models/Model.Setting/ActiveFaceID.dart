import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Shared/components/components.dart';
import '../../../Shared/components/constants.dart';
import '../Model.home/HomeOFC.dart';
import 'Secuirty.dart';

class ActiveFaceID extends StatelessWidget {
  const ActiveFaceID({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var passwordControl=TextEditingController();

    return Scaffold(
      appBar: AppBar(
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.start,          children: [
          IconButton(
            onPressed: () {   Navigator.of(context).push(
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
          'ACTIVE FACE ID',
          style: TextStyle(color:myColor, fontSize: 19.sp),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(padding:REdgeInsets.only(top: 32.h,left: 20.w,right: 20.w),child:
        Column(children: [
          Text('To Activate Your Face ID You Have To Enter Your Password First',style: TextStyle(fontSize: 14.sp),),
          SizedBox(height: 16.h,),
          defaultFormField(

            controller: passwordControl,
            label: 'Enter Your Password',

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

          SizedBox(height: 390.h,),
          defaultButton(function: (){}, text: 'SUBMIT',background: myColor,radius: 8)

        ],)),
      ),


    );
  }
}
