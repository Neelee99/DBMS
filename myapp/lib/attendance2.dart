
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Attendance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FlatButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: Text("Your Attendance"),
      ),
      body: MyAttendancePage(),
    );
  }
}

class MyAttendancePage extends StatefulWidget {
  @override
  _MyAttendancePageState createState() => _MyAttendancePageState();
}

/*
class Attendpercent {
  final String id; // change to int if necessary
  final String s_regno;
  final String cid;
  final String c_name;
  final int attended;
  final int total;
  final double percentage;
  Attendpercent( this.id,this.s_regno,this.cid,this.c_name,this.attended,this.total);
}
*/

class _MyAttendancePageState extends State<MyAttendancePage> {
  List<Card> atcList =[];
  int safe=0,unsafe=0;
  bool isLoading = true;

  Future getdata() async
  {

    http.Response response1 = await http.get("https://next.json-generator.com/api/json/get/VJ7T2GYpw");
    var data = json.decode(response1.body);
    debugPrint(data.toString());
        for(int index=0;index<data.length;index++)
         {
           bool s=false;
           if
           (((data[index]['attended']) /
               (data[index]['total']) * 100 )> 75)
             {safe++; s =true;}
           else
             unsafe++;

           Card c = new  Card(
             color:Colors.blueGrey[900],
            child: ListTile(
              leading: Container(color: Colors.blueGrey,
                          child:  s?Icon(Icons.check , color:Colors.greenAccent)
                          :Icon(Icons.clear, color:Colors.redAccent),),
              title: Text(data[index]['cname'],
                  style: TextStyle( color:  Colors.white,)
              ),
              trailing: Text(
                "Attended :" + data[index]['attended'].toString() + "/" +
                    data[index]["total"].toString() + "\n Percent :"
                    + (
                    ((data[index]['attended']) /
                        (data[index]['total']) * 100
                    ).toString()
                ),
                style: TextStyle( color:  Colors.white,)
              ),
            ),
          );
           atcList.add(c);

         }
   print("isdone");

    isLoading = false;


  }


  @override
  Widget build(BuildContext context) {
    getdata();
    print("is recieved");
    return
      Container(
         color: Colors.black87,
        child: isLoading? CircularProgressIndicator():
        ListView.builder(
          controller: ScrollController(),
          itemBuilder: (context,position)=>atcList[position],
          itemCount: atcList.length,

        ),
      );
  }
}

