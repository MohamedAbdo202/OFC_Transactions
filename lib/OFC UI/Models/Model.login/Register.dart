import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutttter/Graduation%20project/screens/myprofile.dart';
import 'package:flutttter/Shared/components/components.dart';
import 'package:flutttter/Shared/components/constants.dart';
import 'package:flutttter/modules/login/Login.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import 'TrueLoginOFC.dart';

class RegisterOFC extends StatelessWidget {
  const RegisterOFC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var passwordControl=TextEditingController();
    void _handlePhoneNumberChange(PhoneNumber value) {
      // Handle the phone number change
      // This function will be called whenever the input changes
      print('Phone number changed: ${value.phoneNumber}');
    }
    return Scaffold(

      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsetsDirectional.only(start: 20.w
        ,end: 20.w
            ),child: Column(

          children: [

            Padding(  padding: EdgeInsetsDirectional.only(start: 80.w
              ,end: 80.w,),
              child: Container(width: 175.w,height: 70.h,
              child: Image(image: AssetImage('assets/images/1241.png')),),
            ),
            SizedBox(height: 48.h,),
            Row(children: [Text('Welcome To',style: TextStyle(fontSize: 34.sp,fontWeight: FontWeight.bold),),Text(' OFC',style: TextStyle(fontSize: 34.sp,color: myColor,fontWeight: FontWeight.bold),)],),
            SizedBox(height: 16.h,),
            Text('Enter Your Personal Data And Account Number To Create An Account ON OFC',style: TextStyle(fontSize: 16.sp),),
            SizedBox(height: 32.h,),
            defaultFormField(controller: passwordControl, type: TextInputType.visiblePassword,label: 'Name'),
            SizedBox(height: 16.h,),

            defaultFormField(controller: passwordControl, type: TextInputType.visiblePassword, label:'Bank Account Number',),
            SizedBox(height: 16.h,),

            defaultFormField(controller: passwordControl, type: TextInputType.visiblePassword, label:'Password',),
            SizedBox(height: 16.h,),

            Container(
              width: double.infinity,
               height:
                  45.h,
              decoration:BoxDecoration(border:Border.all(color: Colors.black54), borderRadius: BorderRadius.all(Radius.circular(8))   ,         color: HexColor('#F1F1F1'),
              ),
              child:
              Padding(
                padding: REdgeInsets.only(left: 10.w,),
                child: InternationalPhoneNumberInput(
selectorTextStyle: TextStyle(fontSize: 13.sp),
spaceBetweenSelectorAndTextField: 0,
                onInputChanged: _handlePhoneNumberChange,
                textAlign: TextAlign.start,
                initialValue: PhoneNumber(isoCode: 'EG'),
                  ignoreBlank: false,
                  autoValidateMode: AutovalidateMode.disabled,

                  selectorConfig: SelectorConfig(
                  selectorType: PhoneInputSelectorType.BOTTOM_SHEET,

                ),
                  ),
              ),
            ),
            SizedBox(height: 32.h,),
            defaultButton(function: (){}, text:'SIGN UP',background: myColor,radius: 8),
            SizedBox(height: 5.h,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('You already have an account?',style: TextStyle(fontSize: 12.sp)),TextButton(onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => OFCLogin(),
                  ),
                );

              }, child: Text('Log In',style:TextStyle(color: myColor,fontSize: 12.sp),))],)


          ],

        )),
      ),
    );
  }
}
