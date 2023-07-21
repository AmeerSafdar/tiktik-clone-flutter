// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiktokclone/helper/color_helper.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.arrow_back_ios),
              Spacer(),
              Text(
                "Charlotty",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Spacer(),
              Icon(Icons.more_horiz_outlined)
            ],
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          width: double.infinity,
          height: 2,
          decoration: BoxDecoration(
            color: GREYCLY,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        CircleAvatar(
          radius: 50,
          backgroundImage: NetworkImage(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZefRRvqQt3X-rYyjJuUcnQcaWLuCD4raXPK28GV8C&s"),
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          "@Chrlotty123",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),

        //following
        SizedBox(
          height: 35,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            followers("245", "Following"),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              width: 2,
              height: 20,
              decoration: BoxDecoration(
                color: black_clr,
              ),
            ),
            followers("2135", "Followers"),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              width: 2,
              height: 20,
              decoration: BoxDecoration(
                color: black_clr,
              ),
            ),
            followers("21k", "Likes"),
          ],
        ),
        SizedBox(
          height: 20,
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 45, vertical: 20),
              decoration: BoxDecoration(color: RED_CLR),
              child: Text(
                "Follow",
                style: TextStyle(
                    color: white_clr,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              decoration: BoxDecoration(border: Border.all(width: 1)),
              child: Icon(
                Icons.camera_alt,
                size: 25,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 1, vertical: 5),
              decoration: BoxDecoration(border: Border.all(width: 1)),
              child: Icon(
                Icons.arrow_drop_down,
                size: 45,
              ),
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          width: double.infinity,
          height: 55,
          decoration:
              BoxDecoration(border: Border.all(width: 1, color: GREYCLY)),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.menu,
                  size: 40,
                ),
                Container(
                  height: 4,
                  width: 40,
                  decoration: BoxDecoration(color: black_clr),
                )
              ],
            ),
            Icon(
              Icons.favorite_border_outlined,
              color: GREYCLY,
              size: 40,
            )
          ]),
        ),
        Expanded(
            child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 1),
                          width: 140,
                          height: 140,
                          child: Image(
                              fit: BoxFit.cover,
                              height: 140,
                              width: 140,
                              image: NetworkImage(
                                  "https://images.unsplash.com/photo-1508214751196-bcfd4ca60f91?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80")),
                        ),
                        Positioned(
                            bottom: 2,
                            left: 2,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.play_arrow_outlined,
                                  color: white_clr,
                                ),
                                Text(
                                  "12$index",
                                  style: TextStyle(color: white_clr),
                                )
                              ],
                            ))
                      ],
                    )
                  ],
                );
              })),
        ))
      ],
    );
  }

  Column followers(String number, String txt) {
    return Column(children: [
      Text(
        number,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        txt,
      ),
    ]);
  }
}
