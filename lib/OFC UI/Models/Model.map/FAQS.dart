import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Shared/components/components.dart';
import '../../../Shared/components/constants.dart';
import '../Model.home/HomeOFC.dart';

class Faqs extends StatelessWidget {
  const Faqs({Key? key}) : super(key: key);

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
          'FAQs',
          style: TextStyle(color:myColor, fontSize: 24.sp),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(padding: REdgeInsets.only(top: 20.h,left: 20.w,right: 20.w),
        child: Column(children: [
          defaultFormField(
            height: 40.h,
            prefix: Icons.search,
            controller: passwordControl,
            label: 'Search',
            type: TextInputType.visiblePassword,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Password must not be empty';
              }
              return null;
            },
          ),
          SizedBox(height: 14.h),
          ListView.separated(
            shrinkWrap: true,
            physics:  NeverScrollableScrollPhysics(),
            itemCount: 4,
            separatorBuilder: (BuildContext context, int index) => Divider(),
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: (){},
                child:
                Column(
                  children: [
                    Row(children: [
                      Text('What is the lorem ipsum lmcsla jasbn ?',style: TextStyle(color: myColor,fontSize: 14.sp),)
                      ,Spacer(),
                      Icon(Icons.keyboard_arrow_down_outlined,size: 30)

                    ],),
                    SizedBox(height: 6.h,),
                    Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum pulvinar, enim eu feugiat rhoncus, justo erat consequat justo, quis luctus justo risus non est. Nunc vel ante ac mi hendrerit porttitor. Pellentesque augue mauris, efficitur a ipsum eget, pretium pharetra eros.',style: TextStyle(fontSize: 12.sp),)
                  ],
                )
              );
            },
          ),


        ]),
        ),
      ),

    );
  }
}
