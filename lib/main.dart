import 'package:flutter/material.dart';
//import 'infoClass.dart';
import 'pages/home.dart';
import 'pages/person_list.dart';

void main() {
  runApp(MaterialApp(
    initialRoute:'/home',
    routes: {
      '/home':(context) =>Home(),
      '/persons':(context) =>PersonList(),
    },
  ));
}


  