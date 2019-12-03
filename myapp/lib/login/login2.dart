import 'package:flutter/material.dart';
//import 'package:flutter/material.dart' as prefix0;
import 'package:myapp/login/register.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'dashpage2.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  List data;
  List userData;



  final scaffoldKey = new GlobalKey<ScaffoldState>();
  final formKey = new GlobalKey<FormState>();

  String _userId;
  String _password;



  @override
  void initState(){
    super.initState();


  }


  @override
  void dispose(){

    super.dispose();
  }

  Future getData() async {
    http.Response response = await http.get("http://192.168.43.202:8080/login");
    data = json.decode(response.body);
    debugPrint(data.toString());
    for (int i=0; i<data.length;i++){
      if(data[i]['s_regno'].contains(_userId)){
      if(data[i]['password'].contains(_password)){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> DashPage()));
      }}
      else{
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(

                  title: Text("Login Unsucessful"),
                  content:Text("Please enter the correct username and password.\nCheck your internet connection."),
                actions: <Widget>[
                  FlatButton(
                    child: Icon(
                      Icons.clear,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )
                ],
              );

            }
        );
        //Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
      }
    }
  }

  void _submit(){
    final form = formKey.currentState;
    if(form.validate()){
      form.save();
      performLogin();
    }
  }

  void performLogin(){
    getData();

  }

  @override

  Widget build(BuildContext context){
    return new Scaffold(
        key: scaffoldKey,
        /*
        appBar: new AppBar(
          title: new Text("Login Page"),
        ),*/
        body: Container(
          color:Colors.black,
          child: Column(
            children: <Widget>[
              Container(
                child: Image(image:AssetImage('assets/images/AppLogo.png',),
                  height: 250.0,
                  width :250.0,

                ),
              ),
              new Padding(
                padding: const EdgeInsets.all(20.0),

                child: new Form(
                  key: formKey,
                  child: new Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              //color: Colors.lightBlueAccent,

                              decoration: BoxDecoration(
                                color: Colors.lightBlueAccent,
                                border: Border.all(
                                  color: Colors.lightBlueAccent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.only(topLeft:Radius.circular(20.0),bottomLeft: Radius.circular(20.0)),
                              ),
                              margin:
                              const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),

                              child: new Padding(
                                padding:
                                EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                                child: Icon(
                                  Icons.person,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              height: 30.0,
                              width: 1.0,
                              color: Colors.grey.withOpacity(0.5),
                              margin: const EdgeInsets.only(left: 00.0, right: 10.0),
                            ),
                            new TextFormField(
                              decoration: new InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Enter your ID',
                                hintStyle: TextStyle(color: Colors.white),
                              ),
                              onSaved: (val)=> _userId = val,

                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              //color: Colors.lightBlueAccent,
                              decoration: BoxDecoration(
                                color: Colors.lightBlueAccent,
                                border: Border.all(
                                  color: Colors.lightBlueAccent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.only(topLeft:Radius.circular(20.0),bottomLeft: Radius.circular(20.0)),
                              ),
                              margin:
                              const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),

                              child: new Padding(
                                padding:
                                EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                                child: Icon(
                                  Icons.lock_outline,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              height: 30.0,
                              width: 1.0,
                              color: Colors.grey.withOpacity(0.5),
                              margin: const EdgeInsets.only(left: 00.0, right: 10.0),
                            ),
                            new TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Enter your password',
                                hintStyle: TextStyle(color: Colors.white),
                              ),
                              validator: (val)=>val.length<1?'Password too short':null,
                              onSaved: (val)=>_password=val,
                              obscureText: true,
                            ),
                          ],
                        ),

                        SizedBox(
                          height:40,
                        ),
                         Card(
                           child: FlatButton(
                            child: Text("Login"),
                            onPressed: _submit,
                        ),
                         )
                      ]
                  ),

                ),

              ),
            ],
          ),
        )

    );
  }
}