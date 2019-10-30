import 'package:flutter/material.dart';
import 'package:myapp/login/register.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0, color: Colors.white,);

  @override
  Widget build(BuildContext context) {
    final emailField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email",
          hintStyle: style,
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),suffixIcon: Icon(Icons.email,color: Colors.white,),
          enabledBorder: const OutlineInputBorder(
      // width: 0.0 produces a thin "hairline" border
      borderSide: const BorderSide(color: Colors.white, width: 1.0,style: BorderStyle.solid ),
    ),),

    );
    final passwordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Password",
          hintStyle: style,
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),suffixIcon: Icon(Icons.perm_identity,color: Colors.white,),
        enabledBorder: const OutlineInputBorder(
          // width: 0.0 produces a thin "hairline" border
          borderSide: const BorderSide(color: Colors.white, width: 1.0,style: BorderStyle.solid ),))
    );
    final loginButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color.fromRGBO(1,160,199, 0.5),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {},

        child: Text("Login",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold,)
        ),
      ),
    );

    final registerButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color.fromRGBO(16,102,127, 0.5),
//      color: Color(0xff1066E3),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => RegisterScreen()),
          );
        },
        child: Text("Register",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          Center(
            child: Container(
//              color: Colors.white,
            height: MediaQuery.of(context).size.height,
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage("assets/truck_background.jpg"),
                  fit: BoxFit.cover,

                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(36.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 15.0,
//                      child: Image.asset(
//                        "assets/waiter.png",
//                        fit: BoxFit.contain,
//                      ),
                    ),
                    Text('Login',style: TextStyle(
                        color: Colors.white, fontFamily: 'MyFont', fontSize: 50.0
                    ),),
                    SizedBox(height: 45.0),
                    emailField,
                    SizedBox(height: 25.0),
                    passwordField,
                    SizedBox(
                      height: 35.0,
                    ),
                    loginButon,
                    SizedBox(
                      height: 15.0,
                    ),
                    registerButon,
                    SizedBox(
                      height: 60.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
    }
}
