// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:fintech_app/theme/colors.dart';
import 'package:flutter/material.dart';

class addCard extends StatelessWidget {
  const addCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        }, icon: Icon(Icons.arrow_back_ios_rounded,color: Colors.black,)),
        elevation: 0.2,
        backgroundColor: Colors.white,
        title: const Text("Add Card",style: TextStyle(fontFamily: "Cerebri Sans",color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(top:20,left: 25,right: 25),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: textfield,
                  borderRadius: BorderRadius.circular(17)
                ),
                height: 50,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: TextField(
                    cursorColor: Colors.black87,
                    decoration: InputDecoration(
                      hintText: "Card Name",
                      hintStyle: TextStyle(fontFamily: "Cerebri Sans",color: inactiveButton),
                      border: InputBorder.none
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(
                  color: textfield,
                  borderRadius: BorderRadius.circular(17)
                ),
                height: 50,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    cursorColor: Colors.black87,
                    decoration: InputDecoration(
                      hintText: "Card Number",
                      hintStyle: TextStyle(fontFamily: "Cerebri Sans",color: inactiveButton),
                      border: InputBorder.none
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: textfield,
                        borderRadius: BorderRadius.circular(17)
                      ),
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          cursorColor: Colors.black87,
                          decoration: InputDecoration(
                            hintText: "** / **",
                            hintStyle: TextStyle(fontFamily: "Cerebri Sans",color: inactiveButton,fontSize: 20),
                            border: InputBorder.none
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: textfield,
                        borderRadius: BorderRadius.circular(17)
                      ),
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          cursorColor: Colors.black87,
                          decoration: InputDecoration(
                            hintText: "* * *",
                            hintStyle: TextStyle(fontFamily: "Cerebri Sans",color: inactiveButton,fontSize: 20),
                            border: InputBorder.none
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25,),
              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: Color.fromRGBO(238, 234, 255, 1),
                ),
                child: Center(child: Text("Select a Card Pattern",style: TextStyle(fontFamily: "Cerebri Sans",color: primary,fontSize:17,fontWeight:FontWeight.w700))),
              ),
              SizedBox(height: 20,),
              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: primary,
                ),
                child: Center(child: Text("Add Card",style: TextStyle(fontFamily: "Cerebri Sans",fontSize:20,color: Colors.white,fontWeight:FontWeight.w800))),
              ),
            ],
          ),
          ),
      ),
    );
  }
}
