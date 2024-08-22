import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:techwingproject/HomePage.dart';

class JFSScreen extends StatelessWidget {
  const JFSScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Color.fromARGB(255, 185, 169, 169)),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => Homepage()));
            },
          ),
        ),
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Image.asset("images/jfsimage.jpg"),
                  width: double.infinity,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: "No. of\nHours: ",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white, // Adjust color as needed
                                ),
                              ),
                              TextSpan(
                                text: "60",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold, // Make "200" bold
                                  color: Colors.orange, // Adjust color as needed
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: "Seats:\n",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white, // Adjust color as needed
                                ),
                              ),
                              TextSpan(
                                text: "50/60",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold, // Make "50/60" bold
                                  color: Colors.orange, // Adjust color as needed
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  child: const Padding(
                    padding: EdgeInsets.only(left: 25, right: 25, bottom: 10),
                    child: Text(
                      "Java full-stack programmer is a developer who is trained in the Java programming language and technologies and knows both front-end and back-end development. ",style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Colors.white),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: const Text(
                            "Certifications:",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:0,right: 10),
                              child: Container(
                                child: Image.asset(
                                  "images/javabadge.png",
                                  width: 100,
                                  height: 100,
                                ),
                              ),
                            ),
                            Container(
                          child: Image.asset(
                            "images/HTML&CSSbadge.png",
                            width: 100,
                            height: 100,
                          ),
                        ),
                          ],
                        ),
                        
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => JFSSyllabus()));
                    },
                    child: Container(
                      width: 200,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Color.fromARGB(255, 255, 153, 0), Color.fromARGB(255, 255, 186, 13)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.all(10.0),
                      child: const Center(
                        child: Text(
                          "View Syllabus",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 6, 4, 0)),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class JFSSyllabus extends StatelessWidget {
  const JFSSyllabus({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: true,
         appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Color.fromARGB(255, 185, 169, 169)),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const JFSScreen()));
            },
          ),
        ),
        backgroundColor: Colors.black,
        body:SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(child:Image.asset("images/JFS Curriculum-1.jpeg"),),
              Container(child:Image.asset("images/JFS Curriculum-2.jpeg"),),
              Container(child:Image.asset("images/JFS Curriculum-3.jpeg"),),
              Container(child:Image.asset("images/JFS Curriculum-4.jpeg"),),
              Container(child:Image.asset("images/JFS Curriculum-5.jpeg"),),
            ],
          ),
        )
      ),
    );
  }
}
