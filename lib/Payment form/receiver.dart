import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Payment(),
));

class Payment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        leading: Icon(Icons.arrow_back, color: Colors.white),
        leadingWidth: 120,
        title: const Text(
          "RECEIVER",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 15, right: 170),
              child: Text(
                "Receiver's Address",
                style: GoogleFonts.lato(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              width: 450,
              padding: EdgeInsets.only(left: 15, top: 5),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "",
                  prefixIcon: const Icon(
                    Icons.brightness_1,
                    color: Colors.pink,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.white, width: 1.0),
                  ),
                  contentPadding: EdgeInsets.zero,
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
            Divider(
              thickness: 3.0,
            ),
            Container(
              padding: EdgeInsets.only(top: 15, right: 200),
              child: Text(
                "Address Type",
                style: GoogleFonts.lato(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              width: 320,
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Container(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "       Home",
                    hintStyle: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                          color: Colors.blueGrey.shade50, width: 2.0),
                    ),
                    contentPadding: EdgeInsets.zero,
                    filled: true,
                    fillColor: Colors.grey[200],
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 15, left: 45),
                  child: Text(
                    "Date",
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Colors.black),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 15, left: 160),
                  child: Text(
                    "Time",
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: 240,
                  padding: EdgeInsets.only(left: 45, top: 7),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "       Thu 20 Jan 2022",
                      hintStyle: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            color: Colors.blueGrey.shade50, width: 2.0),
                      ),
                      contentPadding: EdgeInsets.zero,
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  ),
                ),
                Container(
                  width: 115,
                  padding: EdgeInsets.only(left: 10, top: 7),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "         11:30",
                      hintStyle: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            color: Colors.blueGrey.shade50, width: 2.0),
                      ),
                      contentPadding: EdgeInsets.zero,
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 30, right: 170),
              child: Text(
                "Receiver's Name*",
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Colors.black),
              ),
            ),
            Container(
              width: 320,
              padding: EdgeInsets.only(left: 7, top: 10),
              child: Container(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "       Name",
                    hintStyle: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                          color: Colors.blueGrey.shade50, width: 2.0),
                    ),
                    contentPadding: EdgeInsets.zero,
                    filled: true,
                    fillColor: Colors.grey[200],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30, right: 170),
              child: Text(
                "Receiver's Mobile*",
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Colors.black),
              ),
            ),

            Row(
              children: [
                Container(
                  width: 135,
                  padding: EdgeInsets.only(left: 45,),

                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "    971",
                      hintStyle: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ), suffixIcon: IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.keyboard_arrow_down),
                    ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            color: Colors.blueGrey.shade50, width: 2.0),
                      ),
                      contentPadding: EdgeInsets.zero,
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  ),
                ),
                Container(
                  width: 240,
                  padding: EdgeInsets.only(left: 20,right: 20, top: 7),

                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "       5000000",
                      hintStyle: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            color: Colors.blueGrey.shade50, width: 2.0),
                      ),
                      contentPadding: EdgeInsets.zero,
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 25, left:45),
                  child: Text(
                    "Additional Notes",
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Colors.black),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 25, left: 140),
                  child: Text(
                    "14/200",
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                        color: Colors.grey),
                  ),
                ),
              ],
            ),
            Container(
              width: 320,
              padding: EdgeInsets.only(left: 5, top: 10),
              child: Container(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "       call one hour before arrive.",
                    hintStyle: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                          color: Colors.blueGrey.shade50, width: 2.0),
                    ),
                    contentPadding: EdgeInsets.zero,
                    filled: true,
                    fillColor: Colors.grey[200],
                  ),
                ),
              ),
            ),
            Container( padding: EdgeInsets.only(right: 60,top: 40,left: 50),

              width: 260,

              child: RaisedButton(
                onPressed: (

                    ) {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => Payment()));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0)),
                color: Colors.blue,
                child: Row(
                  children: <Widget>[
                    Container(padding: EdgeInsets.only(left: 25),
                      child: Text(
                        "CONTINUE",
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.w400, fontSize: 13,color: Colors.white,),
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
  }
}
