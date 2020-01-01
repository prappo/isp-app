import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,

        children: <Widget>[
          Expanded(

            child: Container(

              child: Row(
                children: <Widget>[
                  Icon(Icons.account_circle),
                  SizedBox(
                    width: 10,
                  ),
                  Text('You',
                    style: TextStyle(
                      fontSize: 20
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(

                color: Color(0xffE8EEF5),
                borderRadius: BorderRadius.all(Radius.circular(15.0))
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.monetization_on,color: Colors.blue,),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Upgrade plan',
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios,size: 15,)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
