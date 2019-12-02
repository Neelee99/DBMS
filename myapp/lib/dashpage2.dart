import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
//import 'package:configurable_expansion_tile/configurable_expansion_tile.dart';

class DashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DashPage2();
  }
}

class DashPage2 extends StatefulWidget {
  @override
  _DashPage2State createState() => _DashPage2State();
}

class _DashPage2State extends State<DashPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shape: Border(
            bottom: BorderSide(
              color:Colors.lightBlueAccent,
              width: 2.0,
            )
          ),
          backgroundColor: Colors.black,
          leading: FlatButton(
            onPressed: (){
              Navigator.pop(context);
            },
            child: Icon(
            Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          title: Text(
              'Dashboard',
            style: TextStyle(
              color: Colors.lightBlueAccent[100],
            ),
            ),),
        body: Container(
          color:Colors.black87,
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
            Swiper(
              layout: SwiperLayout.CUSTOM,
              customLayoutOption: new CustomLayoutOption(
                startIndex: -1,
                stateCount: 3
                ).addRotate([
                -45.0/180,
                0.0,
                45.0/180
                ]).addTranslate([
                  new Offset(-370.0, -40.0),
                  new Offset(0.0, 0.0),
                  new Offset(370.0, -40.0)
              ]),
              itemWidth: 400 ,
              itemHeight: 200.0,
              itemBuilder: (context, index) {
              return  NotifyCard(index);
            },
            itemCount: 4,
          ),
              Expanded(
                flex:1,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Card(
                        color: Colors.deepPurple,
                        child: ExpansionTile(
                          leading: Icon(Icons.account_box, color: Colors.white,size: 50,),
                          title: Text('Attendance',
                            style:  TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),),
                          children: <Widget>[
                            FlatButton(
                              color:Colors.deepPurple[400],
                              child: Text("c1",style:  TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),),
                              onPressed:q1(),
                            ),
                            FlatButton(
                                child: Text("c2",style:  TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),),
                                onPressed:q1(),
                            ),
                            FlatButton(
                                child: Text("c3",style:  TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),),
                                onPressed:q1(),
                            ),
                            FlatButton(
                                child: Text("c4",style:  TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),),
                                onPressed:q1(),
                            ),
                            FlatButton(
                                child: Text("c5",style:  TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),),
                                onPressed:q1(),
                            ),
                            FlatButton(
                                child: Text("c6",style:  TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),),
                                onPressed:q1(),
                            ),
                          ],
                        ),

                      ),
                      Card(
                        color: Colors.deepPurple,
                        child: ExpansionTile(
                          leading: Icon(Icons.assessment, color: Colors.white,size: 55,),
                          title: Text('Scores',
                            style:  TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),),
                          children: <Widget>[
                            FlatButton(
                              color:Colors.deepPurple[400],
                              child: Text("Q1",style:  TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),),
                              onPressed:q1(),
                            ),
                            FlatButton(
                              child: Text("T1",style:  TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),),
                              onPressed:q1(),
                            ),
                            FlatButton(
                              child: Text("Q2",style:  TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),),
                              onPressed:q1(),
                            ),
                            FlatButton(
                              child: Text("T2",style:  TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),),
                              onPressed:q1(),
                            ),
                            FlatButton(
                              child: Text("Q3",style:  TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),),
                              onPressed:q1(),
                            ),
                            FlatButton(
                              child: Text("EndSemester",style:  TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),),
                              onPressed:q1(),
                            ),
                          ],
                        ),

                      ),
                      Card(
                        color: Colors.deepPurple,
                        child: ExpansionTile(
                          leading: Icon(Icons.border_color, color: Colors.white,size: 45,),
                          title: Text('Examination',
                            style:  TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),),
                          children: <Widget>[
                            FlatButton(
                              color:Colors.deepPurple[400],
                              child: Text("Q1",style:  TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),),
                              onPressed:q1(),
                            ),
                            FlatButton(
                              child: Text("T1",style:  TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),),
                              onPressed:q1(),
                            ),
                            FlatButton(
                              child: Text("Q2",style:  TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),),
                              onPressed:q1(),
                            ),
                            FlatButton(
                              child: Text("T2",style:  TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),),
                              onPressed:q1(),
                            ),
                            FlatButton(
                              child: Text("Q3",style:  TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),),
                              onPressed:q1(),
                            ),
                            FlatButton(
                              child: Text("EndSemester",style:  TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),),
                              onPressed:q1(),
                            ),
                          ],
                        ),

                      ),
                      Card(
                        color: Colors.deepPurple,
                        child: ExpansionTile(
                          leading: Icon(Icons.group_work, color: Colors.white,size: 55,),
                          title: Text('Projects',
                            style:  TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),),
                          children: <Widget>[
                            FlatButton(
                              color:Colors.deepPurple[400],
                              child: Text("Project1name",style:  TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),),
                              onPressed:q1(),
                            ),
                            FlatButton(
                              child: Text("Project2name",style:  TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),),
                              onPressed:q1(),
                            ),
                          ],
                        ),

                      ),
                      Card(
                        color: Colors.deepPurple,
                        child: ExpansionTile(
                          leading: Icon(Icons.book, color: Colors.white,size: 50,),
                          title: Text('Courses',
                            style:  TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),),
                          children: <Widget>[
                            FlatButton(
                              color:Colors.deepPurple[400],
                              child: Text("c1",style:  TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),),
                              onPressed:q1(),
                            ),
                            FlatButton(
                              child: Text("c2",style:  TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),),
                              onPressed:q1(),
                            ),
                            FlatButton(
                              child: Text("c3",style:  TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),),
                              onPressed:q1(),
                            ),
                            FlatButton(
                              child: Text("c4",style:  TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),),
                              onPressed:q1(),
                            ),
                            FlatButton(
                              child: Text("c5",style:  TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),),
                              onPressed:q1(),
                            ),
                            FlatButton(
                              child: Text("c6",style:  TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),),
                              onPressed:q1(),
                            ),
                          ],
                        ),

                      ),

                    ],


                  ),

                ),
              ),

            ],
          ),
        ),

    );
  }}

  q1()
  {print(" A Button was pressed");}
  NotifyCard(int index)
  {
    return Card(

      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.notification_important),
            title: Text("Notifiaction!"),
            subtitle: Text("Notificattion subject $index"),

          ),
          FlatButton(
            child: Text("Check out now!",
            style: TextStyle( color: Colors.lightBlue,
            ),
            ),
            onPressed: q1(),
      ),
    ],
      ),


    );
  }

/*
class m1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
          child: Scaffold(
          appBar: AppBar(
          title:Text("Quiz1"),),),),
        );
  }
}
child: Text(
                  "1 Description that is too long in text format(Here Data is coming from API) jdlksaf j klkjjflkdsjfkddfdfsdfds " +
                      "2 Description that is too long in text format(Here Data is coming from API) d fsdfdsfsdfd dfdsfdsf sdfdsfsd d " +
                      "3 Description that is too long in text format(Here Data is coming from API)  adfsfdsfdfsdfdsf   dsf dfd fds fs" +
                      "4 Description that is too long in text format(Here Data is coming from API) dsaf dsafdfdfsd dfdsfsda fdas dsad" +
                      "5 Description that is too long in text format(Here Data is coming from API) dsfdsfd fdsfds fds fdsf dsfds fds " +
                      "6 Description that is too long in text format(Here Data is coming from API) asdfsdfdsf fsdf sdfsdfdsf sd dfdsf" +
                      "7 Description that is too long in text format(Here Data is coming from API) df dsfdsfdsfdsfds df dsfds fds fsd" +
                      "8 Description that is too long in text format(Here Data is coming from API)" +
                      "9 Description that is too long in text format(Here Data is coming from API)" +
                      "10 Description that is too long in text format(Here Data is coming from API)"+
                      "1 Description that is too long in text format(Here Data is coming from API) jdlksaf j klkjjflkdsjfkddfdfsdfds " +
                      "2 Description that is too long in text format(Here Data is coming from API) d fsdfdsfsdfd dfdsfdsf sdfdsfsd d " +
                      "3 Description that is too long in text format(Here Data is coming from API)  adfsfdsfdfsdfdsf   dsf dfd fds fs" +
                      "4 Description that is too long in text format(Here Data is coming from API) dsaf dsafdfdfsd dfdsfsda fdas dsad" +
                      "5 Description that is too long in text format(Here Data is coming from API) dsfdsfd fdsfds fds fdsf dsfds fds " +
                      "6 Description that is too long in text format(Here Data is coming from API) asdfsdfdsf fsdf sdfsdfdsf sd dfdsf" +
                      "7 Description that is too long in text format(Here Data is coming from API) df dsfdsfdsfdsfds df dsfds fds fsd" +
                      "8 Description that is too long in text format(Here Data is coming from API)" +
                      "9 Description that is too long in text format(Here Data is coming from API)" +
                      "10 Description that is too long in text format(Here Data is coming from API)" ,
                  style: new TextStyle(
                   fontSize: 16.0, color: Colors.purple,
                  ),
              */
