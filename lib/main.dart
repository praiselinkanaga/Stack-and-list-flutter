import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Stack Widget",
      debugShowCheckedModeBanner: false,
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  List imageList = [
    "assets/images/picture1.jpg",
    "assets/images/picture2.jpg",
    "assets/images/picture3.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Stack(
        children: [
          Positioned(
            top: 30,
            left: 100,
            child: Container(
              width: 300,
              height: 420,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: CloseButton(
                        color: Colors.orangeAccent,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Image.asset(
                    "assets/images/picture.jpg",
                    width: 400,
                    height: 300,
                  )
                ],
              ),
            ),
          ),
          Positioned(
              bottom: 40,
              left: 100,
              child: Container(
                width: 300,
                height: 280,
                decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Co-Owners",
                          style: TextStyle(color: Colors.white54, fontSize: 10),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          padding: const EdgeInsets.only(left: 20),
                          //shrinkWrap: true,
                          children: [
                            for (String image in imageList)
                              CircleAvatar(
                                radius: 20,
                                backgroundImage: AssetImage(image),
                              ),
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.black,
                              child: IconButton(
                                padding: const EdgeInsets.all(0.20),
                                onPressed: (() {}),
                                icon: const Icon(
                                  Icons.control_point_outlined,
                                  color: Colors.white,
                                ),
                                iconSize: 35,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(20),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Enter Folder Name",
                            hintStyle:
                                TextStyle(color: Colors.white54, fontSize: 12),
                            contentPadding: EdgeInsets.only(left: 10),
                            filled: true,
                            fillColor: Colors.white38,
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.orangeAccent,
                              minimumSize: const Size(270, 60),
                              textStyle: const TextStyle(fontSize: 15)),
                          onPressed: (() {}),
                          child: const Text("Create")),
                    )
                  ],
                ),
              ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {}),
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        child: const Icon(
          Icons.contrast_rounded,
          size: 40,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
    );
  }
}
