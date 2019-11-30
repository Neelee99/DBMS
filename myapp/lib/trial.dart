import 'package:flutter/material.dart';
import 'package:intro_views_flutter/Models/page_view_model.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';
import 'login/login.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

   List data;
   List userData;

   Future getData() async {
    http.Response response = await http.get("http://192.168.43.202:8080/courses");
    data = json.decode(response.body);
    debugPrint(data[0]['c_name'].toString());
  }

  @override
  void initState(){
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title : Text("Project"),
        backgroundColor : Colors.green,
      ),
    );
  }
}