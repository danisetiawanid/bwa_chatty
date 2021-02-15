import 'package:flutter/material.dart';
import 'package:flutter_app/theme.dart';

class MessageChatTile extends StatelessWidget {
  final String imageUrl;

  final String text;
  final String time;

  const MessageChatTile({
    Key key,
    this.imageUrl,
    this.text,
    this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Image.asset(
            imageUrl,
            height: 55,
            width: 55,
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
              ),
            ],
          ),
          Spacer(),
          Text(time, style: subtitleTextStyle)
        ],
      ),
    );
  }
}
