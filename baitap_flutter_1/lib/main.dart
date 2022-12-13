import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Column(
                children: [
                  const Text(
                    "Hang thu nhat",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey),
                  ),
                  Row(
                    children: const [
                      Expanded(
                        child: Text(
                          "Hang thu hai 1",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "Hang thu hai 2",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                  RichText(
                      text: const TextSpan(
                          text: 'Hang thu ba',
                          style: TextStyle(color: Colors.black45),
                          children: [
                        TextSpan(
                            text: ' bold 1',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.yellow)),
                      ])),
                ],
              ),
              const Divider(
                thickness: 4,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.green,
                  ),
                  Positioned(
                    left: 50,
                    top: 50,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.red,
                    ),
                  ),
                  Positioned(
                    left: 100,
                    top: 100,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.yellow,
                    ),
                  ),
                ],
              )
          ],
        ),
            )),
      ),
    );
  }
}
