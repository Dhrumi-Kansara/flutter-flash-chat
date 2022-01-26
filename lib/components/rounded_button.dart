import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  
  final Color colour;
  final String label;
  final VoidCallback ?onPressed;

  RoundedButton({this.colour=Colors.black, this.label="", this.onPressed});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Material(
        color: colour,
        elevation: 5,
        borderRadius: BorderRadius.circular(60),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200,
          height: 42,
          child: Text(
            label,
          ),
        ),
      ),
    );
  }
}
