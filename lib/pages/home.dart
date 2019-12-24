import 'package:ecommerce/sections/balance.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffE8EEF5),
      child: Column(

        children: <Widget>[
          SizedBox(
            height: 10.0,
          ),
         BalanceSection(),
        ],
      ),
    );
  }
}
