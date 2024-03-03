import 'package:flutter/material.dart';
import 'package:untitled17/profile.dart';

class MyHomePage extends StatefulWidget {
    const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Colors.indigo,
      bottomNavigationBar: BottomNavigationBar(

        onTap: (val){
          setState(() {
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) =>     const ProfileScreen(),),);

          });
        },
        items:  const [

          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.indigo,size: 25,semanticLabel: "Home",),label: "Home",),
          BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.indigoAccent,semanticLabel:"profile" ,size: 25,),label: "profile"),






        ],

      ),



      body:

      Center(
        child: SizedBox(

          height:800,
          width: 500,
child: Image.asset("images/Untitled-1.jpg"),

        ),
      ),
    );
  }
}
