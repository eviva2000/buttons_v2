import 'package:flutter/material.dart';

class Button extends StatelessWidget {
 final String btntext;
  final bool isDisabled;
  final int bgcolor;
  final bool hasIcon;

  const Button({Key? key,required this.btntext, required this.isDisabled, required this.bgcolor, required this.hasIcon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300,
        decoration: BoxDecoration(
            color:Color(bgcolor),
            borderRadius: BorderRadius.circular(10)
        ),
        padding: const EdgeInsets.all(14),
        margin: const EdgeInsets.only(top: 20.0),
        child: hasIcon? TextButton.icon(
            icon:const Icon(
              Icons.add_circle_outline_rounded,
              color:Colors.white,
            ),
            label:Text(btntext,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            onPressed: isDisabled ?  null : (){}
        ) :
        TextButton(
            child:Text(btntext,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            onPressed: isDisabled ?  null : (){}
        )
    );
  }
}

