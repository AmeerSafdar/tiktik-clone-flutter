// ignore_for_file: prefer_const_constructors, unnecessary_this

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'nav_states.dart';

enum NavbarItem { home, search, add, message, profile }

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationState(NavbarItem.home, 0));

  void getNavBarItem(NavbarItem navbarItem) {
    debugPrint("navbar item is $navbarItem");
    switch (navbarItem) {
      case NavbarItem.home:
        emit(NavigationState(NavbarItem.home, 0));
        break;
      case NavbarItem.search:
        emit(NavigationState(NavbarItem.search, 1));
        break;
      case NavbarItem.add:
        emit(NavigationState(NavbarItem.add, 2));
        break;
      case NavbarItem.message:
        emit(NavigationState(NavbarItem.message, 3));
        break;
      case NavbarItem.profile:
        emit(NavigationState(NavbarItem.profile, 4));
        break;
    }
  }
}
