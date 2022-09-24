import 'package:flutter/material.dart';
import 'package:triplite_task/screens/Screen_5.dart';
import 'package:triplite_task/screens/screen_4.dart';
class Screen_3 extends StatelessWidget {
  const Screen_3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            "assets/Image/Logo Color.png",
            width: 300,
            height: 250,
          ),
          Image.asset("assets/Image/Vector2 Image.png"),
          Text(
            "Select The Date  ",
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "select the day, book your ticket ,we give",
              style: TextStyle(fontSize: 10),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8, right: 8, top: 1),
            child: Text(
              "you the best price, we guarentied!",
              style: TextStyle(fontSize: 10),
            ),
          ),
          Flexible(
              child: Image.asset(
            "assets/Image/Img_2.jpg",
            width: 50,
            height: 50,
          )),
          Flexible(
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white60)),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Screen_5()));
                    },
                    child: const Text(
                      "Skip",
                      style: TextStyle(color: Colors.red),
                    )),
                const SizedBox(
                  width: 190,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white60)),
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Screen_4()));
                    },
                    child: const Text(
                      "Next",
                      style: TextStyle(color: Colors.red),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
