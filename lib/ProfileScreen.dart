import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget{
  final String title;
  const ProfileScreen({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text(title)),
     body: Column(mainAxisAlignment: MainAxisAlignment.center,
     children: [Text(title,style: TextStyle(fontSize: 29))],),
   );
  }

}