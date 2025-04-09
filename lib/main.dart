import 'package:flutter/material.dart';


void main(){
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Text('First Screen',style: TextStyle(
            color: Colors.blue,
            fontSize: 40,
            fontWeight: FontWeight.bold
          ),),
          leading: Icon(Icons.arrow_back,color: Colors.white,),
          actions: [
            Icon(Icons.notifications),

            Icon(Icons.notifications),

            Icon(Icons.notifications),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
          Text("First Text",style: TextStyle(
            fontSize: 50
          ),),
          SizedBox(height: 20,),
          Text("Second Text",style: TextStyle(fontSize: 40),),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Icon(Icons.add),
            Icon(Icons.add),

            Icon(Icons.add),

            Icon(Icons.add),


            Icon(Icons.add),

            Icon(Icons.add),
            Icon(Icons.add),
          ],)
        ],),
      ),
    );
  }
}