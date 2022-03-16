import 'package:flutter/material.dart';
import 'package:star_travel/src/utils/colors.dart' as utils;


class ButtonApp extends StatelessWidget {

  Color? color;
  String text;
  IconData icon;
  Function? onPressed;

  ButtonApp({
    this.color,
    required this.text,
    this.icon = Icons.arrow_forward_ios,
    this.onPressed
  });

  @override
  Widget build(BuildContext context){
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: utils.Colors.startTravel,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        )
      ),
      onPressed: (){
        onPressed!();
      }, 
      child: Stack(
        children:[
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 50,
              alignment: Alignment.center,
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),
              )
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 50,
              child: CircleAvatar(
                radius: 15,
                child: Icon(
                  icon,
                  color: utils.Colors.startTravel,
                  ),
                  backgroundColor: Colors.white,
              ),
            ),
          )
          
        ]
      ),
    );
  }
}