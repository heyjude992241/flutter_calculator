import 'package:flutter/material.dart';
import 'package:calculatorui/material/colors.dart';
import 'package:calculatorui/screens/calculator/components/button_widget.dart';

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
      child: Column(
        children: [
          buildButtonRow("AC", "<", "", "/"),
          buildButtonRow("7", "8", "9", "x"),
          buildButtonRow("4", "5", "6", "-"),
          buildButtonRow("1", "2", "3", "+"),
          buildButtonRow("0", ".", "", "=")
        ],
    ),
    );
  }

  Widget buildButtonRow(String first, String second, String third, String fourth){
    final row = [first, second, third, fourth];

    return Expanded(
      child: Row(
        children: row.map((text) => 
          ButtonWidget(
            text: text,
            onClicked: (){},
            onLongPress: (){}
          )
        ).toList()
        ,
      ),
    );
  }
}