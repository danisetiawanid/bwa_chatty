import 'package:flutter/material.dart';
import 'package:bwa_chatty/theme.dart';

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
      padding: EdgeInsets.only(top: 22),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Image.asset(
              imageUrl,
              height: 45,
              width: 45,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Container(
            decoration: new BoxDecoration(
                color: Colors.blueGrey[50],
                borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(20),
                  topRight: const Radius.circular(20),
                  bottomRight: const Radius.circular(20),
                )),
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
                  Text(time,
                      style: subtitleTextStyle.copyWith(color: blackColor)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
