import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutttter/Shared/components/components.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../Shared/components/constants.dart';
import '../Model.home/HomeOFC.dart';

class PointSystem extends StatelessWidget {
  const PointSystem({Key? key}) : super(key: key);

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
          'Point System',
          style: TextStyle(color:myColor, fontSize: 24.sp),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(padding: REdgeInsets.only(top: 32.h,left: 20.w,right: 20.w),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          CardOFC(height: 103.h,
              child: Container(height: 103.h,
            decoration: BoxDecoration(    image: DecorationImage(
              image: AssetImage('assets/images/POINTSYS.png'),
            alignment: AlignmentDirectional.bottomCenter// Adjust the image to cover the entire container
            ),                  ),

            child: Column(
mainAxisAlignment: MainAxisAlignment.start,
              children:[
                SizedBox(height: 22.h,),
                Row(
                  children: [

                Text('Your Point',style: TextStyle(fontSize: 14.sp),),
                Spacer(),
                Column(children:[ Text('14,259',style: TextStyle(fontSize: 34.sp,color: myColor,fontWeight: FontWeight.bold),),
                  Row(children: [Text('Equals'),Text('22.69\$',style: TextStyle(color: myColor),)],
                  )
                ]),


              ]),

            ]),

          )
          ),
          SizedBox(height: 32.h,),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: Colors.grey.shade300, width: 2),
                ),
                child: Container(
                  height: 130.h,
                  width: 142.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage('assets/images/ourpartner.png'),
                      alignment: AlignmentDirectional.bottomCenter
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 57.h),
                      Text('Our Partner', style: TextStyle(color: myColor,fontSize: 14.sp)),
                    ],
                  ),
                ),
              )

              ,SizedBox(width: 20.w,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: Colors.grey.shade300, width: 2),
                ),
                child: Container(
                  height: 130.h,
                  width: 142.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage('assets/images/gold.png'),
                        alignment: AlignmentDirectional.bottomCenter
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 57.h),
                      Text('Redeem', style: TextStyle(color: myColor,fontSize: 14.sp)),
                    ],
                  ),
                ),
              )

            ],
          ),

          SizedBox(height: 30.h,),
            Text('Recent Transactions',style: TextStyle(fontSize: 20,color: myColor,fontWeight: FontWeight.normal),),
            SizedBox(height: 20.h,) ,
//listview
            Column(
              children:[ ListView.separated(
                shrinkWrap: true,
                physics:  NeverScrollableScrollPhysics(),
                itemCount: 5,
                separatorBuilder: (BuildContext context, int index) => Divider(),
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: (){},
                    child: Container(
                      height: 51.0,
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.only(top: 0),
                        child: Row(
                          children: [
                            Container(
                              width: 51.0,
                              height: 51.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: ClipOval(
                                child: Image.network(
                                  'https://img.freepik.com/free-psd/3d-illustration-person-with-sunglasses_23-2149436188.jpg?w=740&t=st=1688552085~exp=1688552685~hmac=1e6a654a906c3238b9da6c9293a283e8bae1d89212cd70ac32842e5c1c457952',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(width: 15.0),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 5.0),
                                Row(
                                  children: [
                                    Text(
                                      'Amazon Transaction',
                                      style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14.0),
                                    ),
                                    SizedBox(width: 8.0),
                                    Container(
                                      width: 18.0,
                                      height: 20.0,
                                      child: Image.asset('assets/images/cardsend.png'),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 4.0),
                                Text(
                                  '5 July, 2023',
                                  style: TextStyle(fontSize: 12.0, color: Color(0xFF8B8B8BBF)),
                                ),
                              ],
                            ),
                            Spacer(),
                            Text(
                              '+ 23.69 \$',
                              style: TextStyle(fontSize: 16.0, color:HexColor('#33CE30')),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),])

        ],)),
      ),

    );
  }
}
