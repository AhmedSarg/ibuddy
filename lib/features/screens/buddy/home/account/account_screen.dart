import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:ibuddy/features/screens/buddy/home/account/chat_screen.dart';
import 'package:ibuddy/features/screens/buddy/home/account/recommended_screen.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_fonts.dart';
import '../../../../../core/utils/app_values.dart';

class Account extends StatelessWidget {
  Account({super.key});

  var option = "about".obs;

  final TextStyle selectedStyle = const TextStyle(
    shadows: [
      Shadow(
        color: AppColors.primary,
        offset: Offset(0, -5),
      ),
    ],
    color: AppColors.transparent,
    decoration: TextDecoration.underline,
    decorationColor: AppColors.primary,
    decorationThickness: 1,
    fontFamily: AppFonts.segoe,
    fontSize: 20,
    fontWeight: AppFonts.semiBold,
  );

  final TextStyle unselectedStyle = const TextStyle(
    shadows: [
      Shadow(
        color: AppColors.grey,
        offset: Offset(0, -5),
      ),
    ],
    color: AppColors.transparent,
    decoration: TextDecoration.underline,
    decorationColor: AppColors.transparent,
    decorationThickness: 1,
    fontFamily: AppFonts.segoe,
    fontSize: 20,
    fontWeight: AppFonts.semiBold,
  );

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: AppMargin.mPage - 16),
          child: IconButton(
            icon: const Icon(FontAwesomeIcons.angleLeft),
            color: AppColors.black,
            onPressed: () {
              Get.back();
            },
          ),
        ),
        actions: [
          PopupMenuButton<String>(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            color: AppColors.nearlyWhite,
            elevation: 4,
            offset: const Offset(50, 50),
            icon: const Padding(
              padding: EdgeInsets.only(right: AppMargin.mPage - 16),
              child: Icon(
                Icons.more_horiz_rounded,
                color: AppColors.black,
              ),
            ),
            onSelected: (value) {
              switch (value) {
                case "Recommended":
                  Get.to(() => Recommended());
                  break;
                case "Not Recommended":
                  break;
                case "Copy Link":
                  break;
              }
            },
            itemBuilder: (context) {
              return {"Recommended", "Not Recommended", "Copy Link"}
                  .map((String choice) {
                Color textColor = AppColors.black;
                switch (choice) {
                  case "Recommended":
                    textColor = AppColors.darkGreen;
                    break;
                  case "Not Recommended":
                    textColor = AppColors.red;
                    break;
                }
                return PopupMenuItem<String>(
                  height: 30,
                  value: choice,
                  child: Text(
                    choice,
                    style: TextStyle(
                      color: textColor,
                      fontFamily: AppFonts.segoe,
                      fontWeight: AppFonts.semiBold,
                      fontSize: 13,
                    ),
                  ),
                );
              }).toList();
            },
          )
        ],
      ),
      backgroundColor: AppColors.nearlyWhite,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppMargin.mPage),
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: const [
                        CircleAvatar(
                          backgroundColor: AppColors.secondary,
                          radius: 70,
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 12, right: 12),
                          child: CircleAvatar(
                            backgroundColor: AppColors.white,
                            radius: 8,
                            child: CircleAvatar(
                              backgroundColor: AppColors.green,
                              radius: 6,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        "Youssef Negm",
                        style: TextStyle(
                          color: AppColors.black,
                          fontFamily: AppFonts.segoe,
                          fontSize: 28,
                          fontWeight: AppFonts.bold,
                        ),
                      ),
                    ),
                    const Text(
                      "Youssef56",
                      style: TextStyle(
                        color: AppColors.grey,
                        fontFamily: AppFonts.segoe,
                        fontWeight: AppFonts.semiBold,
                        fontSize: 17,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primary,
                          foregroundColor: AppColors.white,
                          elevation: 0,
                          fixedSize: const Size(170, 30),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                        ),
                        child: const Text(
                          "Follow",
                          style: TextStyle(
                            color: AppColors.white,
                            fontFamily: AppFonts.segoe,
                            fontWeight: AppFonts.semiBold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Obx(
                          () => TextButton(
                            onPressed: () {
                              option.value = "about";
                            },
                            child: Text(
                              "About",
                              style: option.value == "about"
                                  ? selectedStyle
                                  : unselectedStyle,
                            ),
                          ),
                        ),
                        Obx(
                          () => TextButton(
                            onPressed: () {
                              option.value = "insights";
                            },
                            child: Text(
                              "Insights",
                              style: option.value == "insights"
                                  ? selectedStyle
                                  : unselectedStyle,
                            ),
                          ),
                        ),
                        Obx(
                          () => TextButton(
                            onPressed: () {
                              option.value = "photos";
                            },
                            child: Text(
                              "Photos",
                              style: option.value == "photos"
                                  ? selectedStyle
                                  : unselectedStyle,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Obx(
                () {
                  if (option.value == "about") {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12.5),
                          child: SizedBox(
                            width: width - AppMargin.mPage * 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 10),
                                  child: Text(
                                    "BIO",
                                    style: TextStyle(
                                      color: AppColors.black,
                                      fontFamily: AppFonts.segoe,
                                      fontSize: 20,
                                      fontWeight: AppFonts.semiBold,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Electro Steel apart from its competitors is its commitment to customer satisfaction. "
                                  "Youssef Mamdouh and his team understand that each project comes with unique .",
                                  style: TextStyle(
                                    color: AppColors.grey,
                                    fontFamily: AppFonts.segoe,
                                    fontWeight: AppFonts.regular,
                                    fontSize: 14,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ), //BIO
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12.5),
                          child: SizedBox(
                            width: width - AppMargin.mPage * 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 12.5),
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.location_on_outlined,
                                        size: 40,
                                        color: AppColors.grey,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              "From",
                                              style: TextStyle(
                                                color: AppColors.grey,
                                                fontFamily: AppFonts.segoe,
                                                fontWeight: AppFonts.semiBold,
                                                fontSize: 13,
                                              ),
                                            ),
                                            Text(
                                              "Egypt (Giza, 5 haram street)",
                                              style: TextStyle(
                                                color: AppColors.black,
                                                fontFamily: AppFonts.segoe,
                                                fontWeight: AppFonts.semiBold,
                                                fontSize: 13,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 12.5),
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.cake_outlined,
                                        size: 40,
                                        color: AppColors.grey,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              "Age",
                                              style: TextStyle(
                                                color: AppColors.grey,
                                                fontFamily: AppFonts.segoe,
                                                fontWeight: AppFonts.semiBold,
                                                fontSize: 13,
                                              ),
                                            ),
                                            Text(
                                              "23 years old",
                                              style: TextStyle(
                                                color: AppColors.black,
                                                fontFamily: AppFonts.segoe,
                                                fontWeight: AppFonts.semiBold,
                                                fontSize: 13,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 12.5),
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.woman,
                                        size: 40,
                                        color: AppColors.grey,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              "Gender",
                                              style: TextStyle(
                                                color: AppColors.grey,
                                                fontFamily: AppFonts.segoe,
                                                fontWeight: AppFonts.semiBold,
                                                fontSize: 13,
                                              ),
                                            ),
                                            Text(
                                              "Female",
                                              style: TextStyle(
                                                color: AppColors.black,
                                                fontFamily: AppFonts.segoe,
                                                fontWeight: AppFonts.semiBold,
                                                fontSize: 13,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 12.5),
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.interests_outlined,
                                        size: 40,
                                        color: AppColors.grey,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              "Interests",
                                              style: TextStyle(
                                                color: AppColors.grey,
                                                fontFamily: AppFonts.segoe,
                                                fontWeight: AppFonts.semiBold,
                                                fontSize: 13,
                                              ),
                                            ),
                                            Text(
                                              "History\nTravelling",
                                              style: TextStyle(
                                                color: AppColors.black,
                                                fontFamily: AppFonts.segoe,
                                                fontWeight: AppFonts.semiBold,
                                                fontSize: 13,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 12.5),
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.person_outline_rounded,
                                        size: 40,
                                        color: AppColors.grey,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              "Member Since",
                                              style: TextStyle(
                                                color: AppColors.grey,
                                                fontFamily: AppFonts.segoe,
                                                fontWeight: AppFonts.semiBold,
                                                fontSize: 13,
                                              ),
                                            ),
                                            Text(
                                              "Aug 2020",
                                              style: TextStyle(
                                                color: AppColors.black,
                                                fontFamily: AppFonts.segoe,
                                                fontWeight: AppFonts.semiBold,
                                                fontSize: 13,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ), //Info
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12.5),
                          child: SizedBox(
                            width: width - AppMargin.mPage * 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(bottom: 10),
                                  child: Text(
                                    "Social Media Links",
                                    style: TextStyle(
                                      color: AppColors.black,
                                      fontFamily: AppFonts.segoe,
                                      fontSize: 20,
                                      fontWeight: AppFonts.semiBold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 7.5),
                                  child: Row(
                                    children: const [
                                      Icon(
                                        FontAwesomeIcons.facebook,
                                        size: 40,
                                        color: AppColors.grey,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 15),
                                        child: Text(
                                          "https://www.facebook.net/",
                                          style: TextStyle(
                                            color: AppColors.black,
                                            fontFamily: AppFonts.segoe,
                                            fontWeight: AppFonts.regular,
                                            fontSize: 13,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 7.5),
                                  child: Row(
                                    children: const [
                                      Icon(
                                        FontAwesomeIcons.squareBehance,
                                        size: 40,
                                        color: AppColors.grey,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 15),
                                        child: Text(
                                          "https://www.behance.net/",
                                          style: TextStyle(
                                            color: AppColors.black,
                                            fontFamily: AppFonts.segoe,
                                            fontWeight: AppFonts.regular,
                                            fontSize: 13,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ), //Social Media
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12.5),
                          child: SizedBox(
                            width: width - AppMargin.mPage * 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(bottom: 10),
                                  child: Text(
                                    "Languages",
                                    style: TextStyle(
                                      color: AppColors.black,
                                      fontFamily: AppFonts.segoe,
                                      fontSize: 20,
                                      fontWeight: AppFonts.semiBold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 7.5),
                                  child: Row(
                                    children: [
                                      const Icon(
                                        FontAwesomeIcons.language,
                                        size: 40,
                                        color: AppColors.grey,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              "English, Deutsche",
                                              style: TextStyle(
                                                color: AppColors.grey,
                                                fontFamily: AppFonts.segoe,
                                                fontWeight: AppFonts.semiBold,
                                                fontSize: 13,
                                              ),
                                            ),
                                            Text(
                                              "Basic",
                                              style: TextStyle(
                                                color: AppColors.black,
                                                fontFamily: AppFonts.segoe,
                                                fontWeight: AppFonts.semiBold,
                                                fontSize: 13,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 7.5),
                                  child: Row(
                                    children: [
                                      const Icon(
                                        FontAwesomeIcons.language,
                                        size: 40,
                                        color: AppColors.grey,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              "Arabic",
                                              style: TextStyle(
                                                color: AppColors.grey,
                                                fontFamily: AppFonts.segoe,
                                                fontWeight: AppFonts.semiBold,
                                                fontSize: 13,
                                              ),
                                            ),
                                            Text(
                                              "Native",
                                              style: TextStyle(
                                                color: AppColors.black,
                                                fontFamily: AppFonts.segoe,
                                                fontWeight: AppFonts.semiBold,
                                                fontSize: 13,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ), //Languages
                      ],
                    );
                  } else if (option.value == "insights") {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            children: const [
                              Icon(
                                Icons.star,
                                color: AppColors.primary,
                                size: 20,
                              ),
                              Icon(
                                Icons.star,
                                color: AppColors.primary,
                                size: 20,
                              ),
                              Icon(
                                Icons.star,
                                color: AppColors.primary,
                                size: 20,
                              ),
                              Icon(
                                Icons.star,
                                color: AppColors.primary,
                                size: 20,
                              ),
                              Icon(
                                Icons.star_half,
                                color: AppColors.primary,
                                size: 20,
                              ),
                            ],
                          ),
                        ), // Rating
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Followers",
                                style: TextStyle(
                                  color: AppColors.grey,
                                  fontFamily: AppFonts.segoe,
                                  fontWeight: AppFonts.semiBold,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                "2.5K",
                                style: TextStyle(
                                  color: AppColors.black,
                                  fontFamily: AppFonts.segoe,
                                  fontWeight: AppFonts.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ), // Followers
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Recommended",
                                style: TextStyle(
                                  color: AppColors.grey,
                                  fontFamily: AppFonts.segoe,
                                  fontWeight: AppFonts.semiBold,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                "3K",
                                style: TextStyle(
                                  color: AppColors.black,
                                  fontFamily: AppFonts.segoe,
                                  fontWeight: AppFonts.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ), // Recommended
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Not Recommended",
                                style: TextStyle(
                                  color: AppColors.grey,
                                  fontFamily: AppFonts.segoe,
                                  fontWeight: AppFonts.semiBold,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                "10",
                                style: TextStyle(
                                  color: AppColors.black,
                                  fontFamily: AppFonts.segoe,
                                  fontWeight: AppFonts.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ), // Not Recommended
                        const Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: Text(
                            "2K Reviews",
                            style: TextStyle(
                              color: AppColors.black,
                              fontFamily: AppFonts.segoe,
                              fontWeight: AppFonts.semiBold,
                              fontSize: 21,
                            ),
                          ),
                        ), // Reviews Header
                        Padding(
                          padding: const EdgeInsets.only(top: 7.5, bottom: 20),
                          child: Column(
                            children: reviews(width, [{}, {}, {}]),
                          ),
                        ),
                      ],
                    );
                  } else {
                    return const Placeholder(
                      color: AppColors.secondary,
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 100),
        child: SizedBox(
          width: 100,
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              if (Get.previousRoute == '/Chat') {
                Get.back();
              } else {
                Get.to(() => const Chat());
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.white,
              foregroundColor: AppColors.secondary,
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
            ),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 7, right: 10),
                  child: CircleAvatar(
                    backgroundColor: AppColors.secondary,
                    radius: 19,
                  ),
                ),
                Text(
                  "Chat",
                  style: TextStyle(
                    color: AppColors.black,
                    fontFamily: AppFonts.segoe,
                    fontWeight: AppFonts.semiBold,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> reviews(double width, List<Map<String, dynamic>> reviewsList) {
    List<Widget> reviewsWidgets = [];
    width -= AppMargin.mPage * 2;
    for (var element in reviewsList) {
      reviewsWidgets.add(
        Container(
          width: width,
          height: 120,
          margin: const EdgeInsets.symmetric(vertical: 12.5),
          padding: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.grey,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(13),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: CircleAvatar(
                          backgroundColor: AppColors.primary,
                          radius: 30,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: width - 102,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Nermin Behiri",
                                  style: TextStyle(
                                    color: AppColors.black,
                                    fontFamily: AppFonts.segoe,
                                    fontWeight: AppFonts.semiBold,
                                    fontSize: 14,
                                  ),
                                ),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.star,
                                      color: AppColors.primary,
                                      size: 18,
                                    ),
                                    Text(
                                      "5.0",
                                      style: TextStyle(
                                        color: AppColors.primary,
                                        fontFamily: AppFonts.segoe,
                                        fontWeight: AppFonts.semiBold,
                                        fontSize: 12,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.flag_circle_rounded,
                                color: AppColors.primary,
                                size: 15,
                              ),
                              Text(
                                " England",
                                style: TextStyle(
                                  color: AppColors.grey,
                                  fontFamily: AppFonts.segoe,
                                  fontWeight: AppFonts.semiBold,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                          const Text(
                            "1 Month ago",
                            style: TextStyle(
                              color: AppColors.grey,
                              fontFamily: AppFonts.segoe,
                              fontWeight: AppFonts.semiBold,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const Text(
                "funny person, I enjoyed my time",
                style: TextStyle(
                  color: AppColors.black,
                  fontFamily: AppFonts.segoe,
                  fontWeight: AppFonts.semiBold,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      );
    }
    return reviewsWidgets;
  }
}
