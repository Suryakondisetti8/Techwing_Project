import 'package:flutter/material.dart';
import 'package:techwingproject/screens/Ui%20Ux.dart';
import 'package:techwingproject/screens/aws.dart';
import 'package:techwingproject/screens/ccna.dart';
import 'package:techwingproject/screens/jfs.dart';
import 'package:techwingproject/screens/mobileapp.dart';
import 'package:techwingproject/screens/redhat.dart'; // Make sure this import is correct

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration:const  BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/Black BG.png"), // Replace with your image path
              fit: BoxFit.cover, // Adjust the fit as needed
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 30), // Add some spacing at the top
              Center(
                child: Container(
                  width: 150,
                  height: 150,
                  child: Center(child: Image.asset("images/techwing_logo.png")),
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => JFSScreen()),
                      );
                    },
                    child: Container(
                      width: 100,
                      height: 100,
                      padding: EdgeInsets.all(20),
                      child: Image.asset("images/JSD.png", color: Colors.black),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AWSScreen()),
                      );
                    },
                    child: Container(
                      width: 95,
                      height: 100,
                      padding: EdgeInsets.all(20),
                      child: Image.asset("images/AWS.png", color: Colors.black),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CCNAScreen()),
                      );
                    },
                    child: Container(
                      width: 100,
                      height: 100,
                      padding: EdgeInsets.all(20),
                      child: Image.asset("images/CCNa.png", color: Colors.black),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RHScreen()),
                      );
                    },
                    child: Container(
                      width: 100,
                      height: 100,
                      padding: EdgeInsets.all(20),
                      child: Image.asset("images/Red hat.png", color: Colors.black),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MADScreen()),
                      );
                    },
                    child: Container(
                      width: 100,
                      height: 100,
                      padding: EdgeInsets.all(20),
                      child: Image.asset("images/MAD.png"),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => UIUXScreen()),
                      );
                    },
                    child: Container(
                      width: 100,
                      height: 100,
                      padding: EdgeInsets.all(20),
                      child: Image.asset("images/UI UX.png"),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
    );
  }
}
