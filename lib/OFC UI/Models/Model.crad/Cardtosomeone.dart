import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutttter/Shared/components/components.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../Shared/components/constants.dart';
import '../Model.home/HomeOFC.dart';
import '../Model.login/TrueLoginOFC.dart';
import 'Cards2.dart';

class CardsToSomeOne extends StatefulWidget {
  const CardsToSomeOne({Key? key}) : super(key: key);

  @override
  State<CardsToSomeOne> createState() => _CardsToSomeOneState();
}
int _currentSlide = 0;

class _CardsToSomeOneState extends State<CardsToSomeOne> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
          'Your Cards',
          style: TextStyle(color:myColor, fontSize: 24.sp),
        ),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10.h,),
            // Padding(
            //         padding: EdgeInsets.only(left: 20.w),
            //     child: Text("Choose the card you want to send from",style: TextStyle(fontSize: 16),)),
            SizedBox(height: 24.h,),

            CarouselSlider(
              items: [
                Container(
                  height: 160.h,
                  width: double.infinity,
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(12)),color: myColor),
                  child:
                  Padding(padding: REdgeInsets.only(left: 20.w),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,children: [
                          Row(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [Padding(
                                padding: REdgeInsets.only(top: 23.h),
                                child: Container(width: 41.w,
                                  height: 25.h,
                                  child: Image(image: AssetImage('assets/images/ca.png')),),
                              ),
                                Spacer(),
                                Container(width: 118.w,
                                  height: 90 .h,
                                  child: Image(image: AssetImage('assets/images/ca2.png'),fit: BoxFit.fill),),

                              ]),
                          Row(crossAxisAlignment: CrossAxisAlignment.start,
                              children:[
                                Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('**** **** **** 1990',style: TextStyle(color: HexColor('#E0BA33'),fontSize: 14),),
                                      Text('09/23',style: TextStyle(color: HexColor('#E0BA33'),fontSize: 12),),
                                      SizedBox(height: 22.h,),
                                      Text('Mohamed Abdo',style: TextStyle(color: HexColor('#FFFFFF'),fontSize: 14),),

                                    ]),
                                Spacer(),Container(width: 118.w,
                                  height: 90 .h,
                                  child: Image(image: AssetImage('assets/images/ca2.png'),fit: BoxFit.fill),),
                              ]),
                        ]),
                  ),

                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(start:10),
                  child: Column(children: [
                    Container(
                      height:125.h,
                      width: double.infinity,
                      decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(12),topRight: Radius.circular(12)),color: myColor,
                        image: DecorationImage(
                          image: AssetImage('assets/images/line.png'),
                          fit: BoxFit.fill, // Adjust the image to cover the entire container
                        ),                      ),
                      child:
                      Padding(padding: REdgeInsets.only(left: 19.w),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,children: [

                              Padding(
                                padding: REdgeInsets.only(top: 23.h),
                                child: Row(
                                    children:[ Container(width: 31.w,height: 23.h,
                                      child: Image(image: AssetImage('assets/images/chips.png')),),
                                      Container(width: 31.w,height: 30.h,
                                        child: Image(image: AssetImage('assets/images/chips2.png')),),
                                    ]),
                              ),
                              SizedBox(height: 18.h,),
                              Text('2***   ****   ****  **90',style: TextStyle(fontSize: 14,color: HexColor('#E0BA33')),),


                            ]),
                      ),

                    ),
                    Container(height: 60.h,
                      decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12),bottomRight: Radius.circular(12)),color: HexColor('#E0BA33'),

                      ),
                      child: Padding(
                          padding: EdgeInsets.only(left: 32.w,right: 20.w,top: 9),
                          child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [Column(mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [Text('Mohamed Abdo',style: TextStyle(color: myColor,fontSize: 14.sp),),
                                  Text('09/23',style: TextStyle(color: myColor,fontSize: 10.sp),),

                                ],),
                                Spacer(),
                                Padding(    padding: EdgeInsets.only(top: 7.h),

                                  child: Container(width: 41.w,
                                      height: 25 .h,
                                      child: Image(image: AssetImage('assets/images/chips3.png'),)),
                                )])),
                    )]),
                ),
                Padding(
                    padding: EdgeInsetsDirectional.only(start:10),
                    child: Container(
                      height: 160.h,
                      width: double.infinity,
                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(12)),color: myColor),
                      child:
                      Padding(padding: REdgeInsets.only(left: 20.w),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,children: [
                              Row(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [Padding(
                                    padding: REdgeInsets.only(top: 23.h),
                                    child: Container(width: 41.w,
                                      height: 25.h,
                                      child: Image(image: AssetImage('assets/images/ca.png')),),
                                  ),
                                    Spacer(),
                                    Container(width: 118.w,
                                      height: 90 .h,
                                      child: Image(image: AssetImage('assets/images/ca2.png'),fit: BoxFit.fill),),

                                  ]),
                              Row(crossAxisAlignment: CrossAxisAlignment.start,
                                  children:[
                                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('**** **** **** 1990',style: TextStyle(color: HexColor('#E0BA33'),fontSize: 14),),
                                          Text('09/23',style: TextStyle(color: HexColor('#E0BA33'),fontSize: 12),),
                                          SizedBox(height: 22.h,),
                                          Text('Mohamed Abdo',style: TextStyle(color: HexColor('#FFFFFF'),fontSize: 14),),

                                        ]),
                                    Spacer(),Container(width: 118.w,
                                      height: 90 .h,
                                      child: Image(image: AssetImage('assets/images/ca2.png'),fit: BoxFit.fill),),
                                  ]),
                            ]),
                      ),

                    )),
                Padding(
                    padding: EdgeInsetsDirectional.only(start:10),
                    child: Container(
                      height: 160.h,
                      width: double.infinity,
                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(12)),color: myColor),
                      child:
                      Padding(padding: REdgeInsets.only(left: 20.w),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,children: [
                              Row(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [Padding(
                                    padding: REdgeInsets.only(top: 23.h),
                                    child: Container(width: 41.w,
                                      height: 25.h,
                                      child: Image(image: AssetImage('assets/images/ca.png')),),
                                  ),
                                    Spacer(),
                                    Container(width: 118.w,
                                      height: 90 .h,
                                      child: Image(image: AssetImage('assets/images/ca2.png'),fit: BoxFit.fill),),

                                  ]),
                              Row(crossAxisAlignment: CrossAxisAlignment.start,
                                  children:[
                                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('**** **** **** 1990',style: TextStyle(color: HexColor('#E0BA33'),fontSize: 14),),
                                          Text('09/23',style: TextStyle(color: HexColor('#E0BA33'),fontSize: 12),),
                                          SizedBox(height: 22.h,),
                                          Text('Mohamed Abdo',style: TextStyle(color: HexColor('#FFFFFF'),fontSize: 14),),

                                        ]),
                                    Spacer(),Container(width: 118.w,
                                      height: 90 .h,
                                      child: Image(image: AssetImage('assets/images/ca2.png'),fit: BoxFit.fill),),
                                  ]),
                            ]),
                      ),

                    ))


              ],
              options: CarouselOptions(
                height: 185.h,
                autoPlay: true,
                autoPlayAnimationDuration: Duration(seconds: 2),
                reverse: false,
                initialPage: 0,
                autoPlayCurve: Curves.fastOutSlowIn,
                scrollDirection: Axis.horizontal,
                autoPlayInterval: Duration(seconds: 5),
                viewportFraction: .82,

                enableInfiniteScroll: false,  // Disable infinite scroll to show only the available items
                enlargeCenterPage: false, // Zoom in on the initial page

                onPageChanged: (index, _) {
                  setState(() {
                    _currentSlide = index;
                  });
                },
              ),
            ),
            SizedBox(height:8.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                4, // Total number of dots
                    (index) => Container(
                  width: 7.w,
                  height: 7.h,
                  margin: EdgeInsets.symmetric(horizontal:2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentSlide == index ? myColor :HexColor('#8B8B8BBF'),
                  ),
                ),
              ),
            ) , SizedBox(height: 29.h,),
            Padding(        padding: EdgeInsets.only(left: 20.w,right: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Card Type',style: TextStyle(fontSize: 14.sp,color: HexColor("#8B8B8BBF")),),
                  Text('Debit Card',style: TextStyle(fontSize: 14.sp,color: Colors.black),),
                  SizedBox(height: 12.h,),
                  Text('Card Number',style: TextStyle(fontSize: 14.sp,color: HexColor("#8B8B8BBF")),),
                  Text('206065478001',style: TextStyle(fontSize: 14.sp,color:  Colors.black),),
                  SizedBox(height: 12.h,),
                  Text('Card Balance',style: TextStyle(fontSize: 14.sp,color: HexColor("#8B8B8BBF")),),
                  Text('1163.63\$',style: TextStyle(fontSize: 14.sp,color: Colors.black),),
                  SizedBox(height: 135.h,),
                  defaultButton(function: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Cards2(),

                        ));

                  }, text: 'SUBMIT',radius: 10,background: myColor)
                ],),
            ),



          ]),

    );
  }
}
