import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../Lists.dart';
import 'list method.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          'Fashion',
          style: TextStyle(color: Colors.white,fontSize: 30),
        ),
        actions: [Padding(
          padding: const EdgeInsets.all(10),
          child: GestureDetector(
            onTap: () {
              setState(() {
                Navigator.of(context).pushNamed('/cart');
              });
            },
            child: Icon(Icons.shopping_cart,color: Colors.black
              ,),
          ),
        )],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //banner
              Container(
                height: 210,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(25),
                    image: const DecorationImage(
                        image: AssetImage('assets/images/banner.jpg'),
                        fit: BoxFit.fill)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        ...List.generate(
                          firstList.length,
                              (index) =>
                              GestureDetector(onTap:(){
                                setState(() {
                                  selectedindex = index;
                                  Navigator.of(context).pushNamed('/detail');
                                });
                              },
                                child: list2(
                                  img: firstList[index]['img'],
                                  price: firstList[index]['price'],
                                ),
                              ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      ...List.generate(
                        firstList.length,
                            (index) =>
                            GestureDetector(
                              onTap: () {
                                selectedindex = index;
                                Navigator.of(context).pushNamed('/detail');
                              },
                              child: list2(
                                img: secondList[index]['img'],
                                price: secondList[index]['price'],
                              ),
                            ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

}


int selectedindex = 0;
int index = 1;