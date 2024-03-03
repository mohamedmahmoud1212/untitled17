import 'package:flutter/material.dart';
 import 'Secpage.dart';
 import 'edit.dart';
class ProfileScreen extends StatefulWidget {
    const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (val){
          setState(() {
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) =>  const MyHomePage(),),);

          });
        },
        items:   const [
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "profile"),
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),



      ],
      ),
      appBar: AppBar(title: const Text("Profile"),



      ),

      body: SingleChildScrollView(

         child: Column(
          
           children: [
             const Padding(padding: EdgeInsets.all(20.0)),

                  Center(
                    child: Stack(
                      children: [
                        Container(
                          decoration: const BoxDecoration(shape: BoxShape.circle,color: Colors.indigo,),
                              height: 110,
                        width: 195,
                        child: CircleAvatar(

                          backgroundColor: Colors.white,

                            child: Container(

                              child:
                               Image.asset("images/22.png",fit: BoxFit.cover,filterQuality: FilterQuality.high,),
                          ),
                        ),),

                        IconButton( onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => const EditScreen()));

                        }, icon: const Icon(Icons.mode_edit_outline_outlined,color: Colors.black,),color:Colors.white,padding: const EdgeInsets.only(top: 83,left:83)),
                      ]
                    ),
                  ),
             const Padding(padding: EdgeInsets.all(10)),
Text("Mohamed Mahmoud"),
             Text("mhmwd9462@gmail.com",style: TextStyle(color: Colors.grey),),

const Padding(padding: EdgeInsets.all(15)),
  const Text("Become a puplisher",style: TextStyle(color: Colors.blueAccent),),
             const Divider(),

             const Row(
               
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Padding(padding: EdgeInsets.all(10)),
                 Text("Account settings",style: TextStyle(color: Colors.grey,),textAlign: TextAlign.left,),
               ],
             ),
             TextButton(onPressed: (){}, child: const Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [Text("Personal information",
                 style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
               Icon(Icons.arrow_forward_ios)],
             )),
             TextButton(onPressed: (){}, child: const Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [Text("Notfications",
                 style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                 Icon(Icons.arrow_forward_ios)],
             )),
             TextButton(onPressed: (){}, child: const Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [Text("Time Spent",
                 style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                 Icon(Icons.arrow_forward_ios)],
             )),
             TextButton(onPressed: (){}, child: const Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [Text("following",
                 style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                 Icon(Icons.arrow_forward_ios)],
             )),
             const Row(
               mainAxisAlignment:MainAxisAlignment.start,
               children: [
               Padding(padding: EdgeInsets.all(10)),
               Text("help & support",
                   style: TextStyle(color: Colors.grey ,fontSize: 15)),
             ],),
             TextButton(onPressed: (){}, child: const Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [Text("Privacy policy",
                 style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                 Icon(Icons.arrow_forward_ios)],
             )),
             TextButton(onPressed: (){}, child: const Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [Text("Terms & Conditions",
                 style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                 Icon(Icons.arrow_forward_ios)],
             )),
             TextButton(onPressed: (){}, child: const Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [Text("FAQ & Help ",
                 style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                 Icon(Icons.arrow_forward_ios)],
             )),
             TextButton(onPressed: (){
               Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=> EditScreen()));
             }, child: const Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [Text("Log Out ",
                 style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.bold,fontSize: 20),),
                 Icon(Icons.arrow_forward_ios)],
             )),
           ], ///profile pic
        ),
      ),


    );
  }
}



