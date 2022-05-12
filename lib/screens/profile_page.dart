// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:fintech_app/widgets/setting_card.dart';
import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({ Key? key }) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Column(
              children: [
                Center(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/5.png'),
                      ),
                      SizedBox(height: 10,),
                      Text("Myers Rice",style: TextStyle(fontFamily: 'Cerebri Sans',fontWeight: FontWeight.w700,fontSize: 17),),
                      //SizedBox(height: 2,),
                      Text("0987654321",style: TextStyle(fontFamily: 'Cerebri Sans',fontStyle: FontStyle.normal),),
                    ],
                  ),
                ),
                SizedBox(height: 22,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Opacity(opacity: 0.5,child: Text("Cash",style: TextStyle(fontFamily: "Cerebri Sans",fontSize: 17),)),
                    ),
                    SizedBox(height: 8,),
                    settingsCard(title: "Add Cash"),
                    Divider(height: 0,),
                    settingsCard(title: "Withdraw Cash"),
                    SizedBox(height: 10,),
                    Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Opacity(opacity: 0.5,child: Text("Contact Details",style: TextStyle(fontFamily: "Cerebri Sans",fontSize: 17),)),
                    ),
                    SizedBox(height: 8,),
                    settingsCard(title: "Account Information"),
                    Divider(height: 0,),
                    settingsCard(title: "Email Address"),
                    Divider(height: 0,),
                    settingsCard(title: "Phone Number"),
                    SizedBox(height: 10,),
                    Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Opacity(opacity: 0.5,child: Text("Security Settings",style: TextStyle(fontFamily: "Cerebri Sans",fontSize: 17),)),
                    ),
                    SizedBox(height: 8,),
                    settingsCard(title: "Password reset"),
                    Divider(height: 0,),
                    settingsCard(title: "Face ID and Fingerprint"),
                    SizedBox(height: 10,),
                    Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Opacity(opacity: 0.5,child: Text("Other Settings",style: TextStyle(fontFamily: "Cerebri Sans",fontSize: 17),)),
                    ),
                    SizedBox(height: 8,),
                    settingsCard(title: "Notifications"),
                    Divider(height: 0,),
                    settingsCard(title: "Support"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}