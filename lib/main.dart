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
                Expanded(
                  // Use Expanded for 100% width
                  child: Container(
                    color: const Color.fromARGB(255, 186, 10, 195),
                    height: 100,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'First SilverAppBar',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 6.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(width: 5),
                  Expanded(
                    flex: 10, // Adjust flex value as needed
                    child: Container(
                      color: const Color.fromARGB(255, 4, 60, 200),
                      height: 100,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    flex: 10, // Adjust flex value as needed
                    child: Container(
                      color: const Color.fromARGB(255, 123, 158, 245),
                      height: 100,
                    ),
                  ),
                  const SizedBox(width: 5),
                ],
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(top: 10.0),
            //   child: Container(
            //     color: Colors.yellow,
            //     height: 200.0,
            //     width: 2000.0,
            //     child: Column(
            //       // Inner Column
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         Padding(
            //           // Padding for image with bottom margin
            //           padding: const EdgeInsets.only(bottom: 20.0),
            //           child: ClipRRect(
            //             borderRadius: BorderRadius.circular(50.0),
            //             child:
            //                 Image.asset('../logo.jpg', height: 100, width: 100),
            //           ),
            //         ),
            //         const Text(
            //           'Second SilverAppBar',
            //           style: TextStyle(color: Colors.white, fontSize: 30),
            //         )
            //       ],
            //     ),
            //   ),
            // ),

            // Padding(
            //   padding: const EdgeInsets.only(top: 10.0),
            //   child: Container(
            //     color: Colors.yellow,
            //     height: 200.0,
            //     child: Expanded(
            //       child: Stack(
            //         children: [
            //           Positioned(
            //             bottom: 0,
            //             left: 0,
            //             right: 0,
            //             child: Center(
            //               child: Column(
            //                 mainAxisAlignment: MainAxisAlignment.end,
            //                 children: [
            //                   Padding(
            //                     padding: const EdgeInsets.only(bottom: 10.0),
            //                     child: ClipRRect(
            //                       borderRadius: BorderRadius.circular(50.0),
            //                       child: Image.asset('../logo.jpg',
            //                           height: 100, width: 100),
            //                     ),
            //                   ),
            //                   const Padding(
            //                     padding: EdgeInsets.only(
            //                         bottom:
            //                             10.0), // Add bottom padding for text
            //                     child: Text(
            //                       'Second SilverAppBar',
            //                       style: TextStyle(
            //                           color: Colors.white, fontSize: 24),
            //                     ),
            //                   )
            //                 ],
            //               ),
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),

            // this is the 3 items padding and structuring
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Column(
                // Use Column for vertical layout
                children: [
                  // First Container with image and text (modified from previous code)
                  Container(
                    color: Colors.yellow,
                    height: 200.0,
                    child: Expanded(
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: 10,
                            left: 0,
                            right: 0,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(bottom: 10.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(50.0),
                                      child: Image.asset('../logo.jpg',
                                          height: 100, width: 100),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  const Padding(
                                    padding: EdgeInsets.only(bottom: 10.0),
                                    child: Text(
                                      'Second SilverAppBar',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 24),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Row for the three containers with spacing

                  Padding(
                    padding: const EdgeInsets.only(top: 6.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 231, 178, 3),
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                            ),
                            width: double.infinity,
                            height: 50,
                            child: const Center(
                              child: Text(
                                'Item 0',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                            ),
                            width: double.infinity,
                            height: 50,
                            child: const Center(
                              child: Text(
                                'Item 1',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 219, 81, 1),
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                            ),
                            width: double.infinity,
                            height: 50,
                            child: const Center(
                              child: Text(
                                'Item 2',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //     ],
                  //   ),
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 231, 178, 3),
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                            ),
                            width: double.infinity,
                            height: 50,
                            child: const Center(
                              child: Text(
                                'Item 0',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                            ),
                            width: double.infinity,
                            height: 50,
                            child: const Center(
                              child: Text(
                                'Item 1',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 219, 81, 1),
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                            ),
                            width: double.infinity,
                            height: 50,
                            child: const Center(
                              child: Text(
                                'Item 2',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 231, 178, 3),
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                            ),
                            width: double.infinity,
                            height: 50,
                            child: const Center(
                              child: Text(
                                'Item 0',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                            ),
                            width: double.infinity,
                            height: 50,
                            child: const Center(
                              child: Text(
                                'Item 1',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 219, 81, 1),
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                            ),
                            width: double.infinity,
                            height: 50,
                            child: const Center(
                              child: Text(
                                'Item 2',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
