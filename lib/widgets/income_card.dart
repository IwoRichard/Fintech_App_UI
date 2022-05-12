// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:fintech_app/theme/colors.dart';
import 'package:flutter/material.dart';

class income extends StatelessWidget {
  const income({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20),
      height: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17),
        color: incomeDisplay
      ),
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                height: 50,
                width: 50,
                child: CircularProgressIndicator(
                  strokeWidth: 6,
                  valueColor: AlwaysStoppedAnimation<Color>(Color.fromRGBO(112, 112, 112, 0.15)),
                  value: 1,
                ),
              ),
              Container(
                height: 50,
                width: 50,
                child: CircularProgressIndicator(
                  strokeWidth: 6,
                  valueColor: AlwaysStoppedAnimation<Color>(incomeArrow),
                  value: .75,
                ),
              ),
              Positioned(
                left: 13,
                top: 13,
                child: Icon(Icons.arrow_upward_rounded,color: incomeArrow,),
                ),
            ],
          ),
          SizedBox(width: 15,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Opacity(opacity: 0.5,child: Text("Income",style: TextStyle(fontFamily: "Cerebri Sans"),)),
              Text("\$2,400",style: TextStyle(fontFamily: "Cerebri Sans",fontWeight: FontWeight.w600,fontSize: 18),),
            ],
          ),
        ],
      ),
    );
  }
}