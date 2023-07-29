import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../Shared/components/constants.dart';
import '../Model.home/HomeOFC.dart';
import 'OFC_Golden.dart';

class Despoite extends StatelessWidget {
  const Despoite({Key? key}) : super(key: key);

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
          'Deposits',
          style: TextStyle(color:myColor, fontSize: 24.sp),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:REdgeInsets.only(left: 20.w,right: 20.w
          ),
          child: Column(children: [
            SizedBox(height: 32.h,),

            ListView.separated(
              shrinkWrap: true,
              physics:  NeverScrollableScrollPhysics(),
              itemCount: 10,
              separatorBuilder: (BuildContext context, int index) => Container(width: double.infinity,height:2,color:HexColor('#D9D9D9'),),
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: (){

                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => OFCGOLDEN(),
                      ),
                    );

                  },
                  child: Container(
                    height: 78.0.h,
                    width: double.infinity,
                    child: Row(
                      children: [

                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 8.h,),

                            Text('OFC Golden',style: TextStyle(fontSize: 14.sp),),
                            SizedBox(height: 4.h,),

                            Row(
                              children: [

                                Text('Duration : ',style: TextStyle(fontSize: 14.sp,color: HexColor('#8B8B8BBF')),),
                                Text('30 Months',style: TextStyle(fontSize:14.sp),),

                              ],
                            ),
                            SizedBox(height: 2.h,),
                            Row(
                              children: [

                                Text('Return  :  ',style: TextStyle(fontSize: 14.sp,color: HexColor('#8B8B8BBF')),),
                                Text('14%',style: TextStyle(fontSize:14.sp),),

                              ],
                            ),

                          ],
                        ),

                      ],
                    ),
                  ),
                );
              },
            ),
          ],

          ),
        ),
      ),

    );
  }
}
