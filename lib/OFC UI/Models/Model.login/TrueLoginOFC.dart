import 'package:conditional_builder/conditional_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutttter/OFC%20UI/CUBITOFC/ofcstats.dart';
import 'package:flutttter/OFC%20UI/CUBITOFC/ofcubit.dart';
import 'package:flutttter/Shared/components/components.dart';
import 'package:flutttter/Shared/components/constants.dart';

import '../../../../Graduation project/Compenent/constant.dart';
import '../../../../Graduation project/network/local/cache_helper.dart';
import '../Model.home/HomeOFC.dart';



class OFCLogin extends StatelessWidget {
  var formKey=GlobalKey<FormState>();
  var emailControl=TextEditingController();
  var passwordControl=TextEditingController();
  bool isPassword = true;
  bool save=true;


  @override
  Widget build(BuildContext context) {
        return BlocConsumer<OFCCubit,OFCStates>(listener: (context, state) {

        },builder: (context, state) {


          return  Scaffold(




          body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
          child: Form(
          key: formKey,
          child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
          SizedBox(height: 95,),
          Container(width: double.infinity,
          height: 68,
          child: Center(
          child: Image(image: AssetImage('assets/images/Frame.png'),

          ),
          ) ),
          SizedBox(height: 44,),

          Text(
          'Welcome to',
          style: TextStyle(
          fontSize: 34.0.sp,
          fontWeight: FontWeight.bold,
          color: Colors.black
          ),
          ),
          RichText(
          text: TextSpan(
          children: [
          TextSpan(
          text: 'your ',
          style: TextStyle(
          fontSize: 32.0.sp,
          fontWeight: FontWeight.bold,
          color: Colors.black,
          ),
          ),
          TextSpan(
          text: 'OFC',
          style: TextStyle(
          fontSize: 32.0.sp,
          fontWeight: FontWeight.bold,
          color: myColor, // Set the color to blue
          ),
          ),
          ],
          ),
          ),

          SizedBox(
          height: 15.0.h,
          ),
          Text('Enter Your Username And Password To Access Your Account.',style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold),),

          SizedBox(
          height: 30.0.h,
          ),
          defaultFormField(
          controller: emailControl,
          label: 'Bank Account Number',
          prefix: Icons.email,
          type: TextInputType.emailAddress,
          validator: ( value)
          {
          if(value== null || value.isEmpty)
          {
          return 'Bank Account Number';
          }

          return null;
          },
          ),
          SizedBox(
          height: 15.0.h,
          ),
          defaultFormField(

          controller: passwordControl,
          label: 'Password',
          prefix: Icons.lock,
          suffix: isPassword ? Icons.visibility : Icons.visibility_off,
          isPassword: isPassword,
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
          ),
          SizedBox(
          height: 5.0.h,
          ),
          Row(children: [
          InkWell(
          onTap: (){
            OFCCubit.get(context).SavePassword();
          },
          child: Row(
          children:[ Icon(
            OFCCubit.get(context).save ? Icons.check_box_outline_blank : Icons.check_box,
            color: OFCCubit.get(context).save ? Colors.black45 : myColor,
          ),
            Text(
              'save your password',
              style: TextStyle(
                color: OFCCubit.get(context).save ? Colors.black45 : myColor,
              ),
          ) ]),
          ),

          Spacer(),
          TextButton(onPressed: (){}, child:Text('Forget Password ?',style: TextStyle(color: myColor),))
          ],),


          SizedBox(
          height: 25.0.h,
          ),
          defaultButton(function: (){

            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => HomeOFC(),
              ),
            );



          }, text: 'LOG IN',radius: 15,background: myColor),
          SizedBox(
          height: 1.0.h,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('You don`t have an account?'),TextButton(onPressed: (){}, child: Text("Sign Up",style: TextStyle(color: myColor),))],)

          ],
          ),
          ),
          ),
          ),
          );

        },
        );


  }}
