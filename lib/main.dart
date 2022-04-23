import 'package:flutter/material.dart';
import 'button.dart';
void main() {
  runApp( const MaterialApp(
    home:Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          title:Text('Buttons, Buttons, Buttons'),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
        ),
        body:const Center(
          child:Button(btntext: 'Primary', isDisabled: false, bgcolor: 0xFF6A1B9A,hasIcon: false)
        )
    );
  }
}
