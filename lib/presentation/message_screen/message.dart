// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tiktokclone/helper/color_helper.dart';

class MesasageScreen extends StatelessWidget {
  const MesasageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Spacer(),
              Text(
                "All Activity",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Icon(Icons.arrow_drop_down),
              Spacer(),
              Icon(
                Icons.send,
                size: 30,
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          width: double.infinity,
          height: 2,
          decoration: BoxDecoration(
            color: GREYCLY,
          ),
        ),
        Spacer(),
        Icon(
          Icons.bookmark_border_rounded,
          size: 60,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "All Activity",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Notification about your account will appear here",
        ),
        Spacer(),
      ],
    );
  }
}
