import 'package:flutter/material.dart';
import 'package:intro_views_flutter/Models/page_view_model.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';
import 'login/login.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';


class SplashScreen extends StatelessWidget {

  
 static TextStyle style = TextStyle(fontSize: 30.0,);
  //making list of pages needed to pass in IntroViewsFlutter constructor.

  final pages = [
    PageViewModel(
        pageColor: const Color(0xFF03A9F4),
        bubble: Image.asset('assets/trucking.png'),
        body: Text(
//          'Welcome  to  intro  slider  in  flutter  with  package  intro  views  flutter  latest  update',
          'Welcome  to  Turtle  Haselfree   booking   of   truck   with   awesome   experience ',style: style,
        ),
        title: Text(
          '',
        ),
        textStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
        mainImage: Image.asset(
          'myapp/assets/trucking.png',
          height: 285.0,
          width: 285.0,
          alignment: Alignment.center,
        )),
    PageViewModel(
      pageColor: const Color(0xFF8BC34A),
      iconImageAssetPath: 'myapp/assets/truck.png',
      body: Text(
//        'Amazevalley  intoduce  you  with  the  latest  features  coming  in  flutter  with  practical  demos',
        'Turtle  work  for  the  truck solution  which  helps  to  all  the  vendors  to  book  a  truck  on  your  fingers',style: style,
      ),
      title: Text(''),
      mainImage: Image.asset(
        'myapp/assets/truck.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      ),
      textStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
    ),
    PageViewModel(
      pageColor: const Color(0xFF607D8B),
      iconImageAssetPath: 'myapp/assets/truck.png',
      body: Text(
//        'Amazevalley  give  you  brief  soluton  about  technology  where  you  fall  in  love',
        'Tutle  is the solution  of  Easy  truck  booking  at  your  doorstep  with  cashless  payment  system.',style: style,
      ),
      title: Text(''),
      mainImage: Image.asset(
        'assets/truck.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      ),
      textStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IntroViews Flutter', //title of app
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ), //ThemeData
      home: Builder(
        builder: (context) => IntroViewsFlutter(
          pages,
          onTapDoneButton: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LoginScreen(),
              ), //MaterialPageRoute
            );
          },
          pageButtonTextStyles: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ), //IntroViewsFlutter
      ), //Builder
    ); //Material App
  }
}
