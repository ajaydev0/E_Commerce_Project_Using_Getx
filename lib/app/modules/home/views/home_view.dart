import 'package:demo/app/modules/auth/user_data/users.dart';
import 'package:demo/app/modules/home/controller/home_controller.dart';
import 'package:demo/utils/Ui_Content.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../Widgets/AppSize_MediaQuery.dart';
import '../../../../Widgets/Container_Widget.dart';
import '../../../../Widgets/Scaffold_Widget.dart';
import '../../../../Widgets/SizeBox_Widget.dart';
import '../../../../Widgets/TextField_Widget.dart';
import '../../../../Widgets/Text_Widget.dart';
import 'home_data/Box1_Data_PageView.dart';
import 'home_widgets/Boxicon_HomePage.dart';
import 'home_widgets/Exit_HomePage.dart';
import 'home_widgets/indigators.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());

    return WillPopScope(
      onWillPop: () {
        Exit_DialogBox(context);
        return Future.value(false);
      },
      child: KScaffold(
        extendBody: true,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Kcontainer(
                h: 260,
                child: Stack(
                  children: [
                    Kcontainer(
                      h: 190,
                      decoration: BoxDecoration(
                        color: appcolors.blue400,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            box.value.read("userName"),
                            style: const TextStyle(
                                color: appcolors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Kcontainer(
                                  h: 50,
                                  w: Kw(context: context, value: 40),
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(.3),
                                          blurRadius: 10.0,
                                          offset: const Offset(0, 3),
                                        ),
                                      ],
                                      color: appcolors.white,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      top: 3,
                                      left: 5,
                                    ),
                                    child: KtextField2(
                                      readOnly: true,
                                      prefixIcon: Icons.search,
                                      prefixIconColor: appcolors.black,
                                      border: InputBorder.none,
                                      hintText: "Search..",
                                      hintTextColor: appcolors.black,
                                    ),
                                  ),
                                ),
                              ),
                              // KsBox(
                              //   w: Kw(context: context, value: 2),
                              // ),
                              GestureDetector(
                                onTap: () {
                                  Exit_DialogBox(context);
                                },
                                child: Kcontainer(
                                  h: 50,
                                  w: Kw(context: context, value: 14),
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(.3),
                                          blurRadius: 10.0,
                                          offset: const Offset(0, 3),
                                        ),
                                      ],
                                      borderRadius: BorderRadius.circular(20),
                                      color: appcolors.white),
                                  child: const Icon(Icons.add_a_photo_outlined),
                                ),
                              ),
                              // KsBox(w: Kw(context: context, value: 5)),
                            ],
                          ),
                        ],
                      ),
                    ),
                    //PageView.builder
                    Positioned(
                      top: 80,
                      left: Kw(context: context, value: 0),
                      right: Kw(context: context, value: 0),
                      child: Kcontainer(
                        h: 180,
                        // width: AppWidth * 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          // color: Colors.amber,
                        ),
                        child: PageView.builder(
                          itemCount: products.length,
                          // itemCount: HomePageBox1().itemName.length,
                          itemBuilder: (context, index) {
                            final product = products[index];
                            double scale = controller.kscale(index);
                            return TweenAnimationBuilder(
                              tween: Tween(begin: scale, end: scale),
                              duration: const Duration(seconds: 1),
                              builder: (context, value, child) {
                                return Transform.scale(
                                  scale: value,
                                  child: child,
                                );
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Hero(
                                  tag: ProductsList().itemData[index].name,
                                  child: Kcontainer(
                                      h: 30,
                                      w: Kw(context: context, value: 5),
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          //upor nic
                                          BoxShadow(
                                            color: Colors.black.withOpacity(.4),
                                            blurRadius: 3.0,
                                            offset: const Offset(0, 5),
                                          ),
                                          //left
                                          // BoxShadow(
                                          //   color: Colors.white,
                                          //   offset: Offset(-5, 0),
                                          // ),
                                          // //right
                                          // BoxShadow(
                                          //   color: Colors.white,
                                          //   offset: Offset(5, 0),
                                          // ),
                                        ],
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white,
                                      ),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            top: 13,
                                            left: 10,
                                            child: GestureDetector(
                                              onTap: () {
                                                // Get.off(ProductDetail1());
                                                //normal
                                                Navigator.of(context).push(
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            navigation()
                                                                .nav[index]
                                                                .Ontap));
                                                print("Clicked 22");
                                                // Get.to(() =>
                                                //     navigation().nav[index]);
                                              },
                                              child: Kcontainer(
                                                h: 100,
                                                w: 150,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: NetworkImage(
                                                        product.imgUrl
                                                        // HomePageBox1().itemName[index],
                                                        // HomePageBox1().itemImg[index]
                                                        ),
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            top: 15,
                                            left: 170,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Ktext(
                                                  text: "Premium",
                                                  size: 12,
                                                ),
                                                KsBox(
                                                  h: 2,
                                                ),
                                                Ktext(
                                                  text: product.name,
                                                  // text: HomePageBox1().itemName[index],
                                                  size: 18,
                                                  weight: FontWeight.bold,
                                                ),
                                                Row(
                                                  children: [
                                                    Kcontainer(
                                                      margin:
                                                          const EdgeInsets.only(
                                                              right: 1),
                                                      child: const Icon(
                                                        Icons.star,
                                                        color: Colors.amber,
                                                        size: 12,
                                                      ),
                                                    ),
                                                    Kcontainer(
                                                      margin:
                                                          const EdgeInsets.only(
                                                              right: 1),
                                                      child: const Icon(
                                                        Icons.star,
                                                        color: Colors.amber,
                                                        size: 12,
                                                      ),
                                                    ),
                                                    Kcontainer(
                                                      margin:
                                                          const EdgeInsets.only(
                                                              right: 1),
                                                      child: const Icon(
                                                        Icons.star,
                                                        color: Colors.amber,
                                                        size: 12,
                                                      ),
                                                    ),
                                                    Kcontainer(
                                                      margin:
                                                          const EdgeInsets.only(
                                                              right: 1),
                                                      child: const Icon(
                                                        Icons.star,
                                                        color: Colors.amber,
                                                        size: 12,
                                                      ),
                                                    ),
                                                    Kcontainer(
                                                      margin:
                                                          const EdgeInsets.only(
                                                              right: 5),
                                                      child: const Icon(
                                                        Icons.star,
                                                        color: Colors.grey,
                                                        size: 12,
                                                      ),
                                                    ),
                                                    Ktext(
                                                      text: '4.0',
                                                      color: Colors.black87,
                                                      size: 12,
                                                    ),
                                                  ],
                                                ),
                                                KsBox(
                                                  h: 5,
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    //toast
                                                    // _showToast(context);
                                                    // print("Data Added");
                                                    // print(cartItems);
                                                    //data add
                                                    controller
                                                        .addToCart(product);
                                                  },
                                                  child: Kcontainer(
                                                      h: 35,
                                                      w: 90,
                                                      decoration: BoxDecoration(
                                                        color: Colors.black,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                      ),
                                                      child: Center(
                                                          child: Ktext(
                                                              text:
                                                                  "Add to Cart",
                                                              size: 13,
                                                              color:
                                                                  Colors.white,
                                                              weight: FontWeight
                                                                  .bold))),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      )),
                                ),
                              ),
                            );
                          },
                          onPageChanged: (value) {
                            //set State chilo
                            controller.selectedIndex = value;
                            controller.selectedIndex = value;

                            // print(activeIndigator);
                          },
                          controller: controller.pageController,
                        ),
                      ),
                    ),

                    Positioned(
                      top: 140,
                      child: KsBox(
                        h: Kh(context: context, value: 20),
                        w: Kw(context: context, value: 100),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                controller.pageController.previousPage(
                                    duration: const Duration(milliseconds: 400),
                                    curve: Curves.linear);
                                // print("Click");
                              },
                              child: Kcontainer(
                                h: 40,
                                w: 40,
                                decoration: BoxDecoration(
                                    color: appcolors.blue400,
                                    borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(5),
                                        bottomRight: Radius.circular(5))),
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: appcolors.halkablack,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                controller.pageController.nextPage(
                                    duration: const Duration(milliseconds: 400),
                                    curve: Curves.linear);
                              },
                              child: Kcontainer(
                                h: 40,
                                w: 40,
                                decoration: BoxDecoration(
                                    color: appcolors.blue400,
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(5),
                                        bottomLeft: Radius.circular(5))),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: appcolors.halkablack,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //Indigator
                    Positioned(
                      top: 220,
                      left: Kw(context: context, value: 45),
                      child: Kcontainer(
                        h: 20,
                        w: 80,
                        // color: Colors.blue,
                        child: Row(
                          children: [
                            Indigator(
                                color: controller.selectedIndex == 0
                                    ? appcolors.grey700
                                    : appcolors.grey400),
                            KsBox(
                              w: 5,
                            ),
                            Indigator(
                                color: controller.selectedIndex == 1
                                    ? appcolors.grey700
                                    : appcolors.grey400),
                            KsBox(
                              w: 5,
                            ),
                            Indigator(
                                color: controller.selectedIndex == 2
                                    ? appcolors.grey700
                                    : appcolors.grey400),
                            KsBox(
                              w: 5,
                            ),
                            Indigator(
                                color: controller.selectedIndex == 3
                                    ? appcolors.grey700
                                    : appcolors.grey400),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              KsBox(
                h: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BoxIcon(
                      context: context, icon: Icons.discount, text: "Offers"),
                  BoxIcon(
                      context: context, icon: Icons.category, text: "Category"),
                  BoxIcon(
                      context: context, icon: Icons.compare, text: "Compare"),
                  BoxIcon(
                      context: context,
                      icon: Icons.new_releases,
                      text: "Reviews"),
                ],
              ),
              KsBox(
                h: 10,
              ),
              Kcontainer(
                // height: 450,
                h: Kh(context: context, value: 48),
                decoration: BoxDecoration(
                    color: appcolors.grey200,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10, left: 30, right: 30, bottom: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Ktext(
                            text: "New Collections",
                            size: 20,
                            weight: FontWeight.bold,
                          ),
                          Kcontainer(
                              h: 30,
                              w: 80,
                              decoration: BoxDecoration(
                                  color: appcolors.blue300,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Center(
                                child: Ktext(
                                  text: "View All",
                                  color: appcolors.halkablack,
                                  weight: FontWeight.bold,
                                ),
                              )),
                        ],
                      ),
                    ),
                    //ListView.builder
                    //
                    // KsBox(
                    //   h: Kh(context: context, value: 40),
                    //   w: Kw(context: context, value: 90),
                    //   child: ListView.builder(
                    //     itemCount: products.length,
                    //     // itemCount: HomePageBox1().itemName.length,
                    //     scrollDirection: Axis.vertical,
                    //     itemBuilder: (context, index) {
                    //       final product = products[index];
                    //       return Row(
                    //         children: [
                    //           Column(
                    //             mainAxisAlignment: MainAxisAlignment.center,
                    //             crossAxisAlignment: CrossAxisAlignment.center,
                    //             children: [
                    //               Padding(
                    //                 padding: const EdgeInsets.only(
                    //                     left: 10, top: 10),
                    //                 child: Stack(
                    //                   children: [
                    //                     Kcontainer(
                    //                       h: Kh(context: context, value: 30),
                    //                       w: Kw(context: context, value: 41),
                    //                       decoration: BoxDecoration(
                    //                           boxShadow: [
                    //                             //upor nic
                    //                             BoxShadow(
                    //                               color: Colors.black
                    //                                   .withOpacity(.4),
                    //                               blurRadius: 10.0,
                    //                               offset: Offset(0, 4),
                    //                             ),
                    //                           ],
                    //                           color: appcolors.blue300,
                    //                           borderRadius:
                    //                               BorderRadius.circular(15)),
                    //                     ),
                    //                     Padding(
                    //                       padding: const EdgeInsets.only(
                    //                         left: 10,
                    //                         top: 10,
                    //                       ),
                    //                       child: Kcontainer(
                    //                         h: 110,
                    //                         w: 130,
                    //                         decoration: BoxDecoration(
                    //                             image: DecorationImage(
                    //                                 fit: BoxFit.cover,
                    //                                 image: NetworkImage(
                    //                                     product.imgUrl)),
                    //                             color: appcolors.white,
                    //                             borderRadius:
                    //                                 BorderRadius.circular(15)),
                    //                       ),
                    //                     ),
                    //                     Positioned(
                    //                       left: 10,
                    //                       top: 130,
                    //                       child: Ktext(
                    //                           text: " ${product.name}",
                    //                           weight: FontWeight.bold),
                    //                     ),
                    //                     Positioned(
                    //                       left: 10,
                    //                       top: 155,
                    //                       child: Kcontainer(
                    //                           h: 23,
                    //                           w: 65,
                    //                           decoration: BoxDecoration(
                    //                               color: appcolors.grey300,
                    //                               borderRadius:
                    //                                   BorderRadius.circular(5)),
                    //                           child: Center(
                    //                             child: Ktext(
                    //                                 text: "6 Colors",
                    //                                 color: appcolors.grey700,
                    //                                 size: 13
                    //                                 // weight: FontWeight.bold,
                    //                                 ),
                    //                           )),
                    //                     ),
                    //                     Positioned(
                    //                       left: 10,
                    //                       top: 185,
                    //                       child: Row(
                    //                         children: [
                    //                           Ktext(
                    //                             text: "\$500",
                    //                             weight: FontWeight.bold,
                    //                             size: 20,
                    //                           ),
                    //                           KsBox(w: 55),
                    //                           GestureDetector(
                    //                             onTap: () {
                    //                               print("Data Added");
                    //                               addToCart(product);

                    //                               // print(!cartData.contains(item));
                    //                               // print(ProductsList().itemData[0].id);
                    //                               // // print(homeitem.id);
                    //                               // // print(cartData[index].id);
                    //                               // // cartData.insert(0, item);
                    //                               // if (cartData.isEmpty) {
                    //                               //   cartData.insert(0, item);
                    //                               // } else if (cartData.contains(item) ==
                    //                               //     ProductsList().itemData[0]) {
                    //                               //   return print("Add 2");
                    //                               // } else {
                    //                               //   return print("null2");
                    //                               // }

                    //                               // if (ProductsList().itemData[index].id == 1) {
                    //                               //   if (cartData[index].id == ProductsList().itemData[index].id) {

                    //                               //   }
                    //                               //   cartData.insert(index, item);
                    //                               // }
                    //                               // if (ProductsList().itemData[index].id == 2) {
                    //                               //   cartData.insert(index, item);
                    //                               // }
                    //                               // if (ProductsList().itemData[index].id == 3) {
                    //                               //   cartData.insert(index, item);
                    //                               // }
                    //                               // if (ProductsList().itemData[index].id == 4) {
                    //                               //   cartData.insert(index, item);
                    //                               // }
                    //                               // if (cartData.length == 0 ||
                    //                               //     ProductsList().itemData[index].id !=
                    //                               //         cartData[index].id) {
                    //                               //   cartData.insert(index, item);
                    //                               //   // if (ProductsList().itemData[index].id !=
                    //                               //   //     cartData[index].id) {
                    //                               //   //   cartData.insert(index, item);
                    //                               //   // }
                    //                               // } else {
                    //                               //   return null;
                    //                               // }
                    //                               // if (cartData.contains(item.id)) {
                    //                               //   return null;
                    //                               // } else {
                    //                               //   cartData.insert(index, item);
                    //                               // }
                    //                               // if (cartData != null) {
                    //                               //   cartData.insert(index, item);

                    //                               // }

                    //                               // if (ProductsList().itemData[index].id ==
                    //                               //     cartData[index].id) {
                    //                               //   return null;
                    //                               // }
                    //                             },
                    //                             child: Icon(
                    //                               Icons.add,
                    //                               size: 25,
                    //                               color: appcolors.halkablack,
                    //                             ),
                    //                           )
                    //                         ],
                    //                       ),
                    //                     ),
                    //                   ],
                    //                 ),
                    //               ),
                    //               KsBox(h: 20),
                    //             ],
                    //           ),
                    //           KsBox(w: Kw(context: context, value: 1)),
                    //           // productListView(context, index, item),
                    //         ],
                    //       );
                    //     },
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
