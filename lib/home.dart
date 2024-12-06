import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffedf3f6),
      body: Container(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Stack(

              children: [
                Container(
                  height: 250,
                  padding: EdgeInsets.only(left: 20.0,right: 50.0),
                  decoration: BoxDecoration(color: Color(0xFF2a2b31),borderRadius:
                  BorderRadius.only(bottomLeft: Radius.circular(30 ),bottomRight:
                  Radius.circular(30))),
                  child: SafeArea(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        ClipRRect(
                            borderRadius: BorderRadius.circular(60),
                            child: Image.asset('assets/img/boy.jpg',height: 50,width: 50,fit: BoxFit.cover,)),
                        SizedBox(width: 20,),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text('Atul Sengar',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                        )
                      ],),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(30)),
                  margin: EdgeInsets.only(top: 120,left: 20 ,right: 20),
                  child: Row(
                    children: [

                      ClipRRect(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20)),
                          child: Image.asset('assets/img/quiz.png',height: 200,width: 200,)),

                      SizedBox(width: 30,),
      Text('Play & \n Way',
        style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold))
                    ],
                  ),
                )
              ],
            ),
      SizedBox(height: 10,),
      Text('Top quiz Categories',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold)),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Row(
                children: [

                  Material(
              borderRadius: BorderRadius.circular(20),
                    elevation: 5,
                    child: Container(
                      width:150,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Image.asset('assets/img/earth.png',height: 80,width: 80,fit: BoxFit.cover,),
                            SizedBox(height: 20,),
                            Text('Earth',style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.w500)),
                          ],
                        )),
                  ),
                  SizedBox(width: 10,),
                  Material(
                    borderRadius: BorderRadius.circular(20),
                    elevation: 5,
                    child: Container(
                        width:150,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Image.asset('assets/img/chatbot.png',height: 80,width: 80,fit: BoxFit.cover,),
                            SizedBox(height: 20,),
                            Text('Chatgpt',style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.w500)),
                          ],
                        )),
                  )
                ],
              ),

            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Row(
                children: [

                  Material(
                    borderRadius: BorderRadius.circular(20),
                    elevation: 5,
                    child: Container(
                        width:150,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Image.asset('assets/img/hot-bollon.png',height: 80,width: 80,fit: BoxFit.cover,),
                            SizedBox(height: 20,),
                            Text('Weather',style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.w500)),
                          ],
                        )),
                  ),
                  SizedBox(width: 10,),
                  Material(
                    borderRadius: BorderRadius.circular(20),
                    elevation: 5,
                    child: Container(
                        width:150,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Image.asset('assets/img/travel.png',height: 80,width: 80,fit: BoxFit.cover,),
                            SizedBox(height: 20,),
                            Text('Travel',style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.w500)),
                          ],
                        )),
                  )
                ],
              ),

            ),

          ],
        ),
      ),
    );
  }
}
