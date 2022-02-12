import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()=>runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Login (),
  )
);

class Login  extends  StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.blue,
     body: Column(
       children: [
  Container(
    child: Text("",style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.w500),),
  ),
         Container(
           child: Text("WELCOME",style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.w500),),
         ),
       ],
     ),
   );
  }

}