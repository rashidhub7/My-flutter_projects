import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Item(),
));

class Item extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        // leading: Icon(Icons.arrow_back),
        title: Text(
          "Item Details",
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(29),
                  height: 700,
                  width: 20,
                  child: Icon(Icons.search),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Container(
                    padding: EdgeInsets.all(0),
                    width: 50,
                    child: Icon(Icons.shopping_cart),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 180,
            width: 270,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9u2jLFXRrGWZQGo5T7wKZiV2MxNG8QfVWlA&usqp=CAU"),
                  fit: BoxFit.cover),
            ),
            padding: EdgeInsets.only(top: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.favorite,
                        color: Colors.blueGrey,
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 210),
            child: Text("APPLE iPhone 12 Pro(Pacific Blue,128 GB)",
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w600)),
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.only(right: 280),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 380),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Rate 3.4",
                style: TextStyle(color: Colors.yellow),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 390),
            child: Text("OMR 90.000 ",
                style:
                TextStyle(color: Colors.red, fontWeight: FontWeight.w700)),
          ),
          Container(
              width: 300,
              height: 200,
              child: Image.network(

                  "data:image/jpeg;base64,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")),



          Divider(
            thickness: 2,
            color: Colors.grey,
          ),
          Container(
            padding: EdgeInsets.only(right: 390),
            child: Text(
              "About Product",
              style:
              TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
            ),
          ),
          Container(
            child: Text(
              "View Details..",
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(6),
          ),
          Container(
            child: BottomAppBar(

              color: Colors.red,
              child: Text("  -   ADD TO CART    -", style: TextStyle(color: Colors.white)),
            ),
          )
        ],
      ),
    );
    ;
  }
}