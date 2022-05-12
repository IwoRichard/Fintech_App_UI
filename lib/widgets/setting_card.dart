// ignore_for_file: camel_case_types, prefer_const_constructors
import 'package:flutter/material.dart';

class settingsCard extends StatelessWidget {
  final String title;
  const settingsCard({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(0, 0, 0, 0.03),
        ),
      width: double.infinity,
      height: 50,
      padding: EdgeInsets.only(left: 25,right:25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,style: TextStyle(fontFamily: "Cerebri Sans",fontStyle: FontStyle.normal,fontSize: 16, fontWeight: FontWeight.w600),),
          Opacity(opacity: 0.5,child: Icon(Icons.arrow_forward_ios_rounded,size: 17,))
        ],
      ),
    );
  }
}