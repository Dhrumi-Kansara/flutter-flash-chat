import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {

  final String text;
  final String sender;
  final String CurrentUserEmail;

  MessageBubble({this.text = "", this.sender = "", this.CurrentUserEmail=""});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CurrentUserEmail == sender? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(sender, style: TextStyle(color: Colors.grey.shade400),),
          Material(
            color: CurrentUserEmail == sender?Colors.cyan: Colors.cyan.shade700,
            borderRadius: BorderRadius.circular(30),
            elevation: 5,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text(text),
            ),
          ),
        ],
      ),
    );
  }
}
