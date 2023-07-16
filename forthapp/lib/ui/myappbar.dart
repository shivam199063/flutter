import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  myphotoadd() {
    debugPrint("photo has been added....");
  }

  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.accessible_forward),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          // color: Colors.deepPurple,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(5.0, 5.0),
                      color: Colors.black,
                      spreadRadius: 2,
                      blurRadius: 10,
                    )
                  ],
                  borderRadius: BorderRadius.circular(150),
                  color: Colors.cyanAccent,
                  border: Border.all(width: 8, color: Colors.white),
                ),
                child: CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage("images/saini.jpg"),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                  onTap: () {
                    debugPrint("my name is saini");
                  },
                  onDoubleTap: () {
                    debugPrint("double tab saini");
                  },
                  child: Text(
                    "Shivam Saini",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )),
              Text("Human Being"),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.black,
                height: 10,
                thickness: 5,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 400,
                child: Card(
                  color: Colors.redAccent,
                  child: ListTile(
                    onLongPress: () {},
                    title: Text(
                      "+91 6396909996",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    leading: Icon(Icons.phone),
                    trailing: FlutterLogo(),
                    subtitle: Text("Official Phone"),
                  ),
                ),
              ),
              Container(
                width: 400,
                child: Card(
                  color: Colors.redAccent,
                  child: ListTile(
                    onLongPress: () {},
                    title: Text(
                      "shivam199063@gmail.com",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    leading: Icon(Icons.email),
                    trailing: FlutterLogo(),
                    subtitle: Text("Official Email"),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        leading: CircleAvatar(
          backgroundColor: Colors.redAccent,
          radius: 30,
          child: Text("Saini"),
        ),
        backgroundColor: Colors.amberAccent,
        title: Text("Saini Profile"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: myphotoadd,
            icon: Icon(Icons.add_a_photo),
          ),
        ],
      ),
    );
  }
}
