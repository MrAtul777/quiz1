import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  const Question({super.key});

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF004840),
      body: Container(
        margin: EdgeInsets.only(top: 50,left: 20),
        child: Column(
          children: [
Row(children: [
  Container(
    padding: EdgeInsets.all(6),
    decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(60)),
      child: Center(child: Icon(Icons.arrow_back_ios,color: Colors.white,))),
  SizedBox(width: 100,),
  Text("sports",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24),)
],),
            SizedBox(height: 20,),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20,top: 40),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                        child: Image.asset('assets/img/boy.jpg',
                          height: 300, width: MediaQuery.of(context).
                          size.width,fit: BoxFit.cover,)),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(border: Border.all(color: Color(0xFF818181),width: 1.5),borderRadius: BorderRadius.circular(20)),
                    child: Text("ippon",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black,),),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(border: Border.all(color: Color(0xFF818181),width: 1.5),borderRadius: BorderRadius.circular(20)),
                    child: Text("ippon",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black,),),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(border: Border.all(color: Color(0xFF818181),width: 1.5),borderRadius: BorderRadius.circular(20)),
                    child: Text("ippon",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black,),),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(border: Border.all(color: Color(0xFF818181),width: 1.5),borderRadius: BorderRadius.circular(20)),
                    child: Text("ippon",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black,),),
                  )
                ],)
              ),
            ),

          ],
        ),
      ),
    );
  }
}
