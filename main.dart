import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(debugShowCheckedModeBanner: false,
    home: new MyApp(),
  ));
}

class MyApp extends StatelessWidget {
 createAlertDialog(BuildContext context) {
    TextEditingController customController = TextEditingController();
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog( shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(40)), backgroundColor: Colors.blueAccent,
            title:
            
            
             Center(child: Text("yethachu type pannu"), ),
            content:Container(decoration: BoxDecoration( border: Border.all(
                                          width: 2.0, color: Color(0XFF050404)),
                                      borderRadius: BorderRadius.circular(40),
                                    ),
             child: TextField(decoration: InputDecoration(
                                            contentPadding: EdgeInsets.all(20), hintText: "search",
                                            hintStyle: TextStyle(
                                              color: (Colors.black),
                                            ),
                                            border: InputBorder.none
                                            ),),),
            actions: <Widget>[
              MaterialButton(
                elevation: 5.0,shape: RoundedRectangleBorder(
                  borderRadius:BorderRadius.circular(20),
                ),
                color: Colors.black87,
                child: Text('okay',style: TextStyle(fontSize: 20,fontFamily: 'bold',color: Colors.white),),
                  onPressed: () {
                    Navigator.of(context).pop(customController.text.toString());
                  },
                 
                
              ),SizedBox(width: 20,)
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FlatButton(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          color: Colors.blue,
          textColor: Colors.white,
          onPressed: () {
            createAlertDialog(context);
          },
          child: Text(
            'press!!!',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
