import 'package:e_commerce_exam/Home/Component/Home%20Page/home_page.dart';
import 'package:e_commerce_exam/Lists.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            // cart_list();
          ],
        ),
      ),
    );
  }

  Container cart_list() {
    return Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blue.shade100,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              children: [
                Container(
                  height: 250,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(25),bottomLeft: Radius.circular(25)),
                    image: DecorationImage(
                      image: AssetImage('assets/images/shirt1.jpg'),
                      fit: BoxFit.fill
                    )
                  ),
                ),
                Container(
                  height: 250,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Name : '),
                        SizedBox(height: 15,),
                        Text('\nPrice : '),
                        SizedBox(height: 15,),
                        Text('\nCategory : '),
                        SizedBox(height: 15,),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 250,
                  width: 64,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade200,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(25),bottomRight: Radius.circular(25)),
                ),
                child: GestureDetector(onTap:() {
                  setState(() {
                    cartlist.removeAt(firstList[selectedindex]);
                  });
                },child: Icon(Icons.delete,size: 30,)),
                )
              ],
            ),
          );
  }
}
