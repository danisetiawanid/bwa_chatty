import 'package:flutter/material.dart';
import 'package:flutter_app/theme.dart';

class CallPhoneTile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String text;

  const CallPhoneTile({
    Key key,
    this.imageUrl,
    this.name,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
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
                name,
                style: titleTextStyle,
              ),
              Text(
                text,
                style: subtitleTextStyle,
              ),
            ],
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(right: 4),
            child: ClipOval(
              child: Material(
                color: greenColor, // button color
                child: InkWell(
                  child: SizedBox(
                      width: 36,
                      height: 36,
                      child: Icon(
                        Icons.call,
                        color: whiteColor,
                      )),
                  onTap: () {},
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
