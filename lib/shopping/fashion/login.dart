import 'dart:ui';


import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';





import 'package:flutter/cupertino.dart';
import 'package:whatsapp/online%20phone/homepage1.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FormValidationExample(),
  ));
}




class FormValidationExample extends StatelessWidget with InputValidationMixin {
  final emailcontreoller = TextEditingController();

  final formalGlobal = GlobalKey<FormState>();

  final style = TextStyle(fontSize: 60, fontWeight: FontWeight.bold);

  get formGlobalKey => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text(
          "Login ",
        ),
        // leading: Icon(Icons.search),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(""),
            fit: BoxFit.cover,
          ),
        ),
        child: Form(
          key: formGlobalKey,
          child: Column(
            children: [
              /*  Text("TRends",
                  style: GoogleFonts.oswald(
                    fontSize: 100,
                  style:TextStyle(fontWeight: FontWeight.bold))),*/

              Text("TRends",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize:30),),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Email"),
                validator: (email) {
                  if (isEmailValid(email!))
                    return null;
                  else
                    return 'Enter a valid email address';
                },
              ),
              const SizedBox(height: 24),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                ),
                maxLength: 6,
                obscureText: true,
                validator: (password) {
                  if (isPasswordValid(password!))
                    return null;
                  else
                    return 'Enter a valid password';
                },
              ),
              FlatButton(
                onPressed: () {
                  //forgot password screen
                },
                textColor: Colors.blue,
                child: Text('Forgot Password'),
              ),
              const SizedBox(height: 30),
              Container(
                color: Colors.purple,
              ),
              ElevatedButton(
                child: Text("login"),
                onPressed: () {
                  Navigator.of(context).pop();

                  if (formGlobalKey.currentState!.validate()) {
                    formGlobalKey.currentState!.save();
                    // use the email provided here

                  }

                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => Homepage()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GoogleFonts {
  static oswald({required int fontSize, required TextStyle style}) {}
}

mixin InputValidationMixin {
  bool isPasswordValid(String password) => password.length == 6;

  bool isEmailValid(String email) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(pattern);
    return regex.hasMatch(email);
  }
}
