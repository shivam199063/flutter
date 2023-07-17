import 'package:flutter/material.dart';
import 'package:http/http.dart';

main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: MyCloud(),
    ),
  ));
}

class MyCloud extends StatefulWidget {
  const MyCloud({super.key});

  @override
  State<MyCloud> createState() => _MyCloudState();
}

class _MyCloudState extends State<MyCloud> {
  cloud() async {
    var url = Uri.http('18.61.57.58', 'index.html');
    Response response = await get(url);

    debugPrint(response.body);
    return response.body;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            height: 200,
            width: 200,
            color: Colors.cyanAccent,
            child: Text("hello")),
        TextButton(
            onPressed: cloud,
            child: Container(
                height: 100,
                width: 200,
                color: Colors.deepOrange,
                child: Text("click me")))
      ],
    );
  }
}
