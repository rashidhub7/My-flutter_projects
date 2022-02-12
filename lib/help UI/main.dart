import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icon_text_button/icon_text_button.dart';

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Design()));

class Design extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(5, 60, 90, 1),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(top: 12, left: 10),
                child: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.white,
                ),
                //
              ),
              Container(
                padding: EdgeInsets.only(left: 160, top: 12),
                child: Text(
                  "Request Help",
                  style: TextStyle(color: Colors.white, fontSize: 20),

                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 30),
            child: const CircleAvatar(
                backgroundColor: Colors.pink,
                radius: 100,
                backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTKk6ftmYHwfDueTI4uhK785lf2s9Tye8hfw&usqp=CAU")),
          ),
          Container(
            padding: EdgeInsets.only(top: 15),
            child: Text(
              "How can we help you?",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, top: 16),
            child: Text(
              "      It looks like you are experencing\n "
                  "  problems withouts sign up process.We\n"
                  "are here to help so please get in touch \n "
                  "                             with us",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w200),
            ),
          ),
          Positioned(
            top: 380,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 120, top: 50),
                  child: Material(
                    color: Colors.indigo[300],
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    child: Padding(
                      padding: EdgeInsets.all(4),
                      child: IconTextButton(

                        icon:Icon(Icons.message,color: Colors.pink[900],),
                        // color: Colors.lightBlue[900],
                        label: Text("Chat to us",style: TextStyle(color: Colors.white),),

                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 120, top: 50),
                  child: Material(
                    color: Colors.indigo[300],
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    child: Padding(
                      padding: EdgeInsets.all(4),
                      child: IconTextButton(
                        icon:Icon(Icons.email,color: Colors.green[900],),

                        label: Text("Email us",style: TextStyle(color: Colors.white),),

                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
