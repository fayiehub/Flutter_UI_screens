import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UI Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const MyHomePage(title: 'Points'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
          IconButton(
              onPressed: () {}, icon: Icon(Icons.notification_add_rounded))
        ],
      ),
      drawer: Icon(Icons.menu),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(45.0),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Points",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                  Text(
                    "1248",
                    style: TextStyle(fontSize: 27, fontWeight: FontWeight.w700),
                  )
                ]),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Earnings",
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                Text("History",
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                Text("Redeem",
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                Text("Info",
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(38.0),
                  child: Text("How It Works",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w700)),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                      "One Point is equivalent to Ksh 125 1 Point earned = Ksh 1",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
