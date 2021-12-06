import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Fud()));

class Fud extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Menu",
          style: TextStyle(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.w700),
        ),

        //centerTitle: true,
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search ",
                  prefixIcon: Icon(Icons.search),
                  border: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  // contentPadding: EdgeInsets.zero,
                  // filled: true,
                  // fillColor: Colors.white,
                ),
              ),
            )),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 24),
            child: Row(
              children: [
                Container(
                  // width: ,
                  // height: 34,
                  decoration: BoxDecoration(),
                  padding: EdgeInsets.all(6),
                  child: Material(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    child: Padding(
                        padding: EdgeInsets.all(3),
                        child: Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                        )),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Colors.greenAccent,
      body: SafeArea(
        child:GridView.count(
          crossAxisSpacing: 3,
          mainAxisSpacing: 3,
          crossAxisCount: 2,
          children: [
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(13))),
              elevation: 5,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(13)),
                child: Stack(
                  children: [
                    Image.network(
                        "https://media.istockphoto.com/photos/fresh-juice-picture-id177050580?b=1&k=20&m=177050580&s=170667a&w=0&h=3Tkgj8XCNdOGKx0NHSY4R_pqic2Oui6euCjRClq0r2o="),
                    Container(
                      margin: EdgeInsets.only(top: 165, left: 5),
                      child: Text(
                        "Pear & Orange",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                            padding: EdgeInsets.only(top: 185),
                            child: Icon(Icons.access_time_filled_outlined,
                                color: Colors.green, size: 18)),
                        Container(
                          padding: EdgeInsets.only(top: 185),
                          child: Text(
                            "20 min",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, color: Colors.green),
                          ),
                        ),
                        Container(
                            padding: EdgeInsets.only(top: 185, left: 18),
                            child: Icon(Icons.star, color: Colors.red)),
                        Container(
                          padding: EdgeInsets.only(top: 185, left: 20),
                          child: Text(
                            "4.8",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, color: Colors.red),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 210, left: 10),
                      child: Text(
                        "25.00",
                        style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(13))),
              elevation: 5,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(13)),
                child: Stack(
                  children: [
                    Image.network(
                        "https://images.unsplash.com/photo-1585903211716-c5633c87554d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTR8fG1lYXQlMjBmb29kfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=6"),
                    Container(
                      margin: EdgeInsets.only(top: 170, left: 5),
                      child: Text(
                        "Meat & Mushrooms",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                            padding: EdgeInsets.only(top: 185),
                            child: Icon(Icons.access_time_filled_outlined,
                                color: Colors.green, size: 18)),
                        Container(
                          padding: EdgeInsets.only(top: 185),
                          child: Text(
                            "30 min",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, color: Colors.green),
                          ),
                        ),
                        Container(
                            padding: EdgeInsets.only(top: 185, left: 18),
                            child: Icon(
                              Icons.star,
                              color: Colors.red,
                            )),
                        Container(
                          padding: EdgeInsets.only(top: 185, left: 20),
                          child: Text(
                            "5.0",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, color: Colors.red),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 210, left: 10),
                      child: Text(
                        "37.00",
                        style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(13))),
              elevation: 5,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(13)),
                child: Stack(
                  children: [
                    Image.network(
                        "https://media.istockphoto.com/photos/multigrain-toast-with-fried-egg-and-roasted-tomatoes-picture-id1036880806?b=1&k=20&m=1036880806&s=170667a&w=0&h=ZDctl2Qum4f195aInMP6dzo0INQthSp7iW3xpDWN_8o="),
                    Container(
                      margin: EdgeInsets.only(top: 165, left: 5),
                      child: Text(
                        "Egg & Bread",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                            padding: EdgeInsets.only(top: 185),
                            child: Icon(Icons.access_time_filled_outlined,
                                color: Colors.green, size: 18)),
                        Container(
                          padding: EdgeInsets.only(top: 185),
                          child: Text(
                            "10 min",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, color: Colors.green),
                          ),
                        ),
                        Container(
                            padding: EdgeInsets.only(top: 185, left: 18),
                            child: Icon(Icons.star, color: Colors.red)),
                        Container(
                          padding: EdgeInsets.only(top: 185, left: 20),
                          child: Text(
                            "4.7",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, color: Colors.red),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 210, left: 10),
                      child: Text(
                        "20.00",
                        style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(13))),
              elevation: 5,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(13)),
                child: Stack(
                  children: [
                    Image.network(
                        "https://media.istockphoto.com/photos/pancakes-with-berries-and-maple-syrup-picture-id161170090?b=1&k=20&m=161170090&s=170667a&w=0&h=pgtnBdQKLvZz7WOmBcZhY_EXDGeATOS2jc_FJF9GbnE="),
                    Container(
                      margin: EdgeInsets.only(top: 165, left: 5),
                      child: Text(
                        "Sweeet pancake",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                            padding: EdgeInsets.only(top: 185),
                            child: Icon(
                              Icons.access_time_filled_outlined,
                              color: Colors.green,
                              size: 18,
                            )),
                        Container(
                          padding: EdgeInsets.only(top: 185),
                          child: Text(
                            "10 min",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, color: Colors.green),
                          ),
                        ),
                        Container(
                            padding: EdgeInsets.only(top: 185, left: 18),
                            child: Icon(Icons.star, color: Colors.red)),
                        Container(
                          padding: EdgeInsets.only(top: 185, left: 20),
                          child: Text(
                            "4.9",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, color: Colors.red),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 210, left: 10),
                      child: Text(
                        "30.00",
                        style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
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
