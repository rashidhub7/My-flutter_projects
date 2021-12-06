import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/cart.dart';

import 'item.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Homepage(),
));

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "assets/images/sam.jpg",
      "assets/images/final.jpg",
      "assets/images/oman.jpg",
      "assets/images/moto.jpg",
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "عمان فنس/Oman Phones",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        centerTitle: true,
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(56),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search products...",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  contentPadding: EdgeInsets.zero,
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            )),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 24),
            child: Row(
              children: [
                Container(
                  width: 34,
                  height: 34,
                  decoration: BoxDecoration(),
                  padding: EdgeInsets.all(6),
                  child: Icon(
                    Icons.add_alert,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              child: ListTile(
                title: Text(
                  "item details",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                ),
                leading: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => Item()));
                },
              ),
            ),
            Container(
              child: ListTile(
                title: Text(
                  "My Cart(2)",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                ),
                leading: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => Cart()));
                },
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(right: 395),
            child: Text("OMR 90.000",style: TextStyle(color: Colors.red,fontWeight: FontWeight.w800,fontSize: 16),),),
          Container(
            width: 300,
            height: 180,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNnoUZC5g5RsyvOr9ogAEQ3R8hFV6v3SbZTQ&usqp=CAU"),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            child: Padding(
              padding: (EdgeInsets.only(right: 400)),
              child: Text(
                "Mobile Phones",
                style:
                TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 380),
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith(
                          (states) => Colors.red)),
              onPressed: () {},
              child: Text(
                "VIEW ALL",
                style: TextStyle(color: Colors.white, fontSize: 9),
              ),
            ),
          ),
          Center(
              child: Container(
                width: 430,
                height: 258,
                child: GridView.builder(
                  itemCount: images.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 2.0,
                    mainAxisSpacing: 2.0,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Image.asset(images[index]);
                  },
                ),
              )),
          Container(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: Container(
                child: BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  backgroundColor: Colors.white,
                  selectedFontSize: 14,
                  unselectedFontSize: 14,
                  onTap: (value) {},
                  items: [
                    BottomNavigationBarItem(
                      title: Text(
                        'Home',
                        style: TextStyle(color: Colors.red),
                      ),
                      icon: Icon(
                        Icons.home,
                        color: Colors.red,
                      ),
                    ),
                    BottomNavigationBarItem(
                      title: Text("Search"),
                      icon: Icon(Icons.search),
                    ),
                    BottomNavigationBarItem(
                      title: Text('Categories'),
                      icon: Icon(Icons.category_outlined),
                    ),
                    BottomNavigationBarItem(
                      title: Text('Cart'),
                      icon: Icon(Icons.shopping_cart_rounded),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
