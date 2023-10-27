import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:ibuddy/core/utils/app_colors.dart';
import 'package:ibuddy/core/utils/app_values.dart';
import 'package:ibuddy/features/screens/buddy/home/menu/profile_details/age_edit_screen.dart';
import 'package:ibuddy/features/screens/buddy/home/menu/profile_details/bio_edit_screen.dart';
import 'package:ibuddy/features/screens/buddy/home/menu/profile_details/country_edit_screen.dart';
import 'package:ibuddy/features/screens/buddy/home/menu/profile_details/gender_edit_screen.dart';
import 'package:ibuddy/features/screens/buddy/home/menu/profile_details/interests_edit_screen.dart';
import 'package:ibuddy/features/screens/buddy/home/menu/profile_details/language_edit_screen.dart';
import 'package:ibuddy/features/screens/buddy/home/menu/profile_details/social_edit_screen.dart';
import 'package:ibuddy/features/screens/buddy/home/menu/profile_details/work_edit_screen.dart';
import '../../../../../../../core/utils/app_fonts.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        elevation: 0,
        titleSpacing: 0,
        title: const Text(
          "About",
          style: TextStyle(
            color: AppColors.black,
            fontFamily: AppFonts.tahoma,
            fontWeight: AppFonts.regular,
            fontSize: 24,
          ),
        ),
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
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12.5, top: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "BIO",
                              style: TextStyle(
                                  color: AppColors.black,
                                  fontFamily: AppFonts.segoe,
                                  fontWeight: AppFonts.semiBold,
                                  fontSize: 18),
                            ),
                            IconButton(
                              onPressed: () {
                                Get.to(() => const BioEdit());
                              },
                              color: AppColors.primary,
                              iconSize: 20,
                              splashRadius: 1,
                              icon: const Icon(Icons.edit),
                            ),
                          ],
                        ),
                        const Text(
                          "Electro Steel apart from its competitors is its commitment to customer satisfaction.\n"
                          "Youssef Mamdouh and his team understand that each project comes with unique.",
                          style: TextStyle(
                            color: AppColors.grey,
                            fontFamily: AppFonts.segoe,
                            fontWeight: AppFonts.regular,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  ), //Bio
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(right: 15),
                              child: Icon(
                                Icons.location_on_outlined,
                                color: AppColors.grey,
                                size: 30,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                  "Iran",
                                  style: TextStyle(
                                    color: AppColors.black,
                                    fontFamily: AppFonts.segoe,
                                    fontWeight: AppFonts.semiBold,
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        IconButton(
                          onPressed: () {
                            Get.to(() => const CountryEdit());
                          },
                          color: AppColors.primary,
                          iconSize: 20,
                          splashRadius: 1,
                          icon: const Icon(Icons.edit),
                        ),
                      ],
                    ),
                  ), //From
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(right: 15),
                              child: Icon(
                                Icons.cake_outlined,
                                color: AppColors.grey,
                                size: 30,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                            )
                          ],
                        ),
                        IconButton(
                          onPressed: () {
                            Get.to(() => const AgeEdit());
                          },
                          color: AppColors.primary,
                          iconSize: 20,
                          splashRadius: 1,
                          icon: const Icon(Icons.edit),
                        ),
                      ],
                    ),
                  ), //Age
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(right: 15),
                              child: Icon(
                                Icons.girl,
                                color: AppColors.grey,
                                size: 30,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                            )
                          ],
                        ),
                        IconButton(
                          onPressed: () {
                            Get.to(() => GenderEdit());
                          },
                          color: AppColors.primary,
                          iconSize: 20,
                          splashRadius: 1,
                          icon: const Icon(Icons.edit),
                        ),
                      ],
                    ),
                  ), //Gender
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.5),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: Icon(
                            Icons.cases_outlined,
                            color: AppColors.grey,
                            size: 30,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(() => const WorkEdit());
                          },
                          child: const Text(
                            "Add your work",
                            style: TextStyle(
                              color: AppColors.primary,
                              fontFamily: AppFonts.tahoma,
                              fontWeight: AppFonts.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), //Work
                  Padding(
                    padding: const EdgeInsets.only(top: 12.5, bottom: 20),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: Icon(
                            Icons.interests_outlined,
                            color: AppColors.grey,
                            size: 30,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(() => InterestsEdit());
                          },
                          child: const Text(
                            "Add your interests",
                            style: TextStyle(
                              color: AppColors.primary,
                              fontFamily: AppFonts.tahoma,
                              fontWeight: AppFonts.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), //Interests
                ],
              ), //Details
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 12.5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Social Media Links",
                          style: TextStyle(
                              color: AppColors.black,
                              fontFamily: AppFonts.segoe,
                              fontWeight: AppFonts.semiBold,
                              fontSize: 18),
                        ),
                        TextButton(
                          onPressed: () {
                            Get.to(() => SocialEdit());
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: AppColors.transparent,
                            foregroundColor: AppColors.primary,
                          ),
                          child: const Text(
                            "Edit",
                            style: TextStyle(
                              fontFamily: AppFonts.tahoma,
                              fontWeight: AppFonts.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), //Social Media Header
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.5),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: Icon(
                            FontAwesomeIcons.facebook,
                            size: 30,
                            color: AppColors.grey,
                          ),
                        ),
                        SizedBox(
                          width: width - AppMargin.mPage * 2 - 45,
                          child: const Text(
                            "https://www.facebook.net/",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: AppColors.black,
                              fontFamily: AppFonts.segoe,
                              fontWeight: AppFonts.regular,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), //Facebook
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.5),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: Icon(
                            FontAwesomeIcons.squareBehance,
                            size: 30,
                            color: AppColors.grey,
                          ),
                        ),
                        SizedBox(
                          width: width - AppMargin.mPage * 2 - 45,
                          child: const Text(
                            "https://www.behance.net/",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: AppColors.black,
                              fontFamily: AppFonts.segoe,
                              fontWeight: AppFonts.regular,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), //Behance
                  Padding(
                    padding: const EdgeInsets.only(top: 12.5, bottom: 20),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: Icon(
                            FontAwesomeIcons.globe,
                            color: AppColors.grey,
                            size: 30,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(() => SocialEdit());
                          },
                          child: const Text(
                            "Add social links",
                            style: TextStyle(
                              color: AppColors.primary,
                              fontFamily: AppFonts.tahoma,
                              fontWeight: AppFonts.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), //Add Social Media
                ],
              ), //Social Medias
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 12.5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Languages",
                          style: TextStyle(
                              color: AppColors.black,
                              fontFamily: AppFonts.segoe,
                              fontWeight: AppFonts.semiBold,
                              fontSize: 18),
                        ),
                        TextButton(
                          onPressed: () {
                            Get.to(() => const LanguageEdit());
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: AppColors.transparent,
                            foregroundColor: AppColors.primary,
                          ),
                          child: const Text(
                            "Edit",
                            style: TextStyle(
                              fontFamily: AppFonts.tahoma,
                              fontWeight: AppFonts.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), //Languages Header
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.5),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: Icon(
                            FontAwesomeIcons.language,
                            color: AppColors.grey,
                            size: 30,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "English",
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
                      ],
                    ),
                  ), //English
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.5),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: Icon(
                            FontAwesomeIcons.language,
                            color: AppColors.grey,
                            size: 30,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Deutsch",
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
                      ],
                    ),
                  ), //Deutsch
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.5),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: Icon(
                            FontAwesomeIcons.language,
                            color: AppColors.grey,
                            size: 30,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                      ],
                    ),
                  ), //Arabic
                  Padding(
                    padding: const EdgeInsets.only(top: 12.5, bottom: 20),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: Icon(
                            FontAwesomeIcons.language,
                            color: AppColors.grey,
                            size: 30,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(() => const LanguageEdit());
                          },
                          child: const Text(
                            "Add another language",
                            style: TextStyle(
                              color: AppColors.primary,
                              fontFamily: AppFonts.tahoma,
                              fontWeight: AppFonts.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), //Add Language
                ],
              ), //Languages
            ],
          ),
        ),
      ),
    );
  }
}
