import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BalanceSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          image: DecorationImage(
            image: AssetImage('assets/balance_background.jpg'),
            fit: BoxFit.cover
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(3.0, 3.0),
              blurRadius: 20.0,
            )
          ]),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(
              'Current Package',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
                shadows: [
                  BoxShadow(
                    offset: Offset(4,4)
                  )
                ]

              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10.0),
//              alignment: Alignment.center,
              child: Column(
                children: <Widget>[

                  Container(
                    height: 150,
                    width: 150,
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(8.0, 8.0),
                            blurRadius: 15.0,
                          )
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'TK',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '0',
                          style: TextStyle(
                            fontSize: 40.0,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '/ Month',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
