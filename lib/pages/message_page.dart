import 'package:bwa_chatty/theme.dart';
import 'package:bwa_chatty/widget/message_chat_friend_tile.dart';
import 'package:flutter/material.dart';

import 'package:bwa_chatty/widget/call_phone_tile.dart';
import 'package:bwa_chatty/widget/message_chat_tile.dart';

class MessagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: SingleChildScrollView(
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
                      text: 'How are you guys ?',
                      time: '6:11',
                    ),
                    MessageChatTile(
                      imageUrl: 'assets/images/friend3.png',
                      text: 'Find here :P',
                      time: '6:24',
                    ),
                    MessageChatFriendTile(
                      imageUrl: 'assets/images/friend4.png',
                      text:
                          'Thinking about how to deal\nwith this client from hell...',
                      time: '22:24',
                    ),
                    MessageChatTile(
                      imageUrl: 'assets/images/friend2.png',
                      text: 'Love them',
                      time: '23:33',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(36),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: whiteColor),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18, top: 4, bottom: 4),
                    child: TextFormField(
                      cursorColor: greyColor,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: "Type message ...",
                        hintStyle: TextStyle(color: greyColor),
                        suffixIcon: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 6),
                              child: Container(
                                height: 36,
                                width: 36,
                                decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(100)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 2),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.send_rounded,
                                      color: blackColor,
                                      size: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
