import 'dart:async'; 
import 'package:flutter/material.dart';
import 'package:techwingproject/HomePage.dart';
void main() { 
runApp( MaterialApp( 
  debugShowCheckedModeBanner: false,
  home: Homepage())); 
} 

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
	title: 'Splash Screen', 
	theme: ThemeData( 
		primarySwatch: Colors.green,
	), 
	home: MyHomePage(), 
	debugShowCheckedModeBanner: false, 
	); 
  }
}

class MyHomePage extends StatefulWidget { 
@override 
_MyHomePageState createState() => _MyHomePageState(); 
} 
class _MyHomePageState extends State<MyHomePage> { 
@override 
void initState() { 
	super.initState(); 
	Timer(Duration(seconds: 3), 
		()=>Navigator.pushReplacement(context, 
										MaterialPageRoute(builder: 
														(context) => 
														Homepage() 
														) 
									) 
		); 
} 
@override 
Widget build(BuildContext context) { 
	return Container( 
	color: Colors.black,
	child:Image.asset("images/techwing_logo.png",width: MediaQuery.of(context).size.height,),
	); 
} 
} 
 
