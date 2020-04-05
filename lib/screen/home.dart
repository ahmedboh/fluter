import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
class Home extends StatelessWidget {
  static  const pageR="/home";
  String nom;
  String id;
  String faq;
  String url;
  String issue;
  Home({this.id,this.nom,this.faq,this.issue,this.url});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MY ID'),
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          elevation: 20,
          child: Container(
              height: 220,
              width: 500,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(children: [
                        Container(
                            height: 72,
                            width: 75,
                            child: Image(
                                image: AssetImage('assets/images/logo.jpg'))),
                        Column(
                          children: [
                            Text('Institue Charguia ',style: TextStyle(fontSize:24,fontWeight:FontWeight.bold, ),),
                            Text('IsetCH',style: TextStyle(fontSize:20,fontWeight:FontWeight.bold, ),),
                          ],
                        ),
                      ]),
                      Container(
                          width: 230,
                          color: Colors.yellow,
                          child: Text('Etudiant',style: TextStyle(fontSize:21,fontWeight:FontWeight.bold, ),textAlign:TextAlign.center ,),
                        ),
                       Text('Ahmed',style: TextStyle(fontSize:19,fontWeight:FontWeight.w500, ),),
                       Row(children: [
                         Text('006669999',style:TextStyle(fontSize:16, ),),
                         SizedBox(width: 7,),
                         Text('Issue N°',style:TextStyle(fontSize:13,fontWeight:FontWeight.bold, ),),
                         SizedBox(width: 7,),
                         Text('28',style: TextStyle(fontSize:16,fontWeight:FontWeight.bold, ),),
                       ],)
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          height: 130,
                          width: 85,
                          child: Image(
                              image: AssetImage('assets/images/boh.jpg'))),
                      QrImage(data: '00331122')
                    ],
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
