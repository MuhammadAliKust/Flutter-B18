import 'package:flutter/material.dart';
import 'package:flutter_b18/models/grid_model.dart';

class GridViewDemo extends StatelessWidget {
  GridViewDemo({super.key});

  List<GridModel> gridList = [
    GridModel(
        image: 'assets/images/c1.png',
        title: 'All',
        secondImage: 'assets/images/star.png'),
    GridModel(
        image: 'assets/images/c2.png',
        title: 'Weather',
        secondImage: 'assets/images/star.png'),
    GridModel(
        image: 'assets/images/c3.png',
        title: 'Sports',
        secondImage: 'assets/images/star.png'),
    GridModel(
        image: 'assets/images/c3.png',
        title: 'Business',
        secondImage: 'assets/images/star.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View Demo"),
      ),
      body: GridView.builder(
          itemCount: gridList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 10,
              childAspectRatio: 3),
          itemBuilder: (context, i) {
            return Container(
              decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.3),
                  border: Border.all(color: Colors.blue, width: 3),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(gridList[i].image.toString()),
                  Text(gridList[i].title.toString()),
                  Image.asset(gridList[i].secondImage.toString()),
                ],
              ),
            );
          }),
    );
  }
}
