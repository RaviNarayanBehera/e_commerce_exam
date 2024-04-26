import 'package:flutter/material.dart';

Column list2({required String img, required String price}) {
  return Column(
    children: [
      Container(
        height: 210,
        width: 165,
        decoration: BoxDecoration(
            color: Colors.blue.shade100,
            image: DecorationImage(image: AssetImage(img), fit: BoxFit.fill)),
      ),
      Container(
        height: 50,
        width: 165,
        decoration: BoxDecoration(
          color: Colors.blue.shade100,
        ),
        alignment: Alignment.center,
        child: Text(
          price,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
        ),
      )
    ],
  );
}

Column list1({required String img, required String price}) {
  return Column(
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 210,
            width: 165,
            decoration: BoxDecoration(
                color: Colors.blue.shade100,
                image: DecorationImage(image: AssetImage(img),
                    fit: BoxFit.fill)),
          ),
          Container(
            height: 50,
            width: 165,
            decoration: BoxDecoration(
              color: Colors.blue.shade100,
            ),
            alignment: Alignment.center,
            child: Text(
              price,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    ],
  );
}