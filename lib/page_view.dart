import 'package:flutter/material.dart';
import 'package:flutter_b18/models/on_boarding.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewDemo extends StatelessWidget {
  PageViewDemo({super.key});

  PageController controller = PageController();
  List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(image: 'assets/images/2.png', title: 'Trending News'),
    OnBoardingModel(
        image: 'assets/images/6.png', title: 'React,Save & Share News'),
    OnBoardingModel(
        image: 'assets/images/4.png', title: 'Video & live News From Youtube'),
    OnBoardingModel(
        image: 'assets/images/5.png',
        title: 'Browse News From Variety Of Categories'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page View Demo"),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: controller,
                // scrollDirection: Axis.vertical,
                itemCount: onBoardingList.length,
                itemBuilder: (context, i) {
                  return Column(
                    children: [
                      Image.asset(onBoardingList[i].image.toString()),
                      Text(onBoardingList[i].title.toString())
                    ],
                  );
                }),
          ),
          SmoothPageIndicator(
              controller: controller, // PageController
              count: onBoardingList.length,
              effect: JumpingDotEffect(), // your preferred effect
              onDotClicked: (index) {}),

          SizedBox(height: 100,),
        ],
      ),
    );
  }
}
