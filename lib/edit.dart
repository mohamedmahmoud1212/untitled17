import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled17/profile.dart';
import 'flutter/src/material/button_style.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({super.key});


  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(title: Text("Edit your own profile"),),
      body: Container(
        color: Colors.grey.withOpacity(0.1),
        child: SingleChildScrollView(
          
          child: Column(
        
            children: [
              Padding(padding: EdgeInsets.all(15)),
              Container(
              decoration: const BoxDecoration(shape: BoxShape.circle,color: Colors.indigo,),
              height: 110,
              width: 195,
              child: CircleAvatar(
        
              backgroundColor: Colors.white,
        
              child: Container(
        
              child:
              Image.asset("images/22.png",fit: BoxFit.cover,filterQuality: FilterQuality.high,),
              ),),),
              Padding(padding: EdgeInsets.only(top: 10)),
              Text("Edit image",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
              Padding(padding: EdgeInsets.only(top: 20)),
              Divider(),
              Padding(padding: EdgeInsets.only(top: 10)),
              Container(
                padding: EdgeInsets.only(top: 20,left: 15,right: 15),
                child: Column(
                  children: [
                     TextField(
                        decoration: InputDecoration(
                          labelText: "email",
                        hintText:   "mhmwd9462@gmail.com", hintStyle: TextStyle(color: Colors.grey),
                        prefixIcon:Icon(Icons.email_outlined),
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(25)),
                            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25),
                                borderSide: BorderSide(color: Colors.indigo,)
                            ),
                            disabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(25)),
        
        
                        ),
                      ),
                    Padding(padding: EdgeInsets.only(top: 25)),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Name",
                        hintText:   "Mohamed Mahmoud", hintStyle: TextStyle(color: Colors.grey),
                        prefixIcon:Icon(Icons.person_pin,size: 30,),
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(25)),
                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(color: Colors.indigo,)
                        ),
                        disabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(25)),
        
        
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 25)),
                    Divider(),
        
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Change Password",style: TextStyle(color: Colors.grey),),
        
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
        
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Enter old Password",hintStyle: TextStyle(color: Colors.grey),
                        prefixIcon:Icon(Icons.lock,size: 25,),
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(25)),
                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(color: Colors.indigo,)
                        ),
                        disabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(25)),
        
        
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 25)),
                    TextField(
        
                      decoration: InputDecoration(
                       hintText: "Enter new Password",hintStyle: TextStyle(color: Colors.grey),
                        prefixIcon:Icon(Icons.lock,size: 25,),
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(25)),
                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(color: Colors.indigo,)
                        ),
                        disabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(25)),
        
        
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 25)),
        
                    Container(
                      width: 365,
                      height: 55,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.indigo),
                      child: TextButton(onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=> ProfileScreen()));
                      }, child: const Text("Save",style: TextStyle(color: Colors.white,fontSize: 20),)),
                    ),
        
        
                  ],
                ),
              ),
        
              ],),
        ),
      ),

    );
  }
}
