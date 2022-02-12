
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pie_chart/pie_chart.dart';

void main()=>runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home:DashbordScreen() ,
));

class DashbordScreen extends StatefulWidget {
  const DashbordScreen({Key? key}) : super(key: key);

  @override
  _DashbordScreenState createState() => _DashbordScreenState();
}

class _DashbordScreenState extends State<DashbordScreen> {

  Map<String, double> dataMap ={
    "Class \n 1h 20m": 8,
    "Study \n 20m": .7,
    "Free-Time \n 30m":1.3
  };

  Widget centerText()  {
    return Center(
      child: Column(
        children: [
          Text("Total"),
          Text("2hr 40min")
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        leading:const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBw0NDw0NDQ0NDQ0NDQ0NDQ0NDQ8NDQ0NFREWFhURFRUYHSggGBolGxUVITEhJSkrLi4uFx8/OD8tNygtLisBCgoKDQ0NDg0NDysZFRkrKzc3Ny0rKy0tLTctLSsrKy0tKy0rLS0rLS0tLS0tLSstLS0rKysrLSsrKysrLSsrK//AABEIALcBEwMBIgACEQEDEQH/xAAYAAEBAQEBAAAAAAAAAAAAAAABAAIGB//EABYQAQEBAAAAAAAAAAAAAAAAAAABEf/EABgBAQEBAQEAAAAAAAAAAAAAAAABAwUC/8QAFBEBAAAAAAAAAAAAAAAAAAAAAP/aAAwDAQACEQMRAD8A9RSDF1FUgKhUhQCAQQBBAVUVCgKCAApZooFLNBMmsqCs1qs0GaKWaKKzWqzQZrNarNFZrNarNBms1qs0UaggdakEYqg0CoIAgRRUEAQSAAs0BRTQArNarIoFNCjNFNFBmims0BWa1WaKzWaaKDNFNZorNZrVZoM1mmiqoQ1IOtSCMkCAQQBBAVIUAkECoQoCims0VMmiqC0VABRTWaAtFNZAVmtVmiss1qs0Vms1qs0GazWqxRRWaazVAkgdbQkjJBBBBAVLQgQVAIIAhUKCtCoFFCoUQ1UABSAFFVFAVmmsWiqs1VmiqsU1mgKzVazaqi1m02s0BUEDrkEjJDUEVBKgNQQIIAkFoKs0gAFQqqhWigmSyCoWigKzabWbRRWaazaArNNZoorFarFUFZprNFFZpoAAhB1qAGRAQqQAEDUBA0AQhQQqrNoprKrIEWjRQQWjQVFotFoKs2q1miis0s2gqzVazaqqs0s2gKzVaNFFZptZtBBIHVoDUZnRqAELQCQQIIaBAApZtQoKiqs0CyhaCrJZtBVm01mipmlmgKzTWaKKzWqzVGaKaBWazWqzRBWaazRQkgdVoCRmloAHVoAp0aNGg1rNq0aB0aNFA6KtZ0CzVaLQWijWbQNotGiiqhWs6BtZqZoqrNNrNUVZqotBUVazaKqzTrNoCs1Ws2gizqB1I0W1jUZt6NGrRTq1mrQNFo0ARoGgdVotGgdFGi0FaLRrNoG0Wi0aKdA0aCFq0WgKKrRaKKKqKoBUKKmTWaArNatZoM1mms0AkAdToGjUZlUaNFOhazoEDRaBtGi0aB1azo0GtZtGi0DWarWdFOgagQ1AFQdGiiiq0WqCiq1m0FRVooooqtFoCs2m1igrWbVWbQSZIOn0aFqMzQNWgdGjQKRUyBGoAhVRQVrNIoDQQKEgCCAIKgUUGsqCjVRRRRaqKCrNqrNBWsU1mgLWbTWaKtQ1COm1JI8IJAFoQK0JAEkDKSAUVIBQkAopQrNFqQBmpCgVJRmipCs2ihAKzUgZrNSFZrNSAJIR/9k="),
            radius: 1.0,
          ),
        ),
        backgroundColor: Colors.white,
        title: const Text(
          "Michael",
          style: TextStyle(color: Colors.black),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.settings,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.width/25),
                child: Center(
                  child: Text("Dashboard",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 30),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: PieChart(
                    dataMap: dataMap,
                    colorList: [Color(0xff39b1ed),Colors.orange,Color(0xff38d638)],
                    chartType: ChartType.ring,
                    initialAngleInDegree: 50,
                    centerText: "Total \n2hr 40min",
                    centerTextStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                    ringStrokeWidth: 12,
                    chartRadius: MediaQuery.of(context).size.width / 2,
                    legendOptions: LegendOptions(
                        showLegendsInRow: true,
                        legendPosition: LegendPosition.bottom
                    ),
                    chartValuesOptions: ChartValuesOptions(
                        showChartValueBackground: false,
                        showChartValues: false
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 40,left: 40),
                child: Divider(
                  thickness: .5,
                  color: Color(0xffdce1e3),
                ),
              ),
              Center(
                child: Column(
                  children: [
                    Text("Free-time Usage",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          fontSize: 30),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15,right: 40,left: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text("Used",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                              Text("30m",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color(0xff38d638)),),
                            ],
                          ),
                          Column(
                            children: [
                              Text("Max",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                              Text("2h",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color(0xff38d638)),),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, right: 40,left: 40),
                      child: Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          child: LinearProgressIndicator(
                            backgroundColor: Color(0xffdce1e3),
                            minHeight: 20,
                            value: .3,
                            valueColor: AlwaysStoppedAnimation<Color>(Color(0xff38d638)),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 370,
                      height: 30,
                      padding: EdgeInsets.only(top: 3),
                    ),
                  ],
                ),
              ),

              Container(
                width: 370,
                height: 50,
                padding: EdgeInsets.only(top: 7),
                child: OutlinedButton(
                  onPressed: null,
                  style: ButtonStyle(
                    side: MaterialStateProperty.all(BorderSide(color: Colors.blue)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        //side: BorderSide(width: 5.0, color: Colors.blue),
                      ),
                    ),
                  ),
                  child: const Text("Extend Free-time",
                      style: TextStyle(
                        color: Colors.blue,
                      )),
                ),
              ),

              Container(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "Change Time Restrictions",
                  style: GoogleFonts.lato(color: Colors.blue),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                child: Divider(
                  thickness: 0.5,
                  color: Colors.grey,
                  endIndent: 55,
                  indent: 55,
                ),
              ),
              Container(
                child: Text(
                  "By Devices",
                  style: GoogleFonts.lato(
                      color: Colors.black, fontWeight: FontWeight.w600),
                ),
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 100,top: 20),

                    height:120,
                    width: 220,
                    child: Image.network("https://ecdn.teacherspayteachers.com/thumbitem/Selfie-Phone-Art-Project-2746863-1471864973/original-2746863-1.jpg"),
                ),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Column(
                        children: [
                          Text(
                            "Adi's Phone",
                            style: GoogleFonts.lato(
                                color: Colors.black, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "40m",
                            style: GoogleFonts.lato(
                                color: Colors.blue,
                                fontWeight: FontWeight.w500,
                                fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),


            ],
          ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 100,top: 20),

                    height: 120,
                    width: 220,
                    child: Image.network("https://t4.ftcdn.net/jpg/02/06/84/39/360_F_206843915_5rPRsyBPBW2CSVwt3iO7NXt9Cy5M5HS0.jpg"),
                  ),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Column(
                        children: [
                          Text(
                            "Adi's Laptop",
                            style: GoogleFonts.lato(
                                color: Colors.black, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "1h 30m",
                            style: GoogleFonts.lato(
                                color: Colors.blue,
                                fontWeight: FontWeight.w500,
                                fontSize: 15),
                          )
                        ],
                      ),
                    ),
                  ),


                ],
              ),
              Container(
                child: Text("See All Devices",style: GoogleFonts.lato(color: Colors.blue),),
              ),
        ],
          ),

      ),
    ),
    );
  }
}