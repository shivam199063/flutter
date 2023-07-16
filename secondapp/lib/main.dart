import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: SafeArea(
        child: Row(
            // verticalDirection: VerticalDirection.down,
            // crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 100,
                height: 200,
                color: Colors.amber,
              ),
              Container(
                width: 100,
                height: 200,
                color: Colors.deepOrange,
              ),
              Container(
                width: 100,
                height: 200,
                color: Colors.green,
              )
            ]),
      ),
    ));
  }
}
