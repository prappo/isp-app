import 'package:ecommerce/sections/balance.dart';
import 'package:ecommerce/sections/preview.dart';
import 'package:ecommerce/sections/profile.dart';
import 'package:ecommerce/sections/tv.dart';
import 'package:flutter/material.dart';
import 'package:rect_getter/rect_getter.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          color: Color(0xffE8EEF5),
          child: Column(
            children: <Widget>[
              ProfileSection(),
              SizedBox(
                height: 10.0,
              ),
              BalanceSection(),
              SizedBox(
                height: 10,
              ),
              TvSection(),
//              PreviewSection()
            ],
          ),
        )
      ],
    );
  }
}
