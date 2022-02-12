import 'package:flutter/cupertino.dart';
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
        title: Text(
          "CHECKOUT",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15, ),
            child: Stack(
              children: [
                Container(
                  height: 165,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(22),
                      topLeft: Radius.circular(22),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 15, left: 15),
                  child: Text(
                    "Pick-up",
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.w700, fontSize: 14),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 45, left: 26),
                  child: Text(
                    "ID 256852 - PENDING-7:32AM",
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.w600, fontSize: 11),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 47, left: 10),
                  child: Radio(
                    value: 1,
                    groupValue: 1,
                    onChanged: (value) {},
                    activeColor: Colors.blue,
                  ),
                ),
                SizedBox(
                  width: 0.1,
                ),
                Container(
                  padding: EdgeInsets.only(top: 63, left: 50),
                  child: Text("Abu Dhabi",
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          color: Colors.grey)),
                ),
                Container(
                  padding: EdgeInsets.only(top: 90, left: 26),
                  child: Text("Name",
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.w600,
                          fontSize: 11,
                          color: Colors.black)),
                ),
                Container(
                  padding: EdgeInsets.only(top: 105, left: 26),
                  child: Text("Ali ibrahim",
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.w700,
                          fontSize: 11,
                          color: Colors.grey)),
                ),
                Container(
                  padding: EdgeInsets.only(top: 128, left: 26),
                  child: Text("Phone Number",
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.w600,
                          fontSize: 11,
                          color: Colors.black)),
                ),
                Container(
                  padding: EdgeInsets.only(top: 144, left: 26),
                  child: Text("+9715000000",
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          color: Colors.grey)),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 4,  ),
            child: Stack(
              children: [
                Container(
                  height: 143,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 15, left: 15),
                  child: Text(
                    "Drop_off",
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.w700, fontSize: 14),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 30, left: 15),
                  child: Radio(
                    value: 1,
                    groupValue: 1,
                    onChanged: (value) {},
                    activeColor: Colors.pink,
                  ),
                ),
                SizedBox(
                  width: 0.1,
                ),
                Container(
                  padding: EdgeInsets.only(top: 48, left: 55),
                  child: Text("Dubai",
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.w700,
                          fontSize: 11,
                          color: Colors.grey)),
                ),
                Container(
                  padding: EdgeInsets.only(top: 70, left: 26),
                  child: Text("Receiver's Name",
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.w700,
                          fontSize: 11,
                          color: Colors.black)),
                ),
                Container(
                  padding: EdgeInsets.only(top: 85 ,left: 26),
                  child: Text("Khalid Saleh",
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.w700,
                          fontSize: 11,
                          color: Colors.grey)),
                ),
                Container(
                  padding: EdgeInsets.only(top: 105, left: 26),
                  child: Text("Receiver's Mobile",
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.w700,
                          fontSize: 11,
                          color: Colors.black)),
                ),
                Container(
                  padding: EdgeInsets.only(top: 120, left: 26),
                  child: Text("+9715000000",
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.w700,
                          fontSize: 11,
                          color: Colors.grey)),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 4, left: 20),
            child: Stack(
              children: [
                Container(
                  height: 180,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10, left: 15),
                  child: Text(
                    "Shippment Details",
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.w700, fontSize: 14),
                  ),
                ),

                Row(

                  children: [
                    Container( padding: EdgeInsets.only(top: 40, left: 40),
                      child: Text(
                        "Receivers' Name",
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.w700, fontSize: 12),
                      ),
                    ),
                    Container( padding: EdgeInsets.only(top: 40, left: 120),
                      child: Text(
                        "Khalid Saleh",
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.w700, fontSize: 12,color: Colors.grey),
                      ),
                    ),


                  ],
                ),
                Row(
                  children: [
                    Container(padding: EdgeInsets.only(top: 55, left: 40),
                      child: Text(
                        "Receivers' Address",
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.w700, fontSize: 12),
                      ),
                    ),
                    Container(padding: EdgeInsets.only(top: 55, left: 37),
                      child: Text(
                        "Flat 2105,Street 13,Dubai",
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.w700, fontSize: 12,color: Colors.grey),
                      ),
                    ),


                  ],
                ),


                Row(
                  children: [
                    Container(padding: EdgeInsets.only(top: 70, left: 40),
                      child: Text(
                        "Address Type",
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.w700, fontSize: 12),
                      ),
                    ),
                    Container(padding: EdgeInsets.only(top: 70, left: 170),
                      child: Text(
                        "Home",
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.w700, fontSize: 12,color: Colors.grey),
                      ),
                    ),


                  ],
                ),
                Row(
                  children: [
                    Container(padding: EdgeInsets.only(top: 85, left: 40),
                      child: Text(
                        "Receivers's Mobile",
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.w700, fontSize: 12),
                      ),
                    ),
                    Container(padding: EdgeInsets.only(top: 85, left: 98),
                      child: Text(
                        "+9715000000",
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.w700, fontSize: 12,color: Colors.grey),
                      ),
                    ),


                  ],
                ),
                Row(
                  children: [
                    Container(padding: EdgeInsets.only(top: 110, left: 40),
                      child: Text(
                        "Parcel Number",
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.w700, fontSize: 12),
                      ),
                    ),
                    Container(padding: EdgeInsets.only(top: 110, left: 83),
                      child: Text(
                        "N404450028960145",
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.w700, fontSize: 12,color: Colors.grey),
                      ),
                    ),


                  ],
                ),
                Row(
                  children: [
                    Container(padding: EdgeInsets.only(top: 125, left: 40),
                      child: Text(
                        "Estimate Weight",
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.w700, fontSize: 12),
                      ),
                    ),
                    Container(padding: EdgeInsets.only(top: 125, left: 165),
                      child: Text(
                        "1 kg",
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.w700, fontSize: 12,color: Colors.grey),
                      ),
                    ),


                  ],
                ),
                Row(
                  children: [
                    Container(padding: EdgeInsets.only(top: 140, left: 40),
                      child: Text(
                        "Parcel Description",
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.w700, fontSize: 12),
                      ),
                    ),
                    Container(padding: EdgeInsets.only(top: 140, left: 145),
                      child: Text(
                        "Jacket",
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.w700, fontSize: 12,color: Colors.grey),
                      ),
                    ),


                  ],
                ),


              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 4, left: 20),
            child: Stack(
              children: [
                Container(
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                  ),
                ),
                Row(
                  children: [
                    Container(padding: EdgeInsets.only(top: 15, left: 40),
                      child: Text(
                        "Total Amount",
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.w700, fontSize: 15),
                      ),
                    ),
                    Container(padding: EdgeInsets.only(top: 15, left: 140),
                      child: Text(
                        "AED 12",
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.w600, fontSize: 14,color: Colors.black),
                      ),
                    ),


                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 4, left: 20),
            child: Stack(
              children: [
                Container(
                  height: 140,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                  ),
                ),
                Container(padding: EdgeInsets.only(top: 10, left: 40),
                  child: Text(
                    "Payment Method",
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.w600, fontSize: 15,color: Colors.black),
                  ),
                ),
                Row(
                  children: [
                    Container( padding: EdgeInsets.only(left: 50,top: 50),
                      height: 87,
                      width: 180,

                      child: RaisedButton(
                        onPressed: () {  },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80.0)),
                        color: Colors.amberAccent[400],
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Card",
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w700, fontSize: 14),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Icon(
                                Icons.credit_card,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),


                    Container( padding: EdgeInsets.only(left: 10,top: 50),
                      height: 87,
                      width: 140,

                      child: RaisedButton(
                        onPressed: () {  },
                        shape: RoundedRectangleBorder(side: BorderSide( color: Colors.amberAccent, width: 2),
                            borderRadius: BorderRadius.circular(80.0)),
                        color: Colors.white,
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Cash",
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w700, fontSize: 14),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Icon(
                                Icons.attach_money,
                                color: Colors.amberAccent,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container( padding: EdgeInsets.only(left: 110,top: 120),
                  height: 155,
                  width: 260,

                  child: RaisedButton(
                    onPressed: () {  },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                    color: Colors.blue,
                    child: Row(
                      children: <Widget>[
                        Container(padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "CHECKOUT",
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
        ],
      ),
    );
  }
}
