// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../theme/colors.dart';
import '../widgets/home_card.dart';

class carddetails extends StatefulWidget {
  const carddetails({ Key? key }) : super(key: key);

  @override
  State<carddetails> createState() => _carddetailsState();
}

class _carddetailsState extends State<carddetails> {
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
        title: const Text("Card Details",style: TextStyle(fontFamily: "Cerebri Sans",color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(top:20,left: 25,right: 25),
          child: Column(
            children: [
              homeCard(
                amount: 1400, 
                number: 4567, 
                color: Color.fromRGBO(23, 23, 23, 1), 
                cardLogo: "assets/mastercard.svg"
              ),
              SizedBox(height: 10,),
              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: textfield
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Iconsax.lock5),
                          SizedBox(width: 5,),
                          Text("Block",style: TextStyle(fontFamily: "Cerebri Sans",fontWeight: FontWeight.w700,fontSize: 17),)
                        ],
                      ),
                    ),
                    Text("|",style: TextStyle(color: inactiveButton),),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.delete),
                          SizedBox(width: 5,),
                          Text("Delete",style: TextStyle(fontFamily: "Cerebri Sans",fontWeight: FontWeight.w700,fontSize: 17),)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Card Details",style: TextStyle(fontFamily: 'Cerebri Sans',fontWeight: FontWeight.w800,fontSize: 21)),
                  Opacity(opacity: 0.3,child: Text("Show",style: TextStyle(fontSize: 17,fontFamily: "Cerebri Sans"),)),
                ],
              ),
              SizedBox(height: 10,),
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
                      suffixIcon: Icon(Icons.copy,color: transactionArrow),
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
                      suffixIcon: Icon(Icons.copy,color: transactionArrow),
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
                            suffixIcon: Icon(Icons.copy,color: transactionArrow),
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
                            suffixIcon: Icon(Icons.copy,color: transactionArrow,),
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
              SizedBox(height: 10,),
              //Card Limit Card Code
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Card Limit",style: TextStyle(fontFamily: 'Cerebri Sans',fontWeight: FontWeight.w800,fontSize: 21)),
                  Opacity(opacity: 0.3,child: Text("Change",style: TextStyle(fontSize: 17,fontFamily: "Cerebri Sans"),)),
                ],
              ),
              SizedBox(height: 10,),
              Container(
                height: 90,
                padding: EdgeInsets.all(12),
                width: double.infinity,
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  color: textfield,
                  borderRadius: BorderRadius.circular(17),
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
                            valueColor: AlwaysStoppedAnimation<Color>(primary),
                            value: .75,
                          ),
                        ),
                        Positioned(
                          left: 18,
                          top: 13,
                          child: Text("\$",style: TextStyle(fontFamily: "Cerebri Sans",fontWeight: FontWeight.w600,fontSize: 20))),
                      ],
                    ),
                    SizedBox(width: 15,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Monthly Limit",style: TextStyle(fontFamily: "Cerebri Sans",fontWeight: FontWeight.w600,fontSize: 18),),
                        Opacity(opacity: 0.5,child: Text("August",style: TextStyle(fontFamily: "Cerebri Sans"),))
                      ],
                    ),
                    Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('\$40 left',style: TextStyle(fontFamily: "Cerebri Sans",fontWeight: FontWeight.w600,fontSize: 18),),
                        Opacity(opacity: 0.5,child: Text("of \$350",style: TextStyle(fontFamily: "Cerebri Sans"),)),
                      ],
                    ),
                    SizedBox(width: 5,),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
