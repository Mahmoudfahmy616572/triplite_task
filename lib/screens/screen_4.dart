import 'package:flutter/material.dart';
import 'package:triplite_task/screens/Screen_5.dart';

class Screen_4 extends StatelessWidget {
  const Screen_4({Key? key}) : super(key: key);

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
          Image.asset("assets/Image/Vector3 Image.png"),
          const Text(
            "Enjoy Your Trip",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "enjoy your holiday! don't forget to take",
              style: TextStyle(fontSize: 10),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8, right: 8, top: 1),
            child: Text(
              "a photo and share to the world ",
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
                  width: 125,
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
                    child: Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: const Text(
                        "Lets'Go..!",
                        style: TextStyle(color: Colors.red),
                      ),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
