import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Shared/components/components.dart';
import '../../../Shared/components/constants.dart';
import '../Model.Transactions/Transfer Summary.dart';

class Card3 extends StatelessWidget {
  const Card3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var passwordControl=TextEditingController();

    return  Scaffold(
      appBar:AppBar(backgroundColor: Colors.white),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.only(right: 20.w,left: 20.w
        ),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment:MainAxisAlignment.start ,children: [

            Center(
              child: Container(

                height:58.h ,
                width: 149.w,
                child:Image(image: AssetImage('assets/images/Frame.png'),
              )),

            ),
            SizedBox(height: 32.h,),
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(text: 'Enter Verification \n', style: TextStyle(color: Colors.black, fontSize: 34.sp)),
                  TextSpan(text: 'Code', style: TextStyle(color: myColor, fontSize: 34.sp)),
                ],
              ),
            ),
            SizedBox(height: 16.h,),
            Text('Enter Code That We Have Sent To Your Phone Number +20124797346',style: TextStyle(fontSize: 16.sp),),
            SizedBox(height: 32.h,),

            Row(children: [

              defaultFormField(
                width: 68.w,
                height: 53.h,
                controller: passwordControl,

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
              SizedBox(width: 12.w,),
              defaultFormField(
                width: 72.w,
                height: 53.h,
                controller: passwordControl,

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
              SizedBox(width: 12.w,),
              defaultFormField(
                width: 72.w,
                height: 53.h,
                controller: passwordControl,

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
              SizedBox(width: 12.w,),
              defaultFormField(
                width: 72.w,
                height: 53.h,
                controller: passwordControl,

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

            ],),
            SizedBox(height: 32.h,),
            defaultButton(function: (){
              Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => TransferSummary(),

                  )
              );

            }, text: 'SUBMIT',background: myColor,radius: 10),
            SizedBox(height: 8.h,),
            Center(child: TextButton(onPressed: (){}, child: Container(
              width: 77.w, // Set the width of the container
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Resend Code',
                      style: TextStyle(color: myColor, fontSize: 12.sp),
                    ),
                    WidgetSpan(
                      child: Container(
                        height: 1.5,
                        color: myColor, // Set the line color
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ))
            
            



          ]),
        ),
      ),

    );
  }
}
