import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutttter/Shared/components/constants.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../Shared/components/components.dart';
import '../Model.Send/Send.dart';
import '../Model.Setting/SettingsOFC.dart';
import '../Model.Transactions/Transfer Summary.dart';
import '../Model.crad/Cardtosomeone.dart';
import 'Drawer.dart';
import '../Model.Transactions/Transactions.dart';
import '../Model.crad/Cards.dart';

class HomeOFC extends StatefulWidget {
  const HomeOFC({Key? key}) : super(key: key);

  @override
  State<HomeOFC> createState() => _HomeOFCState();
}bool isExpanded = false;

int _currentSlide = 0;
int selectedListItem = -1;

class _HomeOFCState extends State<HomeOFC> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: Drawerrr(),
      appBar: AppBar(
        title: Center(child: Container(height:41.h,width:110.w, child:Image(image: AssetImage('assets/images/Frame.png'),))),
        backgroundColor:Colors.white,
        actions: [

          IconButton(onPressed: (){}, icon: Icon(Icons.notification_important_outlined,),iconSize: 26,
          ) ,Padding(padding: EdgeInsets.only(right: 20.w),
            child: InkWell(
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => OFCSetting(),

                    )
                );

              },
              child: CircleAvatar(
                radius: 15.0,
                backgroundImage: NetworkImage(
                  'https://img.freepik.com/free-psd/3d-illustration-person-with-sunglasses_23-2149436188.jpg?w=740&t=st=1688552085~exp=1688552685~hmac=1e6a654a906c3238b9da6c9293a283e8bae1d89212cd70ac32842e5c1c457952',
                ),
                backgroundColor: Colors.transparent, // Optional: Set the background color to transparent
              )

            ),
          ),


        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(text: 'Welcome\n', style: TextStyle(color: myColor, fontSize: 21.sp)),
                    TextSpan(text: 'Mohamed Abdo', style: TextStyle(color: Colors.black, fontSize: 21.sp)),
                  ],
                ),
              ),
              SizedBox(height: 14.h,),
              CardOFC(height: 138.h,child: Column(children: [
                Row(children: [Spacer(),IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_down_outlined),)]),
                Row(children: [
                  Text('Total Balance',style: TextStyle(fontSize: 20.sp,color: myColor,fontWeight: FontWeight.bold),)
                  ,Spacer()
                  ,Text('220311564564',style: TextStyle(fontSize: 14.sp),),
                ]),
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
                SizedBox(height: 8.h,)
                ,
                Row(
                  children: [Container(
                    width: 148.w,
                    height: 1.0.h,
                    color: Colors.red,
                  ),
                    Container(
                      width: 148.w,
                      height: 1.0.h,
                      color: Colors.green,
                    ),
                ]),
              ],)),
              SizedBox(height: 10.h,) ,

              Row(
                children:[

                  ContaineOFC(ontap: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => CardsToSomeOne(),

                        ));
                  },width:100.w,height:100.h,child:Column(children:[SizedBox(height: 25.h,) ,Image(image: AssetImage('assets/images/withnodollar.png'),),
                    SizedBox(height: 10.h,) ,
                    Text('Send',style: TextStyle(color: Colors.white ,fontSize: 14.sp),)])),
                  SizedBox(width: 11.w,) ,


                  ContaineOFC(ontap: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Cards(),
                      ),
                    );

                  },width:100.w,height:100.h,child:Column(children:[SizedBox(height: 25.h,) ,Image(image: AssetImage('assets/images/card.png')),
                    SizedBox(height: 10.h,) ,
                    Text('Cards',style: TextStyle(color: Colors.white ,fontSize: 14.sp),)])),
                  SizedBox(width: 11.w,) ,




                  ContaineOFC(ontap: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Transactions(),
                      ),
                    );



                  },width:100.w,height:100.h,child:Column(children:[SizedBox(height: 25.h,) ,Image(image: AssetImage('assets/images/transaction.png')),
                  SizedBox(height: 10.h,) ,
                  Text('Transactions',style: TextStyle(color: Colors.white ,fontSize: 14.sp),)]) ),
              ]),
              SizedBox(height: 15.h,) ,
              Column(
                children: [
                  CarouselSlider(
                    items: [
                      Image(
                        image: AssetImage('assets/images/adv.png'),
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Image(
                        image: AssetImage('assets/images/adv.png'),
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Image(
                        image: AssetImage('assets/images/adv.png'),
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Image(
                        image: AssetImage('assets/images/adv.png'),
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),

                    ],
                    options: CarouselOptions(
                      height: 160.h,
                      autoPlay: true,
                      autoPlayAnimationDuration: Duration(seconds: 2),
                      reverse: false,
                      initialPage: 0,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      scrollDirection: Axis.horizontal,
                      autoPlayInterval: Duration(seconds: 5),
                      viewportFraction: 1,
                      onPageChanged: (index, _) {
                        setState(() {
                          _currentSlide = index;
                        });
                      },
                    ),
                  ),
                  SizedBox(height: 10), // Add spacing between the CarouselSlider and DotsIndicator
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
                  ),
                ],
              ),
              SizedBox(height: 15.h,) ,

              Text('Recent Transactions',style: TextStyle(fontSize: 20,color: myColor,fontWeight: FontWeight.normal),),
              SizedBox(height: 20.h,) ,
//listview
              Column(
                children:[

                  ListView.separated(
                  shrinkWrap: true,
physics:  NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  separatorBuilder: (BuildContext context, int index) => Divider(),
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: (){
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => TransferSummary(),
                          ),
                        );



                      },
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
                ),
              ]),
              SizedBox(height: 14.h,),
              Text('Currency Exchange',style: TextStyle(color: myColor,fontSize: 20),),
              SizedBox(height: 8.h,),
              Row(children:[ Text('1 US Dollar ',style: TextStyle(fontSize: 14),),
                Text('Equals',style: TextStyle(color: myColor,fontSize: 14),),
              ]),
              SizedBox(height: 12.h,),

              Row(children: [

              ContaineOFC(ontap: (){},height: 69.h,width: 70.w,child:Column(
                mainAxisAlignment: MainAxisAlignment.center,children: [

                Text('31.14',style: TextStyle(fontSize: 18.sp,color: Colors.white),),
                Text('EGP',style: TextStyle(fontSize: 16.sp,color: HexColor('#F1F1F1')),)
              ],))
              ,SizedBox(width: 14.w,),
                ContaineOFC(ontap: (){},height: 69.h,width: 70.w,child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,children: [

                  Text('01.26',style: TextStyle(fontSize: 18.sp,color: Colors.white),),
                  Text('ERO',style: TextStyle(fontSize: 16.sp,color: HexColor('#F1F1F1')),)
                ],))
                ,SizedBox(width: 14.w,),
                ContaineOFC(ontap: (){},height: 69.h,width: 70.w,child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,children: [

                  Text('14.06',style: TextStyle(fontSize: 18.sp,color: Colors.white),),
                  Text('SR',style: TextStyle(fontSize: 16.sp,color: HexColor('#F1F1F1')),)
                ],))
                ,SizedBox(width: 14.w,),ContaineOFC(ontap: (){},height: 69.h,width: 70.w,child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,children: [

                  Text('31.14',style: TextStyle(fontSize: 18.sp,color: Colors.white),),
                  Text('HDK',style: TextStyle(fontSize: 16.sp,color: HexColor('#F1F1F1')),)
                ],))
            ],)




















            ],
          ),
        ),
      ),


      );

  }
}
