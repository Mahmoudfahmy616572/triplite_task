import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:triplite_task/ParisProfile.dart';
import 'package:triplite_task/SideBar.dart';
import 'Values/UsedColor.dart';

class Tours extends StatefulWidget {
  const Tours({Key? key}) : super(key: key);

  @override
  State<Tours> createState() => _ToursState();
}

class _ToursState extends State<Tours> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: UsedColor.AppBar,
          bottomOpacity: 0.0,
          elevation: 0.0,
          title: Row(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SideBar()));
                    },
                    child: Image.asset(
                      "assets/Image/Side Manu Arrow.png",
                      height: 14,
                      width: 25,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 110),
                    child: Text(
                      'Tours',
                      style: TextStyle(
                          color: UsedColor.Location,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          )),
      body: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          children: [
            Row(
              children: const [
                Text(
                  "Popular Destination",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xFFF04E59)),
                )
              ],
            ),
            const SizedBox(
              height: 3,
            ),
            Row(
              children: const [
                Text(
                  "10 Tours Avilable",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF707070)),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ParisProfile()));
                    },
                    child: Image.asset("assets/Image/CityParis.png")),
                Image.asset("assets/Image/CityIndia.png"),
                Image.asset("assets/Image/Citynewyork.png"),
                Image.asset("assets/Image/CityAngeles.png"),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Stack(
                  children: [
                    Image.asset("assets/Image/Offer.png"),
                    Padding(
                      padding: const EdgeInsets.only(left: 60, top: 95),
                      child: Container(
                        width: 255,
                        height: 118,
                        decoration: BoxDecoration(color: Colors.white),
                        child: Column(
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: AutoSizeText(
                                'say yes to iconic snow Catamout Hillsdale,New Yourk',
                                style: TextStyle(
                                    fontSize: 10, color: Color(0xFF111111)),
                                minFontSize: 18,
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Text(
                              "Book your Holiday Packing Today",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            Row(
              children: const [
                Text(
                  "Discover New Place",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xFFF04E59)),
                )
              ],
            ),

            Row(
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ParisProfile()));
                    },
                    child: Image.asset("assets/Image/Places1.png")),
                SizedBox(
                  width: 50,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ParisProfile()));
                    },
                    child: Image.asset("assets/Image/Places 2.png")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
