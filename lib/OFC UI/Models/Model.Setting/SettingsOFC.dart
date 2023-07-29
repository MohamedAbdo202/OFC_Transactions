import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutttter/OFC%20UI/Models/Model.home/HomeOFC.dart';
import 'package:flutttter/Shared/components/constants.dart';
import 'package:hexcolor/hexcolor.dart';

class OFCSetting extends StatelessWidget {
  const OFCSetting({Key? key}) : super(key: key);

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
        'Profile',
        style: TextStyle(color: Colors.white, fontSize: 24.sp),
          ),
      ),



    body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 100.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                  ),
                  color: myColor,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(padding:REdgeInsets.only(top: 35.h)  ,
                  child: Container(
                    width: 120.w,
                    height: 120.h,
                    child: CircleAvatar(
                      radius: 2,
                      backgroundImage: NetworkImage(
                        'https://img.freepik.com/free-psd/3d-illustration-person-with-sunglasses_23-2149436188.jpg?w=740&t=st=1688552085~exp=1688552685~hmac=1e6a654a906c3238b9da6c9293a283e8bae1d89212cd70ac32842e5c1c457952',
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h,),
          Center(child: Text('Mohamed Abdo', style: TextStyle(fontSize: 20))),
          SizedBox(height: 32.h,),
          Padding(padding: REdgeInsets.only(left: 20.w),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,

                children: [
              Text('Name',style: TextStyle(fontSize: 14.sp,color: HexColor("#8B8B8BBF")),),
              Text('Mohamed Abdo',style: TextStyle(fontSize: 14.sp,color: Colors.black),)
              , SizedBox(height: 12.h,),
              Text('Account Number',style: TextStyle(fontSize: 14.sp,color: HexColor("#8B8B8BBF")),),
              Text('206065478001',style: TextStyle(fontSize: 14.sp,color: Colors.black),),
              SizedBox(height: 12.h,),
              Text('IBAN code',style: TextStyle(fontSize: 14.sp,color: HexColor("#8B8B8BBF")),),
              Text('EGY23849472311397418347',style: TextStyle(fontSize: 14.sp,color: Colors.black),),
              SizedBox(height: 12.h,),
              Text('Swift Code',style: TextStyle(fontSize: 14.sp,color: HexColor("#8B8B8BBF")),),
              Text('OFCBANK-XX5X',style: TextStyle(fontSize: 14.sp,color: Colors.black),),
              SizedBox(height: 12.h,),
              Text('Phone Number',style: TextStyle(fontSize: 14.sp,color: HexColor("#8B8B8BBF")),),
              Text('201569877456',style: TextStyle(fontSize: 14.sp,color: Colors.black),),
              SizedBox(height: 12.h,),
              Text('Address',style: TextStyle(fontSize: 14.sp,color: HexColor("#8B8B8BBF")),),
              Text('15 kalp st. near Smouha',style: TextStyle(fontSize: 14.sp,color: Colors.black),),


            ]),
          ),

        ],
      )

    );
  }
}
