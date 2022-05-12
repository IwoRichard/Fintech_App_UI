// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

import '../data/transactionsDart.dart';
import '../widgets/transaction.dart';

class allTransactions extends StatefulWidget {
  const allTransactions({ Key? key }) : super(key: key);

  @override
  State<allTransactions> createState() => _allTransactionsState();
}

class _allTransactionsState extends State<allTransactions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        }, icon: Icon(Icons.arrow_back_ios_rounded,color: Colors.black,)),
        elevation: 0.2,
        backgroundColor: Colors.white,
        title: Text("Transactions",style: TextStyle(color: Colors.black,fontFamily: "Cerebri Sans",fontSize: 21,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 10,),
          Expanded(
            child: ListView.builder(
              itemCount: transactions.length,  //check transactionsDart.dart in data folder
              itemBuilder: (context, index){
                return transac( //check transaction.dart file in widgets folder
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
    );
  }
}