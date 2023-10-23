import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

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
                      children: [
                        const CircleAvatar(
                          backgroundColor: AppColors.secondary,
                          radius: 70,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 28,
                            height: 28,
                            margin: const EdgeInsets.only(right: 8, bottom: 8),
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(5),
                              border:
                                  Border.all(width: 1, color: AppColors.grey),
                            ),
                            child: const Icon(
                              Icons.camera_alt_rounded,
                              size: 20,
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
                      "Noor56",
                      style: TextStyle(
                        color: AppColors.grey,
                        fontFamily: AppFonts.segoe,
                        fontWeight: AppFonts.semiBold,
                        fontSize: 17,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Obx(
                            () => TextButton(
                              onPressed: () {
                                option.value = "about";
                                option.refresh();
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
                                option.value = "photos";
                                option.refresh();
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
                    ),
                  ],
                ),
              ),
              Obx(
                () => option.value == "about"
                    ? Column(
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
                                          padding: const EdgeInsets.only(left: 15),
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
                                          padding: const EdgeInsets.only(left: 15),
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
                      )
                    : const Placeholder(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
