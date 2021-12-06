import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Cart(),
));

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text(
          "My Cart(2)",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(right: 250),
            child: Text(
              "APPLE iPhone 12 Pro(Pacific Blue,128 GB)",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 40, left: 390),
            height: 150,
            child: Image.network(
                "data:image/jpeg;base64,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"),
          ),
          Row(
            children: [
              Text(
                "OMR 90.000",
                style:
                TextStyle(color: Colors.red, fontWeight: FontWeight.w800),
              ),

              Container(
                padding: EdgeInsets.only(left: 160),

                child: Icon(
                  Icons.delete,
                  color: Colors.grey,
                  size: 21,
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 169),
                  ),
                  Icon(
                    Icons.do_disturb_on,
                    color: Colors.grey,
                    size: 21,
                  ),

                  Text("1",style: TextStyle(color: Colors.grey),),


                  Icon(
                    Icons.add_circle,
                    color: Colors.grey,
                    size: 21,
                  ),

                ],
              ),
            ],
          ),
          Divider(
            thickness: 2,
            color: Colors.grey,
          ),





          Container(
            padding: EdgeInsets.only(right: 250),
            child: Text(
              "MOTOROLA G10 Power (Aurora Grey,64 GB)(4 GB RAM) ",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 40, left: 390),
            height: 150,
            child: Image.network("data:image/jpeg;base64,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"),
          ),
          Row(
            children: [
              Text(
                "OMR 10.000",
                style:
                TextStyle(color: Colors.red, fontWeight: FontWeight.w800),
              ),

              Container(
                padding: EdgeInsets.only(left: 160),

                child: Icon(
                  Icons.delete,
                  color: Colors.grey,
                  size: 21,
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 169),
                  ),
                  Icon(
                    Icons.do_disturb_on,
                    color: Colors.grey,
                    size: 21,
                  ),

                  Text("1",style: TextStyle(color: Colors.grey),),


                  Icon(
                    Icons.add_circle,
                    color: Colors.grey,
                    size: 21,
                  ),

                ],
              ),

            ],
          ),
          Divider(
            thickness: 2,
            color: Colors.grey,
          ),


          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 126,right: 150),
              ),

              ElevatedButton(

                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith(
                            (states) => Colors.white)),
                onPressed: () {},
                child: Text(
                  "TOTAL 100.000",
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900),
                ),
              ),

              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith(
                            (states) => Colors.red)),
                onPressed: () {},
                child: Text(
                  "CHECKOUT",
                  style: TextStyle(color: Colors.white,),
                ),
              ),


            ],

          ),



        ],
      ),
    );
  }
}
