import 'package:flutter/material.dart';
import '../constants.dart';

class MessageBubble extends StatelessWidget {
  final String text;
  final String sender;
  final bool isSenderCurrentUser;

  MessageBubble(
      {this.text = "", this.sender = "", this.isSenderCurrentUser = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: isSenderCurrentUser
            ? CrossAxisAlignment.end
            : CrossAxisAlignment.start,
        children: [
          Text(
            sender,
            style: TextStyle(color: Colors.grey.shade400),
          ),
          Material(
            color: isSenderCurrentUser ? Colors.cyan : Colors.cyan.shade700,
            borderRadius: isSenderCurrentUser
                ? kRightBubbleBorderRadius
                : kLeftBubbleBorderRadius,
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
