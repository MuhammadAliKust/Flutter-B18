import 'package:flutter/material.dart';

class SingleSelectionView extends StatefulWidget {
  SingleSelectionView({super.key});

  @override
  State<SingleSelectionView> createState() => _SingleSelectionViewState();
}

class _SingleSelectionViewState extends State<SingleSelectionView> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Single Selection Demo"),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, i) {
            return ListTile(
              onTap: () {
                selectedIndex = i;
                setState(() {});
              },
              leading: Icon(Icons.notifications),
              title: Text("Selected Index $selectedIndex"),
              subtitle: Text("Loop Index $i"),
              tileColor: selectedIndex == i ? Colors.green : Colors.white,
            );
          }),
    );
  }
}
