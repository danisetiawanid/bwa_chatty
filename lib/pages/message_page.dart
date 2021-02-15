import 'package:flutter/material.dart';

import 'package:flutter_app/widget/call_phone_tile.dart';
import 'package:flutter_app/widget/message_chat_tile.dart';

class MessagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              child: Column(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)),
                    child: Column(
                      children: [
                        CallPhoneTile(
                          imageUrl: 'assets/images/group1.png',
                          name: 'Jakarta Fair',
                          text: '14.002 members',
                        ),
                      ],
                    ),
                  ),
                  MessageChatTile(
                    imageUrl: 'assets/images/friend1.png',
                    text: 'halo',
                    time: 'now',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
