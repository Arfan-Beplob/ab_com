import 'package:ab_com/Widges%20common/home_button.dart';
import 'package:ab_com/consts/colors.dart';
import 'package:ab_com/consts/consts.dart';
import 'package:ab_com/consts/list.dart';
import 'package:ab_com/views/HomeScreen/Components/featured_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: lightGrey,
      padding: EdgeInsets.all(12),
      height: context.screenHeight,
      width: context.screenWidth,
      child: SafeArea(
        child: Column(
          children: [

            //search item
            Container(
              alignment: Alignment.center,
              height: 60,
              color: lightGrey,
              child: TextFormField(
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: whiteColor,
                  hintText: searchAnything,
                  hintStyle: TextStyle(
                    color: textfieldGrey
                  )
                ),
              ),
            ),
            10.heightBox,
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    //firstSlider
                    VxSwiper.builder(
                        aspectRatio: 16/9,
                        autoPlay: true,
                        height: 150,
                        enlargeCenterPage: true,
                        itemCount: sliderList.length,
                        itemBuilder: (context,index){
                          return Image.asset(
                            sliderList[index],
                            fit: BoxFit.fill,
                          ).box.rounded.clip(Clip.antiAlias).margin(const EdgeInsets.symmetric(horizontal: 8)).make();}
                    ),

                    //home-button
                    10.heightBox,
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:
                        List.generate(2, (index) => homeButton(
                            height: context.screenHeight *0.15,
                            width: context.screenWidth / 2.5,
                            icon: index == 0 ? icTodaysDeal : icFlashDeal,
                            title: index == 0 ? todayDeal : flashSale,
                            onPress: (){}
                        ))
                    ),

                    //secondSlider
                    10.heightBox,
                    VxSwiper.builder(
                        aspectRatio: 16/9,
                        autoPlay: true,
                        height: 150,
                        enlargeCenterPage: true,
                        itemCount: secondSliderList.length,
                        itemBuilder: (context,index){
                          return Image.asset(
                            secondSliderList[index],
                            fit: BoxFit.fill,
                          ).box.rounded.clip(Clip.antiAlias).margin(const EdgeInsets.symmetric(horizontal: 8)).make();}
                    ),

                    //home-button
                    10.heightBox,
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:
                        List.generate(3, (index) => homeButton(
                            height: context.screenHeight *0.15,
                            width: context.screenWidth / 3.5,
                            icon: index == 0 ? icCategories : index == 1 ? icBrands : icTopSeller,
                            title: index == 0 ? categories : index == 1 ? brand : topSellers,
                            onPress: (){}
                        ))
                    ),

                    //featuredCategory
                    20.heightBox,
                    Align(
                        alignment: Alignment.centerLeft,
                        child: featuredCategory.text.color(darkFontGrey).fontFamily(semibold).size(18).make()
                    ),20.heightBox,
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(3, (index) => Column(
                          children: [
                            featuredButton(icon: featuredImage1[index],title: featuredTitle1[index]),
                            10.heightBox,
                            featuredButton(icon: featuredImage2[index],title: featuredTitle2[index])
                          ],
                        )).toList(),
                      ),
                    ),
                    20.heightBox,
                    Container(
                      padding: const EdgeInsets.all(12),
                      width: double.infinity,
                      decoration: const BoxDecoration(color: redColor),
                      child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          featuredProduct.text.white.fontFamily(bold).size(18).make(),
                          10.heightBox,
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(6, (index) => Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(featuredProductImage[index],width: 150,fit: BoxFit.cover,),
                                  featuredProductTitle[index].text.fontFamily(semibold).color(darkFontGrey).make(),
                                  10.heightBox,
                                  featuredProductPrice[index].text.color(redColor).size(16).fontFamily(bold).make()
                                ],
                              ).box.white.margin(const EdgeInsets.symmetric(horizontal: 4)).roundedSM.padding(const EdgeInsets.all(8)).make()
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    //3rd swiper
                    20.heightBox,
                    VxSwiper.builder(
                        aspectRatio: 16/9,
                        autoPlay: true,
                        height: 150,
                        enlargeCenterPage: true,
                        itemCount: secondSliderList.length,
                        itemBuilder: (context,index){
                          return Image.asset(
                            secondSliderList[index],
                            fit: BoxFit.fill,
                          ).box.rounded.clip(Clip.antiAlias).margin(const EdgeInsets.symmetric(horizontal: 8)).make();}
                    ),
                    20.heightBox,
                    GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                        itemCount: 6,
                        shrinkWrap: true,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 8,
                            crossAxisSpacing: 8,
                            mainAxisExtent: 300,
                            crossAxisCount: 02),
                        itemBuilder: (context,index){
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(featuredProductImage[index],width: 200,height:200,fit: BoxFit.cover,),
                          const Spacer(),
                          featuredProductTitle[index].text.fontFamily(semibold).color(darkFontGrey).make(),
                          10.heightBox,
                          featuredProductPrice[index].text.color(redColor).size(16).fontFamily(bold).make(),
                          10.heightBox,
                        ],
                      ).box.white.roundedSM.margin(const EdgeInsets.symmetric(horizontal: 4)).padding(EdgeInsets.all(8)).make();
                        })
                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
