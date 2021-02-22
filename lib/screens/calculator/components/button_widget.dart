import 'package:calculatorui/material/colors.dart';
import 'package:flutter/material.dart';
import 'package:calculatorui/utils/utils.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;
  final VoidCallback onLongPress;

  const ButtonWidget({Key key, this.text, this.onClicked, this.onLongPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = getTextButtonColor(text);

    return Expanded(
      child: Container(
        margin: EdgeInsets.all(6),
        height: double.infinity,
        child: ElevatedButton(
          onPressed: onClicked,
          onLongPress: onLongPress,
          style: ElevatedButton.styleFrom(
            primary: MyColors.background3,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            )
          ),
          child: text == "<" ? Icon(Icons.backspace_outlined, color: color)
          :Text(
            text,
            style: TextStyle(
              color: color,
              fontSize: Utils.isOperator(text, hasEquals : true) ? 22 : 26,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }

  Color getTextButtonColor(String buttonText){
    switch(buttonText){
      case "/":
      case "x":
      case "+":
      case "-":
      case "=":
        return MyColors.operators;
      
      case "<":
      case "AC":
        return MyColors.delete;

      default: return MyColors.numbers;
    }
  }
}