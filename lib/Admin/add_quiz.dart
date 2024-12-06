import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:random_string/random_string.dart';

class AddQuiz extends StatefulWidget {
  const AddQuiz({super.key});

  @override
  State<AddQuiz> createState() => _AddQuizState();
}

class _AddQuizState extends State<AddQuiz> {
final ImagePicker _picker= ImagePicker();
File? selectedImage;
Future getImage()async{
  var image= await _picker.pickImage(source: ImageSource.gallery);
  selectedImage=File(image!.path);
  setState(() {

  });
}
uploadItem()async{
  if(selectedImage!=null && op1coll.text!=""&& op2coll.text!=""&& op3coll.text!=""&& op4coll.text!=""){
    String addId=randomAlphaNumeric(10);
    Reference firebaseStorageRef=FirebaseStorage.instance.ref().child("blogImage").child(addId);
  }
}
  String? value;
  final List<String> quizitem=['Earth','Chatgpt','Weather','travel'];
  TextEditingController op1coll=new TextEditingController();
  TextEditingController op2coll=new TextEditingController();
  TextEditingController op3coll=new TextEditingController();
  TextEditingController op4coll=new TextEditingController();
  TextEditingController ans=new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Add Quiz',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 20,right: 20,top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Upload the Quiz Picture",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
              SizedBox(height: 10,),
             selectedImage==null? GestureDetector(
               onTap: (){
                 getImage();
               },
               child: Center(
                  child: Material(
                    elevation: 4,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(height: 150,width: 150,decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 1.5),
                      borderRadius: BorderRadius.circular(20)
                    ),
                      child: Icon(Icons.camera_alt_outlined,color: Colors.black,),
                    ),
                  ),
                ),
             ):Center(
               child: Material(
                 elevation: 4,
                 borderRadius: BorderRadius.circular(20),
                 child: Container(height: 150,width: 150,decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 1.5),
                     borderRadius: BorderRadius.circular(20)
                 ),
                   child: Image.file(selectedImage!,fit: BoxFit.cover,),
                 ),
               ),
             ),
              SizedBox(height: 20,),
              Text('Option 1',style: TextStyle(color: Colors.black54,fontSize: 20,fontWeight: FontWeight.w500 ),),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xFFececf8),borderRadius: BorderRadius.circular(10)
                ),
                child: TextField(
                  controller: op1coll,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter option 1",
                    hintStyle: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w700)

                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text('Option 2',style: TextStyle(color: Colors.black54,fontSize: 20,fontWeight: FontWeight.w500 ),),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color(0xFFececf8),borderRadius: BorderRadius.circular(10)
                ),
                child: TextField(
                  controller: op2coll,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter option 2",
                      hintStyle: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w700)

                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text('Option 3',style: TextStyle(color: Colors.black54,fontSize: 20,fontWeight: FontWeight.w500 ),),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color(0xFFececf8),borderRadius: BorderRadius.circular(10)
                ),
                child: TextField(
                  controller: op3coll,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter option 3",
                      hintStyle: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w700)

                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text('Option 4',style: TextStyle(color: Colors.black54,fontSize: 20,fontWeight: FontWeight.w500 ),),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color(0xFFececf8),borderRadius: BorderRadius.circular(10)
                ),
                child: TextField(
                  controller: op4coll,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter option 4",
                      hintStyle: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w700)

                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text('Correct Answer',style: TextStyle(color: Colors.black54,fontSize: 20,fontWeight: FontWeight.w500 ),),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color(0xFFececf8),borderRadius: BorderRadius.circular(10)
                ),
                child: TextField(
                  controller: ans,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter the Correct Answer",
                      hintStyle: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w700)

                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Color(0xFFececf8),borderRadius: BorderRadius.circular(10)),
                child: DropdownButtonHideUnderline(child: DropdownButton<String>(items:quizitem.map((item)=>DropdownMenuItem(value: item, child: Text(item,style: TextStyle(fontSize: 18,color: Colors.black),))).toList(),onChanged: ((value)=>
                    setState(() {
                      this.value=value;
                })
                ),
                dropdownColor: Colors.white,
                  hint: Text('Select Category'),
                  iconSize: 36,
                  icon: Icon(Icons.arrow_drop_down,color: Colors.black,
                  ),
value: value,
                ))
              ),

              SizedBox(height: 20,),
              Center(
                child: Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.black,borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(child: Text('Add',style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),)),
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
