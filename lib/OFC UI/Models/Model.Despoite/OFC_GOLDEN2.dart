import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutttter/Shared/components/components.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../Shared/components/constants.dart';
import '../Model.crad/Card3.dart';
import '../Model.home/HomeOFC.dart';
class OFCGOLDEN2 extends StatelessWidget {
  const OFCGOLDEN2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var passwordControl=TextEditingController();

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
        child: Padding(padding: REdgeInsets.only(left: 20.w,top: 5.h,right: 20.w)
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
                Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum pulvinar, enim eu feugiat rhoncus, justo erat consequat justo, quis luctus justo risus non est. Nunc vel ante ac mi hendrerit porttitor. Pellentesque augue mauris, efficitur a ipsum eget, pretium pharetra eros.',style: TextStyle(fontSize: 14.sp),),
                SizedBox(height: 16.h,),
                Row(
                  children: [

                    Text('Your Balance : ',style: TextStyle(fontSize: 14.sp,color: HexColor('#8B8B8BBF')),),
                    Text('1562.16 \$',style: TextStyle(fontSize:14.sp),),

                  ],
                ),
                SizedBox(height: 16.h,),
                defaultFormField(

                  controller: passwordControl,
                  label: 'Amount',

                  type: TextInputType.number,
                  validator: ( value)
                  {
                    if(value== null || value.isEmpty)
                    {
                      return 'password must not be empty';
                    }

                    return null;
                  },
                ),

                SizedBox(height: 130.h,),

                defaultButton(function: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Card3(),
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
