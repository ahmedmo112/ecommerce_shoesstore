import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shose_shop/layout/cubit/status.dart';
import 'package:shose_shop/module/Cart/cart_screen.dart';
import 'package:shose_shop/module/Home/home_screen.dart';
import 'package:shose_shop/module/Profile/profile_screen.dart';

class AppCubit extends Cubit<AppStates>{
  AppCubit() : super(InitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  
  List<Widget> bottomScreens = [
    HomeScreen(),
    CartScreen(),
    ProfileScreen()
  ];

  void changeBottom(int index) {
    currentIndex = index;
    emit(ChangeBottomNavState());
  }
}