import 'package:e_commerce_exam/Home/Component/Home%20Page/home_page.dart';
import 'package:e_commerce_exam/Lists.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../Home Page/list method.dart';

class detail_page extends StatefulWidget {
  const detail_page({super.key});

  @override
  State<detail_page> createState() => _detail_pageState();
}

class _detail_pageState extends State<detail_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Detail of Product'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Column(
              children:[
              detail_list(img: firstList[selectedindex]['img'], price: firstList[selectedindex]['price'], name: firstList[selectedindex]['name'], category: firstList[selectedindex]['category'], descrition: firstList[selectedindex]['description']),
              ],),
            GestureDetector(
              onTap: () {
                setState(() {

                  // cartlist.removeAt(firstList[selectedindex]);
                  cartlist.add(firstList[selectedindex]);
                  Navigator.of(context).pushNamed('/cart');
                });
              },
              child: Container(
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(20),
                ),
                alignment: Alignment.center,
                child: Text('Add to Cart',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25)),
              ),
            ),
          ],
        ),
        
      ),
    );
  }

  Container detail_list(
      {required String img,
      required String price,
      required String name,
      required String category,
      required String descrition}) {
    return Container(
      child: (Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 8),
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage(img),
                )),
          ),
          Center(
            child: Text(
              'Product Name',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 290,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Name : ' + '$name',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 20),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Price : ' + '$price',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 20)),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Category : ' + '$category',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 20)),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Description : ' + '$descrition',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 20)),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
