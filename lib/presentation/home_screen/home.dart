// ignore_for_file: unused_field, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tiktokclone/helper/color_helper.dart';
import 'package:tiktokclone/presentation/message_screen/message.dart';
import 'package:tiktokclone/presentation/profile_screen.dart/profile.dart';
import 'package:tiktokclone/presentation/search_screen/search.dart';

import '../../bloc/navbar_bloc/nav_bloc.dart';
import '../../bloc/navbar_bloc/nav_states.dart';
import 'homewidget.dart';

class MyHomeScreen extends StatelessWidget {
  MyHomeScreen({Key? key}) : super(key: key);
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
          backgroundColor: white_clr,
          bottomNavigationBar: BlocBuilder<NavigationCubit, NavigationState>(
            builder: (context, state) {
              return Container(
                  padding: EdgeInsets.only(top: 7),
                  height: 60,
                  decoration: BoxDecoration(color: Colors.black),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        bottomNav(context, Icons.home, "Home", () {
                          selectedIndex = 0;
                          BlocProvider.of<NavigationCubit>(context)
                              .getNavBarItem(NavbarItem.home);
                        }, 0),
                        bottomNav(context, Icons.search, "Search", () {
                          selectedIndex = 1;
                          BlocProvider.of<NavigationCubit>(context)
                              .getNavBarItem(NavbarItem.search);
                        }, 1),
                        GestureDetector(
                          onTap: () {
                            selectedIndex = 2;
                            BlocProvider.of<NavigationCubit>(context)
                                .getNavBarItem(NavbarItem.add);
                          },
                          child: Container(
                            width: 40,
                            height: 30,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(7)),
                            child: Icon(
                              Icons.add,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        bottomNav(context, Icons.message_outlined, "Message",
                            () {
                          selectedIndex = 3;
                          BlocProvider.of<NavigationCubit>(context)
                              .getNavBarItem(NavbarItem.message);
                        }, 3),
                        bottomNav(context, Icons.person, "Profile", () {
                          selectedIndex = 4;
                          BlocProvider.of<NavigationCubit>(context)
                              .getNavBarItem(NavbarItem.profile);
                        }, 4),
                      ]));
            },
          ),
          body: SafeArea(child: BlocBuilder<NavigationCubit, NavigationState>(
            builder: (context, state) {
              if (state.navbarItem == NavbarItem.home) {
                return HomeWidget();
              } else if (state.navbarItem == NavbarItem.search) {
                return SearchScreen();
              } else if (state.navbarItem == NavbarItem.add) {
                return MesasageScreen();
              } else if (state.navbarItem == NavbarItem.message) {
                return MesasageScreen();
              } else if (state.navbarItem == NavbarItem.profile) {
                return ProfileScreen();
              }
              return Container();
            },
          ))),
    );
  }

  GestureDetector bottomNav(BuildContext context, IconData icon, String label,
      VoidCallback preesed, int index) {
    return GestureDetector(
      onTap: preesed,
      child: Column(
        children: [
          Icon(
            icon,
            color: selectedIndex == index ? white_clr : grey_clr,
            size: 24,
          ),
          Text(
            label,
            style:
                TextStyle(color: selectedIndex == index ? white_clr : grey_clr),
          )
        ],
      ),
    );
  }
}
