// ignore_for_file: prefer_const_constructors

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shose_shop/layout/cubit/cubit.dart';
import 'package:shose_shop/layout/cubit/status.dart';

class AppLayout extends StatelessWidget {
  const AppLayout({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>AppCubit(),
      child: BlocConsumer<AppCubit,AppStates>(
        listener: (context,state){},
        builder: (context,state){
          var cubit = AppCubit.get(context);
          return Scaffold(
            backgroundColor: Colors.grey[50],
           
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            // ignore: prefer_const_literals_to_create_immutables
            actions: [
              Icon(Icons.notifications_outlined,color:Colors.black),
              SizedBox(width: 20,),

            ],
          ),
          body: cubit.bottomScreens[cubit.currentIndex] ,
          bottomNavigationBar: BottomNavyBar(
            selectedIndex: cubit.currentIndex,
            items: [
              BottomNavyBarItem(
           icon: Icon(Icons.shopping_bag_outlined),
           title: Text('Home'),
           activeColor: Colors.amber,
           inactiveColor: Colors.grey
         ),
         BottomNavyBarItem(
             icon: Icon(Icons.shopping_cart_outlined),
             title: Text('Cart'),
             activeColor: Colors.amber,
           inactiveColor: Colors.grey
          
         ),
         BottomNavyBarItem(
             icon: Icon(Icons.person_outline),
             title: Text('Profile'),
             activeColor: Colors.amber,
           inactiveColor: Colors.grey
         ),
            ], 
            onItemSelected: (int index) {  
              cubit.changeBottom(index);
            },
          ),
          
        );
        },
         
      ),
    );
  }
}