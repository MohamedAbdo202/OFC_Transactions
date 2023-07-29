import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutttter/Shared/components/components.dart';
import 'package:flutttter/Shared/components/constants.dart';
import 'package:flutttter/modules/login/Login.dart';
import 'package:hexcolor/hexcolor.dart';

import 'Register.dart';
import 'TrueLoginOFC.dart';

class OfcBeforeLogin extends StatelessWidget {
  const OfcBeforeLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 265.h,
            child: Image(image: AssetImage('assets/images/FOURTH.png')),
          ),
          Expanded(
            child: Container(
              width: double.infinity,

              decoration: BoxDecoration(borderRadius: BorderRadius.vertical(top:
                  Radius.circular(20)

              ),                                   color: Colors.lightBlue.shade900, // Replace with the modified color value



              ),
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment:  CrossAxisAlignment.start,


                  children: [
                    SizedBox(height: 15,),
                      Center(
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.all(
                            Radius.circular(20)

                          ),                        color: Color(0xFFF1F1F1),


                          ),

                          width: 134,
                        height: 8
                          ,),
                      ),
                SizedBox(height:26,),

                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Welcome to ',
                        style: TextStyle(
                          color: Colors.white, // Set the color to yellow
                          fontSize: 34.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: 'OFC',
                        style: TextStyle(
                          color: HexColor('#E0BA33'), // Set the color to blue
                          fontSize: 34.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),                  ],
                ),
              ),
                    SizedBox(height: 13,),
                    Text("If You Already Have An Account In OFC   "
                        "                    Application",
                      style:
                    TextStyle(height: 1.5,
                        fontSize: 16,color: Colors.white

                    ),),
                    SizedBox(height: 50,),
                    Padding(padding: EdgeInsets.only(right: 20),
                      child: Column(
                        children: [
                          defaultButton22(
                            function: (){
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => OFCLogin(),
                                ),
                              );


                            }, text: 'LOG IN',
                        background: Colors.white,
                        radius: 15
                        ,),
                          SizedBox(height: 20,),
                          Row(children: [myDivider(),
                            Text('OR',
                            style: TextStyle(color: Colors.white))
                            ,myDivider()]),
                          SizedBox(height: 20,),

                          defaultButton(function: (){
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => RegisterOFC(),
                              ),
                            );

                          }, text: 'SIGN UP',
                          background: Colors.lightBlue.shade900,
                          radius: 15),
                          SizedBox(height:50 ,),
                          Text("contact us 07775000",style: TextStyle(color: Colors.white,fontSize: 12)),

                      ]),
                    )


                  ] ),
          )

            ))]
    ,
      ),
    );
  }
}
