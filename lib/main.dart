// ignore_for_file: prefer_const_constructors

import 'package:fintech_app/screens/addcardpage.dart';
import 'package:fintech_app/screens/all_transactionspage.dart';
import 'package:fintech_app/screens/cardDetails_page.dart';
import 'package:fintech_app/screens/home_page.dart';
import 'package:fintech_app/widgets/bottom_Bar.dart';
import 'package:fintech_app/screens/myCards_page.dart';
import 'package:fintech_app/screens/profile_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(context) => bottomBar(),
        '/homepage':(context) => HomePage(),
        '/cards':(context) => myCards(),
        '/profile':(context) => profile(),
        '/cardDetails':(context) => carddetails(),
        '/allTransactions':(context) => allTransactions(),
        '/addCard':(context) => addCard(),
      },
    );
  }
}