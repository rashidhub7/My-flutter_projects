import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 510,
            decoration: BoxDecoration(
              color: Color.fromRGBO(11, 53, 58, 1),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(80),
                bottomLeft: Radius.circular(80),
              ),
            ),
          ),
          // Padding(
          //   padding: EdgeInsets.all(20.0),
          //   child: Icon(
          //     Icons.arrow_back,
          //     color: Colors.white,
          //   ),
          // ),
          Positioned(
            top: 60,
            left: 40,
            child: Text(
              "Rubber Tree",
              style: TextStyle(
                fontFamily: "Robobto Slab",
                fontSize: 31,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: 115,
            left: 39,
            child: Text(
              "Robust and dramatic,\n with glossy leaves",
              style: TextStyle(
                  fontFamily: "Roboto Slab",
                  fontWeight: FontWeight.w100,
                  fontSize: 20,
                  color: Colors.white),
            ),
          ),
          Positioned(
            top: 190,
            left: 40,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(11.0),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: Colors.green),
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: 5, bottom: 5, left: 8, right: 8),
                          child: Text(
                            "Easy to grow",
                            style: TextStyle(
                                fontFamily: "Roboto Slab",
                                fontWeight: FontWeight.w100,
                                fontSize: 18,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: Colors.blue),
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: 5, bottom: 5, left: 8, right: 8),
                          child: Text(
                            "Air cleaner",
                            style: TextStyle(
                                fontFamily: "Roboto Slab",
                                fontWeight: FontWeight.w100,
                                fontSize: 18,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 270,
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(14, 73, 85, 1),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(3),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Icon(
                              Icons.add_location_alt,
                              color: Colors.greenAccent,
                              size: 25,
                            ),
                          ),
                          Text(
                            "Every 7 days",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Icon(
                              Icons.fiber_smart_record_sharp,
                              color: Colors.greenAccent,
                              size: 25,
                            ),
                          ),
                          Text(
                            "Needs sun",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Icon(
                              Icons.ac_unit_outlined,
                              color: Colors.greenAccent,
                              size: 25,
                            ),
                          ),
                          Text(
                            "Minimum 1 C",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 125,
            bottom: 125,
            left: 284,
            child: Image(
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1609062111394-0427aa22d6c1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Zmxvd2VyJTIwcG90fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
            ),
          ),
          Positioned(
            top: 405,
            left: 40,
            child: Text(
              "Available sizes",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          ),
          Positioned(
            top: 450,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 50, right: 15),
                  child: Material(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: Text(
                        "10",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(11, 53, 58, 1)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50, right: 15),
                  child: Material(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: Text(
                        "15",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(11, 53, 58, 1)),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 50, right: 15),
                  child: Material(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: Text(
                        "20",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(11, 53, 58, 1)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 200, top: 516),
                child: Text(
                  "Add to Cart-",
                  style: TextStyle(fontSize: 19,
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 305, top: 516),
                child: Text(
                  "55",
                  style: TextStyle(fontSize: 19,
                      color: Colors.green, fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
