import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutttter/OFC%20UI/Models/Model.Despoite/Despoite.dart';
import 'package:flutttter/OFC%20UI/Models/Model.Transactions/Transactions.dart';
import 'package:flutttter/OFC%20UI/Models/Model.Transactions/TransferList.dart';
import 'package:flutttter/OFC%20UI/Models/Model.home/HomeOFC.dart';
import 'package:flutttter/OFC%20UI/Models/Model.map/Contactus.dart';
import 'package:flutttter/OFC%20UI/Models/Model.map/Map.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../Shared/components/constants.dart';
import '../Model.PointSystem/Pointsystem.dart';
import '../Model.Send/Send.dart';
import '../Model.Setting/Secuirty.dart';
import '../Model.Setting/SettingsOFC.dart';
import '../Model.crad/Cards.dart';
import '../Model.crad/Cards2.dart';
import '../Model.crad/Cardtosomeone.dart';
import '../Model.map/FAQS.dart';

class Drawerrr extends StatefulWidget {
  const Drawerrr({Key? key}) : super(key: key);

  @override
  _DrawerrrState createState() => _DrawerrrState();
}

class _DrawerrrState extends State<Drawerrr> {
  int selectedTileIndex = 0; // Initially no tile is selected

  @override
  Widget build(BuildContext context) {
    return Drawer(width: 256.w
      ,
        backgroundColor: myColor,
        child: ListView(
          children: [
            DrawerHeader(
              child: Container(
                width: 114.w,
                height: 47.h,
                child: Image(image: AssetImage('assets/images/logo.png')),
              ),
            ),
            buildListTile(
              index: 0,
              title: 'Home Page',
              imagePath: 'assets/images/home4.png',
              onTap: () {Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => HomeOFC(),

                  )
              );
                },
            ),
            buildListTile(
              index: 1,
              title: 'Transactions',
              imagePath: 'assets/images/transaction.png',
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Transactions(),

                    )
                );
                // Action for feature 1
              },
            ),
            buildListTile(
              index: 2,
              title: 'Cards',
              imagePath: 'assets/images/cardmix.png',
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Cards(),

                    )
                );              },
            ),

            // Add more ListTiles for features 3-9
            buildListTile(
              child:  Padding(padding: REdgeInsets.only(top:8.h,left: 30.w),

                child: Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[ InkWell(onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Send(),

                          ));

                    },child: Text('To Some One',style: TextStyle(color: Colors.white,fontSize: 12.sp),)),
                      SizedBox(height: 8.h,),
                      InkWell(onTap: (){


                        Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => CardsToSomeOne(),

                            )
                        );

                      } ,child: Text('To My Self',style: TextStyle(color: Colors.white,fontSize: 12.sp),)
    ),
                      SizedBox(height: 8.h,),
    InkWell(onTap: (){

      Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => TransferList(),

          )
      );

    } ,child:Text('Transfer List',style: TextStyle(color: Colors.white,fontSize: 12.sp),)),
                      SizedBox(height: 3.h,),
                  ]),
                ),
              ),
              iconData: Icons.arrow_forward_ios_outlined,
              index: 3,
              title: 'Transfers',
              imagePath: 'assets/images/drawer4.png',
              onTap: () {
                // Action for feature 2
              },
            ),
            buildListTile(
              iconData: Icons.arrow_forward_ios_outlined,
              child:  Padding(padding: REdgeInsets.only(top:8.h,left: 30.w),

                child: Container(
                  width: double.infinity,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[ InkWell(onTap: (){

                        Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => OFCSetting(),

                            ));

                      },child: Text('Profile',style: TextStyle(color: Colors.white,fontSize: 12.sp),)),
                        SizedBox(height: 8.h,),
                        InkWell(onTap: (){
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Secuirty(),

                              ));


                        } ,child: Text('Security & Sign In',style: TextStyle(color: Colors.white,fontSize: 12.sp),)
                        ),
                        SizedBox(height: 5.h,),
                      ]),
                ),
              ),

              index: 4,
              title: 'Settings',
              imagePath: 'assets/images/setting.png',
              onTap: () {
                // Action for feature 2
              },

            ),
            buildListTile(
              iconData: Icons.arrow_forward_ios_outlined,
              child:  Padding(padding: REdgeInsets.only(top:8.h,left: 30.w),

                child: Container(
                  width: double.infinity,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[ InkWell(onTap: (){

                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => map(),
                          ),
                        );


                      },child: Text('Our branches & ATMs',style: TextStyle(color: Colors.white,fontSize: 12.sp),)),
                        SizedBox(height: 8.h,),
                        InkWell(onTap: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Contacus(),
                            ),
                          );


                        } ,child: Text('Contact Us',style: TextStyle(color: Colors.white,fontSize: 12.sp),)
                        ),
                        SizedBox(height: 5.h,),
                      ]),
                ),
              ),

              index: 5,
              title: 'Contact Us',
              imagePath: 'assets/images/call.png',
              onTap: () {
                // Action for feature 2
              },

            ),
            buildListTile(
              index: 6,
              title: 'Despite',
              imagePath: 'assets/images/dollar.png',
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Despoite(),
                  ),
                );              },
            ),
            buildListTile(
              child:  Padding(padding: REdgeInsets.only(top:8.h,left: 30.w),

                child: Container(
                  width: double.infinity,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[ InkWell(onTap: (){

                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Faqs(),
                          ),
                        );


                      },child: Text('FAQs',style: TextStyle(color: Colors.white,fontSize: 12.sp),)),
                        SizedBox(height: 8.h,),
                        InkWell(onTap: (){


                        } ,child: Text('policy & privacy',style: TextStyle(color: Colors.white,fontSize: 12.sp),)
                        ),
                        SizedBox(height: 8.h,),
                        InkWell(onTap: (){} ,child:Text('terms & donditions',style: TextStyle(color: Colors.white,fontSize: 12.sp),)),
                        SizedBox(height: 9.h,),
                      ]),
                ),
              ),
              iconData: Icons.arrow_forward_ios_outlined,
              index: 7,
              title: 'Help',
              imagePath: 'assets/images/infocircle.png',
              onTap: () {
                // Action for feature 2
              },
            ),
            buildListTile(
              index: 8,
              title: 'Point System',
              imagePath: 'assets/images/gift.png',
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => PointSystem(),
                  ),
                );
              },
            ),

          ],
        ),
      );

  }
  Widget buildListTile({
    IconData? iconData,
    required int index,
    required String title,
    required String imagePath,
    required void Function() onTap,
    Widget? child// New parameter for selected image

  }) {
    bool isSelected = index == selectedTileIndex;

    return Container(
      decoration: BoxDecoration( borderRadius: BorderRadius.all(Radius.circular(11),)  ,    color: isSelected ? Colors.white : myColor,
      ),
      child: Column(
        children: [
          Theme(
            data: Theme.of(context).copyWith(
              dividerColor: myColor,
              // Set the desired separator line color
            ),
            child: ExpansionTile(
              tilePadding: EdgeInsets.only(left: 12.w),
              title: Container(
                width: double.infinity,
                height: 20.h,
                child: Row(
                  children: [
                    SizedBox(width: 2.w),
                    Container(
                      width: 20.w,
                      height: 20.h,
                      child: Image( image: AssetImage(
                         imagePath,
                      ),fit: BoxFit.fill,color: isSelected ? myColor : Colors.white,),
                    ),
                    SizedBox(width: 24.w),
                    Text(
                      title,
                      style: TextStyle(
                        color: isSelected ? myColor : Colors.white,
                        fontSize: 14.sp,
                      ),
                    ),
                    Spacer(),
                    if (iconData != null)
                      Icon(
                        isSelected ? Icons.keyboard_arrow_down_sharp : iconData,
                        color: isSelected ? myColor : Colors.white,
                        size: isSelected ? 32 : 20,
                      ),
                  ],
                ),
              ),
              trailing: SizedBox.shrink(),
              children: [
                if (iconData != null && isSelected)
                  Container(
                    color: myColor,
                    child:child
                  ),
              ],
              onExpansionChanged: (expanded) {

                setState(() {
                  if (expanded) {
                    onTap();
                    selectedTileIndex = index;
                  } else {
                    selectedTileIndex = index;
                  }
                });
              },
            ),
          ),
        ],
      ),
    );
  }




}
