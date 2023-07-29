import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutttter/Shared/components/components.dart';
import 'package:flutttter/Shared/components/constants.dart';
import 'package:hexcolor/hexcolor.dart';

import '../Model.home/HomeOFC.dart';
import '../Model.login/TrueLoginOFC.dart';

class Transactions extends StatelessWidget {
  const Transactions({Key? key}) : super(key: key);

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
          'Transactions',
          style: TextStyle(color:myColor, fontSize: 24.sp),
        ),
      ),
body: Padding(padding: EdgeInsets.only(left: 20.w,right: 20.w),
  child: 
  Column(crossAxisAlignment: CrossAxisAlignment.start,

      children: [

    CardOFC(height: 135.h, child: Column(children: [
      SizedBox(height: 18.h,),
        Row(children: [
          Text('Total Balance',style: TextStyle(fontSize: 20.sp,color: myColor,fontWeight: FontWeight.bold),)
          ,Spacer()
          ,Text('220311564564',style: TextStyle(fontSize: 14.sp),),
        ]),
      SizedBox(height: 19.4.h,),

      Row(children: [
          RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(text: '13,156.17 ',style: TextStyle(fontSize: 28.sp,color: Colors.black,fontWeight: FontWeight.bold)),
                TextSpan(text: '\$', style: TextStyle(color: Colors.yellow.shade600, fontSize: 28.sp,fontWeight: FontWeight.bold)),
              ],
            ),
          ),

          Spacer()
          ,Column(
            crossAxisAlignment: CrossAxisAlignment.start,children: [

            Row(
                children:[ CircleAvatar(backgroundColor: Colors.green,radius: 4,
                ),SizedBox(width: 3.w,),
                  Text('income',style: TextStyle(fontSize: 12.sp),)
                ]
            ),
            Row(
                children:[ CircleAvatar(backgroundColor: Colors.red,radius: 4,
                ),SizedBox(width: 3.w,),
                  Text('Outcome',style: TextStyle(fontSize: 12.sp),)
                ]
            ),
          ],
          )

        ]),
        SizedBox(height: 10.h,)
        ,
        Row(
            children: [Container(
              width: 156.w,
              height: 3.0.h,
              color: Colors.red,
            ),
              Container(
                width: 140.w,
                height: 3.0.h,
                color: Colors.green,
              ),
            ]),
      SizedBox(height: 5.h,),

      Row(children: [    Text('120.74\$',style: TextStyle(fontSize: 14),)  ,Spacer(), Text('116.66 \$',style: TextStyle(fontSize: 14),)      ],)
      ],))

    ,      SizedBox(height: 34.h,),

        Row(children:[ Text('Recent Transactions',style: TextStyle(fontSize: 20,color: myColor,fontWeight: FontWeight.normal),
        ),
        Spacer(),
          InkWell(onTap: (){},
            child: Container(
              width: 20.w,
              height: 20.h,
              child: Image(image: AssetImage('assets/images/documentfilter.png'), fit: BoxFit.fill),
            ),
          ),
        ]),
    SizedBox(height: 20.h,) ,
        Column(
        children:[ ListView.separated(
          shrinkWrap: true,
          physics:  NeverScrollableScrollPhysics(),
          itemCount: 3,
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
        ),
        ]),

      Container(width: double.infinity,height:2,color:HexColor('#D9D9D9'),),

        Column(
            children:[ ListView.separated(
              shrinkWrap: true,
              physics:  NeverScrollableScrollPhysics(),
              itemCount: 3,
              separatorBuilder: (BuildContext context, int index) => Container(width: double.infinity,height:2,color:HexColor('#D9D9D9'),),
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: (){},
                  child: Container(
                    height: 60.0,
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.only(top: 5.h,bottom: 5.h),
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
                            '- 23.69 \$',
                            style: TextStyle(fontSize: 16.0, color:HexColor('##DA3636')),
                          ),
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
