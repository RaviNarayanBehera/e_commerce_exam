import 'package:e_commerce_exam/Home/Component/Home%20Page/home_page.dart';
import 'package:flutter/material.dart';

import 'Home/Component/Cart Page/cart_page.dart';
import 'Home/Component/Detail Page/detail_page.dart';

void main()
{
  runApp(Exam());
}

class Exam extends StatelessWidget {
  const Exam({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context)=> home_page(),
        '/detail' : (context)=> detail_page(),
        '/cart' : (context)=> CartPage(),
      },
    );
  }
}

