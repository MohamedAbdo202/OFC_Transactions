import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutttter/Shared/components/components.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../Shared/components/constants.dart';
import '../Model.home/HomeOFC.dart';
import 'OFC_GOLDEN2.dart';

class OFCGOLDEN extends StatelessWidget {
  const OFCGOLDEN({Key? key}) : super(key: key);

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
          'OFC Golden',
          style: TextStyle(color:myColor, fontSize: 24.sp),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(padding: REdgeInsets.only(left: 20.w,top: 15.h,right: 20.w)
        ,child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.w,right: 20.w),
                child: Container(
                  width: 310.w,
                  height: 200.h,
                  child: Image(image: AssetImage('assets/images/Despoite.png'
                  ),),

                ),
              ),
              SizedBox(height: 32.h,),
              Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum pulvinar, enim eu feugiat rhoncus, justo erat consequat justo, quis luctus justo risus non est. Nunc vel ante ac mi hendrerit porttitor. Pellentesque augue mauris, efficitur a ipsum eget, pretium pharetra eros. Nulla ut urna elit. Fusce tempus sed elit vitae vestibulum. Praesent et orci vitae diam interdum aliquet. Phasellus justo enim, placerat sit amet maximus ac, pulvinar ut velit. Phasellus suscipit elit massa, a consectetur velit sollicitudin at. Donec ornare arcu nec lorem volutpat, ac sagittis erat auctor. Aenean ac ipsum vehicula ipsum efficitur auctor. Nunc sit amet rhoncus arcu, at laoreet mauris. Proin luctus erat ut sem vehicula, id dictum arcu ultrices.',style: TextStyle(fontSize: 14.sp),),
              SizedBox(height: 16.h,),
              Row(
                children: [

                  Text('Duration : ',style: TextStyle(fontSize: 14.sp,color: HexColor('#8B8B8BBF')),),
                  Text('30 Months',style: TextStyle(fontSize:14.sp),),

                ],
              ),
              SizedBox(height: 4.h,),
              Row(
                children: [

                  Text('Return  :  ',style: TextStyle(fontSize: 14.sp,color: HexColor('#8B8B8BBF')),),
                  Text('14%',style: TextStyle(fontSize:14.sp),),
                  SizedBox(height: 32.h,),

                ],
              ),
        SizedBox(height: 32.h,),

      defaultButton(function: (){
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => OFCGOLDEN2(),
          ),
        );



      }, text: 'BUY NOW!',radius: 12,background: myColor)
              ,SizedBox(height: 50.h,),


            ],
        )),
      ),
    );
  }
}
