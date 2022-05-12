// ignore_for_file: sized_box_for_whitespace, camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names, prefer_typing_uninitialized_variables

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';

class my_cards extends StatelessWidget {
  final int amount;
  final int number;
  final Color color;
  final String cardLogo;const my_cards({
    Key? key,
    required this.amount,
    required this.number,
    required this.color,
    required this.cardLogo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    const degrees = 270;
    const angle = degrees * pi /180;

    return Padding(
      padding: EdgeInsets.only(left: 25,right: 25,),
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        width: double.infinity,
        child: Stack(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(27),
              ),
            ),
            Positioned(
              right: 0,
              child: Container(
                height: 200,
                width: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(27),bottomRight: Radius.circular(27)),
                  color: Color.fromRGBO(0, 0, 0, 0.11),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Transform.rotate(angle: angle,child: Icon(Iconsax.wifi,color: Colors.white,size: 30,)),
                      Icon(Iconsax.toggle_on5,color: Colors.white,size: 25,),
                    ],
                  ),
            ),
            Positioned(
              bottom: 30,
              right: 25,
              child: Opacity(
                opacity: 0.65,
                child: Container(
                  height: 35,
                  width: 35,
                  child: SvgPicture.asset(cardLogo),
                ),
              ), 
            ),
            Positioned(
              top: 85,
              left: 30,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("**** **** **** "+number.toString(),style: TextStyle(fontFamily: "Cerebri Sans",color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  SizedBox(height: 20,),
                  Text("Balance",style: TextStyle(color: Colors.white,fontSize: 17),),
                  SizedBox(height: 2,),
                  Text("\$" + amount.toString(),style: TextStyle(fontFamily: "Cerebri Sans",color: Colors.white,fontSize: 25,fontWeight: FontWeight.w800),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
