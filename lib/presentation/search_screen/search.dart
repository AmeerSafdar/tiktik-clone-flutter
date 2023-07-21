// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tiktokclone/helper/color_helper.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(0),
                    prefixIcon: Icon(
                      Icons.search,
                      color: black_clr,
                    ),
                    hintText: "Search",
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12)),
                    fillColor: INPUTFIELDCLR,
                    filled: true),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.qr_code_scanner_sharp,
              size: 35,
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          width: double.infinity,
          height: 2,
          decoration: BoxDecoration(
            color: GREYCLY,
          ),
        ),
      ]),
    );
  }
}
