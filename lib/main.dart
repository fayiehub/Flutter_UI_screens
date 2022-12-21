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
      backgroundColor: Colors.amber,
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
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(26),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Points",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold)),
                    Text(
                      "1248",
                      style:
                          TextStyle(fontSize: 21, fontWeight: FontWeight.w900),
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
            Container(
              width: 250,
              child: Column(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(38.0),
                      child: Text("How It Works",
                          style: TextStyle(
                              fontSize: 21, fontWeight: FontWeight.w700)),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: RichText(
                          text: TextSpan(
                              text: "One Point ",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w700),
                              children: <TextSpan>[
                            TextSpan(
                                text: "is equivalent to ",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500)),
                            TextSpan(
                              text: "Ksh 125 \n",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w700),
                            ),
                            TextSpan(
                              text: "1 point earned = Ksh 1",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                            )
                          ])),
                    ),
                  ),
                  Container(
                    width: 200,
                    child: Divider(
                      thickness: 1,
                      color: Color.fromARGB(138, 48, 47, 47),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Center(
                        child: RichText(
                      text: TextSpan(
                          text:
                              "Spend over Ksh 1000 per order and earn double the points",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500)),
                    )),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: RichText(
                          text: TextSpan(
                              text: "You have referred ",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                              children: <TextSpan>[
                            TextSpan(
                                text: "10 ",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w700)),
                            TextSpan(
                              text: "friends",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            ),
                          ])),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 250,
                    child: FloatingActionButton(
                      onPressed: () {
                        // code to execute when the button is pressed
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      backgroundColor: Color.fromARGB(255, 255, 127, 7),
                      child: Text('Share your link',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w900,
                              color: Colors.black)),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  width: 80,
                  height: 30,
                  child: FloatingActionButton(
                    onPressed: () {
                      // code to execute when the button is pressed
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    backgroundColor: Color.fromARGB(255, 255, 189, 7),
                    child: Text('Home',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w900,
                            color: Colors.black)),
                  )),
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward)),
              IconButton(onPressed: () {}, icon: Icon(Icons.comment_rounded)),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.shopping_cart_checkout_rounded)),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.person_add_alt_1_rounded))
            ],
          ),
        ),
      ),
    );
  }
}
