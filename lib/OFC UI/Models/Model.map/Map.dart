import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Shared/components/components.dart';
import '../../../Shared/components/constants.dart';
import '../Model.home/HomeOFC.dart';

class map extends StatelessWidget {
  const map({Key? key}) : super(key: key);

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
          'Our Branches & ATMS',
          style: TextStyle(color:myColor, fontSize: 24.sp),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [SizedBox(height:32.h),
            Container(
              width: double.infinity,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Image(
                    image: AssetImage('assets/images/maps.png'),
                    fit: BoxFit.contain,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 21.0, right: 19.0),
                    child: Container(
                      height: 33.0,
                      child: defaultFormField(
                        prefix: Icons.search,
                        controller: passwordControl,
                        label: 'Search',
                        type: TextInputType.number,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Password must not be empty';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 16.0,
                    right: 16.0,
                    child: FloatingActionButton(
                      onPressed: () {},
                      backgroundColor: myColor,
                      child: Icon(Icons.location_on_outlined),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
