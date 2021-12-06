import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Homepage(),
));

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> with TickerProviderStateMixin{


  late AnimationController scaleController;
  late Animation<double> scaleAnimation;

  bool hide=false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    scaleController=AnimationController(
      vsync: this,
      duration: Duration(
          milliseconds: 500
      ),
    );

    scaleAnimation= Tween<double>(
        begin: 1.0,
        end: 30.0
    ).animate(scaleController);
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(

          image: DecorationImage(
              image:NetworkImage("https://images.unsplash.com/photo-1520975661595-6453be3f7070?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fG1lbiUyMGZhc2hpb258ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"), fit: BoxFit.cover),
        ),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(.4),
                Colors.black.withOpacity(.4),
              ])),


          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              const Text(
                "Brand New Perspective",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Lets Start with our summer collection",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(height: 100),
              InkWell(
                onTap: (){

                  setState(() {
                    hide=true;
                  });
                  scaleController.forward();
                },


                child:   Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: const Center(
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(50)),
                child: const Center(

                  child: Text(
                    "Create Account",
                    style: TextStyle(color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
