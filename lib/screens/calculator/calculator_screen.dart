import 'package:flutter/material.dart';
import 'package:calculatorui/material/colors.dart';

class CalculatorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.background1,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Container(
          margin: EdgeInsets.only(left: 8.0),
          child: Text("Calculator App"),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(

              )
            ),
            Expanded(
              flex: 2,
              child: buildButtons()
            )
          ]
        )
      ),
    );
  }

  Widget buildButtons() {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: MyColors.background2,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16))
      ),
    );
  }
}