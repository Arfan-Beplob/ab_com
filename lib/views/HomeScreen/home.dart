import 'package:ab_com/consts/consts.dart';
import 'package:ab_com/controller/home-screen-controller.dart';
import 'package:ab_com/views/Account%20Screen/account_screen.dart';
import 'package:ab_com/views/Cart%20Screen/cart_screen.dart';
import 'package:ab_com/views/Category%20Screen/category_screen.dart';
import 'package:ab_com/views/HomeScreen/home-screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

    //init home controller
    var controller = Get.put(HomeController());

    var navberItemList =  [
      BottomNavigationBarItem(icon: Image.asset(icHome,width: 26,),label: home),
      BottomNavigationBarItem(icon: Image.asset(icCategories,width: 26,),label: categories),
      BottomNavigationBarItem(icon: Image.asset(icCart,width: 26,),label: cart),
      BottomNavigationBarItem(icon: Image.asset(icProfile,width: 26,),label: account),
    ];

    var navBody = [
       const HomeScreen(),
      const CategoryScreen(),
      const CartScreen(),
      const AccountScreen()
    ];

    return Scaffold(
      body: Column(
        children: [
          Obx( ()=> Expanded(child: navBody.elementAt(controller.currentNavIndex.value)))
        ],
      ),
      bottomNavigationBar: Obx( ()=>
        BottomNavigationBar(
          currentIndex: controller.currentNavIndex.value,
          selectedItemColor: redColor,
          selectedLabelStyle: const TextStyle(fontFamily: semibold),
          type: BottomNavigationBarType.fixed,
            backgroundColor: whiteColor,
            items: navberItemList,
          onTap: (value){
            controller.currentNavIndex.value = value;
          },
        ),
      ),
    );
  }
}
