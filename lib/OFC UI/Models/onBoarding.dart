import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../Shared/components/constants.dart';
import 'Model.login/LoginOFC.dart';

class OnBoardingModel {
  final String image;
  final String title;
  final String body;
  OnBoardingModel({
    required this.image,
    required this.title,
    required this.body,
  });
}

class OnBoardingofc extends StatefulWidget {
  const OnBoardingofc({Key? key}) : super(key: key);

  @override
  State<OnBoardingofc> createState() => _OnBoardingofcState();
}

var boardController = PageController();

List<OnBoardingModel> boardingList = [
  OnBoardingModel(
    image: 'assets/images/first.png',
    title: 'Welcome to OFC',
    body:
    'The Smart And Secure Way To Manage Your Money.With Bank App, You Can Check Your Balance, Pay Bills, Transfer Funds, And More. All From Your Phone or Tablet.',
  ),
  OnBoardingModel(
    image: 'assets/images/second.png',
    body: 'You can set budgets, track spending, get personalized insights, and earn rewards with BankApp. Whether you want to save for a rainy day',

    title: 'OFC is your personal financial assistant',
  ),
  OnBoardingModel(
    image: 'assets/images/third.png',
    title: 'Banking at  your fingertips',
    body: 'OFC lets you customize your dashboard, view your transactions in real time, and chat with customer support 24/7. OFC is the ultimate banking app for you.',
  ),
];

bool isLast = false;

class _OnBoardingofcState extends State<OnBoardingofc> {
  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.blue.withOpacity(0.5),
            BlendMode.lighten,
          ),
          image: NetworkImage(
            'https://img.freepik.com/free-photo/blue-stationery-white-background_23-2147710373.jpg?w=740&t=st=1678995599~exp=1678996199~hmac=41fb76b7dad3934834ea31a3b5cf074496a8732aac72804ed6c65b8b1e5cc4b8',
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 20,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: Scaffold(

        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: PageView.builder(
                  itemBuilder: (context, index) =>
                      buildBoardingItem(boardingList[index]),
                  controller: boardController,
                  onPageChanged: (int index) {
                    if (index == boardingList.length - 1) {
                      setState(() {
                        isLast = true;
                      });
                    } else {
                      setState(() {
                        isLast = false;
                      });
                    }
                  },
                  physics: BouncingScrollPhysics(),
                  itemCount: boardingList.length,
                ),
              ),
              SizedBox(height: 25.h),
              Padding(padding: EdgeInsets.only(bottom: 30.h),
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => OfcBeforeLogin(),
                          ),
                        );
                      },
                      child: Text(
                        'SKIP',
                        style: TextStyle(
                          color: Colors.grey.shade500,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 80.w,
                    ),
                    SmoothPageIndicator(
                      controller: boardController,
                      count: boardingList.length,
                      effect: ExpandingDotsEffect(
                        activeDotColor: myColor,
                        dotColor: Colors.grey,
                        dotHeight: 10,
                        expansionFactor: 2,
                        dotWidth: 10,
                        spacing: 5,
                      ),
                    ),
                    Spacer(),
                    FloatingActionButton(
                      backgroundColor: myColor,
                      onPressed: () {
                        if (isLast) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => OfcBeforeLogin(),
                            ),
                          );
                        } else {
                          boardController.nextPage(
                            duration: Duration(milliseconds: 750),
                            curve: Curves.fastLinearToSlowEaseIn,
                          );
                        }
                      },
                      child: Icon(Icons.arrow_forward_ios),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildBoardingItem(OnBoardingModel model) {
  final modifiedTitle = model.title.replaceAll('OFC', 'OFC').replaceAll('fingertips', 'fingertips');
  final modifiedbody = model.body.replaceAll('OFC', 'OFC');

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Expanded(
        child: Center(
          child: Image(
            image: AssetImage('${model.image}'),
          ),
        ),
      ),
      SizedBox(
        height: 30.h,
      ),
      Text.rich(
        TextSpan(
          children: modifiedTitle
              .split(' ')
              .map(
                (word) =>
                TextSpan(
                  text: word == 'OFC' || word == 'finger tips' ? '$word ' : '$word ',

                  style: TextStyle(
                    fontSize: 30.sp,
                    color: word == 'OFC' ? myColor : word == 'fingertips' ? myColor : Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
          )
              .toList(),
        ),
      ),
      SizedBox(
        height: 15.5.h,
      ),
      Text.rich(
        TextSpan(
          children: modifiedbody
              .split(' ')
              .map(
                (word) =>
                TextSpan(
                  text: word == 'OFC' || word == 'finger tips' ? '$word ' : '$word ',

                  style: TextStyle(
                    fontSize: 16.sp,
                    color: word == 'OFC' ? myColor : Colors.black,
                  ),
                ),
          )
              .toList(),
        ),
      ),
      SizedBox(
        height: 40.h,
      ),
    ],
  );
}