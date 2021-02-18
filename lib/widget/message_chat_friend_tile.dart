import 'package:flutter/material.dart';
import 'package:bwa_chatty/theme.dart';

class MessageChatFriendTile extends StatelessWidget {
  final String imageUrl;

  final String text;
  final String time;

  const MessageChatFriendTile({
    Key key,
    this.imageUrl,
    this.text,
    this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 22),
      child: Row(
        children: [
          Spacer(),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(time, style: subtitleTextStyle),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 54),
            child: Image.asset(
              imageUrl,
              height: 45,
              width: 45,
            ),
          ),
        ],
      ),
    );
  }
}
