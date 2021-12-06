import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Insta()));

class Insta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "assets/images/aa.jpg",
      "assets/images/a.jpg",
      "assets/images/b.jpg",
      "assets/images/c.jpg",
      "assets/images/d.jpg",
      "assets/images/a.jpg",
      "assets/images/aa.jpg",
      "assets/images/a.jpg",
    ];

    return Scaffold(


      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(icon: Icon(Icons.home,color: Colors.grey,), onPressed: () {}),
            Padding(
              padding:EdgeInsets.only(left: 50) ,
            ),
            IconButton(icon: Icon(Icons.search,color: Colors.grey,), onPressed: () {}),
            Spacer(),
            IconButton(icon: Icon(Icons.favorite_outlined,color: Colors.grey,), onPressed: () {}),

            Padding(
              padding:EdgeInsets.only(right: 50) ,
            ),
            IconButton(icon: Icon(Icons.person,color: Colors.red), onPressed: () {}),
          ],
        ),
      ),
      floatingActionButton:

      FloatingActionButton(child: Icon(Icons.add),backgroundColor: Colors.red, onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Instagram",
          style: GoogleFonts.raleway(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 19,
              fontWeight: FontWeight.w700),
        ),
        leading: Icon(Icons.camera_alt_rounded, color: Colors.black),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.send_sharp, color: Colors.black),
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 100, left: 30),
              ),
              CircleAvatar(
                radius: 32,
                backgroundColor: Colors.pink,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "data:image/png;base64,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"),
                  radius: 30,
                ),
              ),
              Row(
                children: [
                  Align(
                    child: Container(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                          "crazy_username\n"
                              "Marvel|DC|\n"
                              "Random pics\n"
                              "www.someurl.com",
                          style: TextStyle(color: Colors.grey, fontSize: 11)),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Divider(
            height: 5,
            thickness: 1,
            indent: 30,
            endIndent: 30,
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 100),
                child: Text("700",
                    style:
                    TextStyle(fontSize: 14, fontWeight: FontWeight.w800)),
              ),
              Container(
                padding: EdgeInsets.only(left: 50),
                child: Text("18m",
                    style:
                    TextStyle(fontSize: 14, fontWeight: FontWeight.w800)),
              ),
              Container(
                padding: EdgeInsets.only(left: 50),
                child: Text("10",
                    style:
                    TextStyle(fontSize: 14, fontWeight: FontWeight.w800)),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 100),
                child: Text("Posts",
                    style: TextStyle(fontSize: 10, color: Colors.grey)),
              ),
              Container(
                padding: EdgeInsets.only(left: 45),
                child: Text("Followers",
                    style: TextStyle(fontSize: 10, color: Colors.grey)),
              ),
              Container(
                padding: EdgeInsets.only(left: 27),
                child: Text("Following",
                    style: TextStyle(fontSize: 10, color: Colors.grey)),
              ),
            ],
          ),
          Divider(
            height: 30,
            thickness: 1,
            indent: 30,
            endIndent: 30,
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 80),
                height: 40.0,
                child: RaisedButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0)),
                  padding: EdgeInsets.all(0.0),
                  child: Ink(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.blue, Colors.purple],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(5)),
                    child: Container(
                      constraints: BoxConstraints(maxWidth: 150, minHeight: 2),
                      alignment: Alignment.center,
                      child: Text(
                        "Follow",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 120),
                child: Icon(Icons.send_sharp, color: Colors.black),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 15, left: 50),
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 30),
                child: CircleAvatar(
                  radius: 26,
                  backgroundColor: Colors.pink,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "data:image/jpeg;base64,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"),
                    radius: 25,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: CircleAvatar(
                  radius: 26,
                  backgroundColor: Colors.pink,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "data:image/jpeg;base64,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"),
                    radius: 25,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: CircleAvatar(
                  radius: 26,
                  backgroundColor: Colors.pink,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "data:image/jpeg;base64,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"),
                    radius: 25,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: CircleAvatar(
                  radius: 26,
                  backgroundColor: Colors.pink,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "data:image/jpeg;base64,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"),
                    radius: 25,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: CircleAvatar(
                  radius: 26,
                  backgroundColor: Colors.pink,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "data:image/jpeg;base64,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"),
                    radius: 25,
                  ),
                ),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 8)),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 40),
                child: Text("Captain",
                    style:
                    TextStyle(fontSize: 10, fontWeight: FontWeight.w600)),
              ),
              Container(
                padding: EdgeInsets.only(left: 40),
                child: Text("Iron Man",
                    style:
                    TextStyle(fontSize: 10, fontWeight: FontWeight.w600)),
              ),
              Container(
                padding: EdgeInsets.only(left: 31),
                child: Text("the_Thor",
                    style:
                    TextStyle(fontSize: 10, fontWeight: FontWeight.w600)),
              ),
              Container(
                padding: EdgeInsets.only(left: 31),
                child: Text("the_Hulk",
                    style:
                    TextStyle(fontSize: 10, fontWeight: FontWeight.w600)),
              ),
              Container(
                padding: EdgeInsets.only(left: 33),
                child: Text("Marvel",
                    style:
                    TextStyle(fontSize: 10, fontWeight: FontWeight.w600)),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            child: Center(
              child: SingleChildScrollView(
                child: Container(
                  width: 450,
                  height: 85,
                  child: GridView.builder(
                    itemCount: images.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 0,
                      mainAxisSpacing: 1,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return Image.asset(images[index]);
                    },
                  ),
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }
}
