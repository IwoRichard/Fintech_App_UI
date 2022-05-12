// ignore_for_file: prefer_const_constructors, camel_case_types
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

import 'package:fintech_app/theme/colors.dart';

class transac extends StatelessWidget {
  final String title;
  final String subscript;
  final String logo;
  final double rate;
  final String date;
  const transac({
    Key? key,
    required this.title,
    required this.subscript,
    required this.logo,
    required this.rate,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25,right: 25),
      child: Container(
        padding: EdgeInsets.all(12),
        width: double.infinity,
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: transactionContainer,
          borderRadius: BorderRadius.circular(17),
        ),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              height: 45,
              width: 45,
              padding: EdgeInsets.all(10),
              child: Image.asset(logo),
            ),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,style: TextStyle(fontFamily: "Cerebri Sans",fontWeight: FontWeight.w600,fontSize: 18),),
                Opacity(opacity: 0.5,child: Text(subscript,style: TextStyle(fontFamily: "Cerebri Sans"),))
              ],
            ),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('-'+'\$'+rate.toString(),style: TextStyle(fontFamily: "Cerebri Sans",fontWeight: FontWeight.w600,fontSize: 18),),
                Opacity(opacity: 0.5,child: Text(date,style: TextStyle(fontFamily: "Cerebri Sans"),)),
              ],
            ),
            SizedBox(width: 5,),
          ],
        ),
      ),
    );
  }
}
