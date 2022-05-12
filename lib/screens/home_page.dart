// ignore_for_file: camel_case_types, prefer_const_constructors 
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:fintech_app/data/transactionsDart.dart';
import 'package:fintech_app/widgets/expense_card.dart';
import 'package:fintech_app/widgets/home_card.dart';
import 'package:fintech_app/widgets/income_card.dart';
import 'package:fintech_app/widgets/transaction.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(top: 15,left: 25,right: 25),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage('assets/5.png'),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Hi, Myers",style: TextStyle(fontFamily: 'Cerebri Sans',fontWeight: FontWeight.w700,fontSize: 17),),
                            Text("Hope you're good today",style: TextStyle(fontFamily: 'Cerebri Sans',fontStyle: FontStyle.normal),)
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushNamed('/cardDetails');
                      },
                      child: homeCard(
                        amount: 1400, 
                        number: 4567, 
                        color: Color.fromRGBO(23, 23, 23, 1), 
                        cardLogo: "assets/mastercard.svg"
                        ),
                    ), //check widgets folder for home_card.dart
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        Expanded(child: income()), // check widgets folder for income_card.dart
                        SizedBox(width: 15,),
                        Expanded(child: expense()), // check widgets folder for expense_card.dart
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(left: 25,right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Transactions',style: TextStyle(fontFamily: 'Cerebri Sans',fontWeight: FontWeight.w800,fontSize: 21),),
                    Opacity(opacity: 0.3,child: IconButton(onPressed: (){
                      Navigator.of(context).pushNamed('/allTransactions');
                    }, icon: Icon(Icons.arrow_forward_ios_rounded,size: 20,))),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: transactions.length,
                  itemBuilder: (context, index){
                    return transac( //check transaction.dart in widgets folder
                      title: transactions[index][0], 
                      subscript: transactions[index][1], 
                      logo: transactions[index][2], 
                      rate: transactions[index][3], 
                      date: transactions[index][4],
                      );
                    }
                  ),
              ),
            ],
          ),
        ),
    );
  }
}
