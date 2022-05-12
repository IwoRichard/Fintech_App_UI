// ignore_for_file: camel_case_types, prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:fintech_app/widgets/my_Cards.dart';
import 'package:flutter/material.dart';

class myCards extends StatefulWidget {
  const myCards({ Key? key }) : super(key: key);

  @override
  State<myCards> createState() => _myCardsState();
}

class _myCardsState extends State<myCards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(top: 15,left: 25,right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("My Cards",style: TextStyle(fontFamily: "Cerebri Sans",fontSize: 21,fontWeight: FontWeight.bold),),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('/addCard');
                      },
                      child: Container(
                        padding: EdgeInsets.only(top: 10,bottom: 10,right: 15,left: 15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 0.15),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text("+Add Card",style: TextStyle(fontFamily: "Cerebri Sans",fontSize: 16,fontWeight: FontWeight.w600),),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Column(
                children: [
                  my_cards(
                    amount: 345, 
                    number: 4345, 
                    color: Color.fromRGBO(255, 122, 110, 1), 
                    cardLogo: "assets/mastercard.svg",
                  ),
                  my_cards(
                    amount: 3345, 
                    number: 4335, 
                    color: Color.fromRGBO(97, 101, 216, 1), 
                    cardLogo: "assets/visa.svg",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
