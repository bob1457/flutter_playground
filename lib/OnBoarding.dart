import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'avenir'
      ),
      home: onboarding(),
    );
  }
}
class onboarding extends StatefulWidget {
  @override
  _onboardingState createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  int currentPage = 0;
  PageController _pageController = new PageController(
    initialPage: 0,
    keepPage: true,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height*0.6,
                child: PageView(
                  controller: _pageController,
                  children: [
                    onBoardPage("onboard1", "Welcome to Aking"),
                    onBoardPage("onboard1", "Work Happens"),
                    onBoardPage("onboard1", "Task and Assignemtn"),
                  ],
                  onPageChanged: (value) => {setCurrentPage(value)},
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Column onBoardPage(String img, String title)
  {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 20,
        ),
        Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(50),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('asset/image/$img.png')
            )
          ),
        ),
      ],
    );
  }

  setCurrentPage(int value){
    currentPage = value;
    setState(() {

    });
  }
}

