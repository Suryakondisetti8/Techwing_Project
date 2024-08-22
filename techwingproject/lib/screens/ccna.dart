import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:techwingproject/HomePage.dart';

class CCNAScreen extends StatelessWidget {
  const CCNAScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Color.fromARGB(255, 185, 169, 169)),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => Homepage()));
            },
          ),
        ),
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Image.asset("images/cisco.png"),
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
                      "CCNA is an information technology certification from Cisco Systems. CCNA certification is an associate-level Cisco Career certification. Cisco exams have changed several times in response to changing IT trends.",
                      style: TextStyle(
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
                        Row(
                          children: [
                            Container(
                              child: Image.asset(
                                "images/ccna_badge.jpg",
                                width: 100,
                                height: 130,
                              ),
                            ),
                            SizedBox(width: 20,),
                            Container(
                          child: Image.asset(
                            "images/cyberopsbadge.png",
                            width: 100,
                            height: 130,
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
                              builder: (context) => CCNASyllabus()));
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

class CCNASyllabus extends StatelessWidget {
  const CCNASyllabus({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: true,
         appBar: AppBar(
          backgroundColor: Colors.transparent,elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Color.fromARGB(255, 185, 169, 169)),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => CCNAScreen()));
            },
          ),
        ),
        backgroundColor: Colors.black,
        body:SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(child:Image.asset("images/ccnapdf1.jpeg"),),
                Container(child:Image.asset("images/ccnapdf2.jpeg"),),
                Container(child:Image.asset("images/ccnapdf3.jpeg"),),
            ],
          ),
        )
      ),
    );
  }
}
