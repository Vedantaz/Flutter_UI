import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
// final double cornerRadius;

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 194, 2, 215),
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // backgroundColor: Theme.of(context).primaryColorLight,
          backgroundColor: const Color.fromARGB(255, 11, 223, 4),
          foregroundColor: Colors.white,
          title: const Text(
            "Flutter Btn",
            style: TextStyle(fontSize: 12),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: const Color.fromARGB(255, 186, 10, 195),
                  height: 100,
                  width: 1370,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'First SilverAppBar',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 6.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    // decoration: BoxDecoration(
                    //   borderRadius: BorderRadius.circular(10),
                    //   // Adjust the radius as needed
                    // ),
                    color: const Color.fromARGB(255, 4, 60, 200),
                    width: 675,
                    height: 100,
                  ),
                  Container(
                    // decoration: BoxDecoration(
                    //   borderRadius: BorderRadius.circular(10),
                    //   // Adjust the radius as needed
                    // ),
                    color: const Color.fromARGB(255, 123, 158, 245),
                    width: 675,
                    height: 100,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0), // Top margin
              child: Container(
                // Container with yellow background
                color: Colors.yellow,
                height: 200.0, // Set desired height
                width: 2000.0, // Set desired width
                child: Column(
                  // Inner Column
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      // Padding for image with bottom margin
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child:
                          Image.asset('../logo.jpg', height: 100, width: 100),
                    ),
                    const Text(
                      'Second SilverAppBar',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    color: const Color.fromARGB(255, 254, 141, 12),
                    width: 200,
                    height: 50,
                  ),
                  Container(
                    color: Colors.yellow,
                    width: 200,
                    height: 50,
                  ),
                  Container(
                    color: Colors.yellow,
                    width: 200,
                    height: 50,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 6.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    color: const Color.fromARGB(255, 0, 255, 183),
                    width: 200,
                    height: 50,
                  ),
                  Container(
                    color: const Color.fromARGB(255, 0, 255, 183),
                    width: 200,
                    height: 50,
                  ),
                  Container(
                    color: const Color.fromARGB(255, 0, 255, 183),
                    width: 200,
                    height: 50,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 6.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    color: const Color.fromARGB(255, 255, 59, 59),
                    width: 200,
                    height: 50,
                  ),
                  Container(
                    color: const Color.fromARGB(255, 255, 59, 59),
                    width: 200,
                    height: 50,
                  ),
                  Container(
                    color: const Color.fromARGB(255, 255, 59, 59),
                    width: 200,
                    height: 50,
                  ),
                ],
              ),
            ),
          ],
        )

        // floatingActionButton: FloatingActionButton(
        //   onPressed: _incrementCounter,
        //   tooltip: 'Increment',
        //   child: const Icon(Icons.add),
        // ), // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
