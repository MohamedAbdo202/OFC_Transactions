import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../Shared/components/constants.dart';
import '../Model.home/HomeOFC.dart';

class TransferList extends StatelessWidget {
  const TransferList({Key? key}) : super(key: key);

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
          'Transfer List',
          style: TextStyle(color:myColor, fontSize: 24.sp),
        ),
      ),
      body: Padding(
        padding: REdgeInsets.only(top: 70.h,left: 20.w,right: 20.w),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start
            ,children: [
          Text('M',style: TextStyle(fontSize: 14.sp,color: HexColor('#8B8B8BBF')),),
          SizedBox(height: 16.h,),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children:[ ListView.separated(
                shrinkWrap: true,
                physics:  NeverScrollableScrollPhysics(),
                itemCount: 1,
                separatorBuilder: (BuildContext context, int index) => Container(width: double.infinity,height:2,color:HexColor('#D9D9D9'),),
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: (){},
                    child: Container(
                      height: 60.0.h,
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.only(top: 5.h,bottom: 5).h,
                        child: Row(
                          children: [

                            Container(
                              width: 51.0.w,
                              height: 51.0.h,
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
                                SizedBox(height: 15.0.h),
                                Row(
                                  children: [

                                    Text('M.Abdo Abdelrazek',style: TextStyle(fontSize: 14.sp),)

                                  ],
                                ),

                              ],
                            ),
                            Spacer(),
                          Icon(Icons.keyboard_control_rounded)
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
                Container(width: double.infinity,height:2,color:HexColor('#D9D9D9'),),
       ListView.separated(
            shrinkWrap: true,
            physics:  NeverScrollableScrollPhysics(),
            itemCount: 1,
            separatorBuilder: (BuildContext context, int index) => Container(width: double.infinity,height:2,color:HexColor('#D9D9D9'),),
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: (){},
                child: Container(
                  height: 60.0.h,
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.only(top: 5.h,bottom: 5).h,
                    child: Row(
                      children: [

                        Container(
                          width: 51.0.w,
                          height: 51.0.h,
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
                            SizedBox(height: 15.0.h),
                            Row(
                              children: [

                                Text('Mohamed Abdelrazek',style: TextStyle(fontSize: 14.sp),)

                              ],
                            ),

                          ],
                        ),
                        Spacer(),
                        Icon(Icons.keyboard_control_rounded)
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
                SizedBox(height: 16.h,),

                Text('O',style: TextStyle(fontSize: 14.sp,color: HexColor('#8B8B8BBF')),),
                SizedBox(height: 16.h,),
                ListView.separated(
                  shrinkWrap: true,
                  physics:  NeverScrollableScrollPhysics(),
                  itemCount: 1,
                  separatorBuilder: (BuildContext context, int index) => Container(width: double.infinity,height:2,color:HexColor('#D9D9D9'),),
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: (){},
                      child: Container(
                        height: 60.0.h,
                        width: double.infinity,
                        child: Padding(
                          padding: EdgeInsets.only(top: 5.h,bottom: 5).h,
                          child: Row(
                            children: [

                              Container(
                                width: 51.0.w,
                                height: 51.0.h,
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
                                  SizedBox(height: 15.0.h),
                                  Row(
                                    children: [

                                      Text('Omar Abdelrazek',style: TextStyle(fontSize: 14.sp),)

                                    ],
                                  ),

                                ],
                              ),
                              Spacer(),
                              Icon(Icons.keyboard_control_rounded)
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),


              ]),


        ]),
      ),
    );
  }
}
