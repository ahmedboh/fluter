import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  static  const pageR="/contacts";
  @override
  Widget build(BuildContext context) {
    final deviceSize=MediaQuery.of(context).size;
    return Scaffold(
      appBar:AppBar(
        title: Text("etidiant"),
      ) ,
      drawer: Container(
        width:deviceSize.width*0.2 ,
        child: Drawer(
          child: Container(
            width: deviceSize.width*0.2,
            child: Column(
              children: <Widget>[
                Container(
                  height:deviceSize.height*0.1 ,
                  color: Colors.blueAccent,
                  
                ),
                ListTile(
                   title: Text('home'),  

                  ),
              ],
            ),
          ),
        ),
      ),
      body: Center(),
    ),
  }
}