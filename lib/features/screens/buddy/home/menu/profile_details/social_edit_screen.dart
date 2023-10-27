import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:ibuddy/core/utils/app_colors.dart';
import 'package:ibuddy/core/utils/app_values.dart';
import '../../../../../../../core/utils/app_fonts.dart';

class SocialEdit extends StatelessWidget {
  SocialEdit({super.key});

  static const List<String> socialMedias = [
    "Facebook",
    "Instagram",
    "X",
    "Youtube",
    "TikTok",
    "Behance",
    "Github",
    "Spotify",
  ];

  Rx<String> socialMedia = socialMedias[0].obs;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        elevation: 0,
        titleSpacing: 0,
        title: const Text(
          "Social Links",
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppMargin.mPage),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Social Media Links",
                      style: TextStyle(
                        color: AppColors.black,
                        fontFamily: AppFonts.segoe,
                        fontWeight: AppFonts.semiBold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      width: width - AppMargin.mPage * 2,
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: Icon(
                                  FontAwesomeIcons.facebook,
                                  color: AppColors.grey,
                                  size: 30,
                                ),
                              ),
                              SizedBox(
                                width: width - AppMargin.mPage - 124,
                                child: const Text(
                                  "https://www.facebook.net/",
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: AppColors.black,
                                    fontFamily: AppFonts.segoe,
                                    fontWeight: AppFonts.regular,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          IconButton(
                            onPressed: () {},
                            iconSize: 20,
                            splashRadius: 5,
                            padding: EdgeInsets.zero,
                            color: AppColors.grey,
                            icon: const Icon(Icons.more_horiz),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: width - AppMargin.mPage * 2,
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: Icon(
                                  FontAwesomeIcons.squareBehance,
                                  color: AppColors.grey,
                                  size: 30,
                                ),
                              ),
                              SizedBox(
                                width: width - AppMargin.mPage - 124,
                                child: const Text(
                                  "https://www.behance.net/",
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: AppColors.black,
                                    fontFamily: AppFonts.segoe,
                                    fontWeight: AppFonts.regular,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          IconButton(
                            onPressed: () {},
                            iconSize: 20,
                            splashRadius: 5,
                            padding: EdgeInsets.zero,
                            color: AppColors.grey,
                            icon: const Icon(Icons.more_horiz),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: width - AppMargin.mPage * 2,
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: (width - AppMargin.mPage * 2) / 2 - 5,
                            height: 40,
                            child: Obx(
                              () => InputDecorator(
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: AppColors.grey,
                                      width: 0.5,
                                    ),
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                  contentPadding: EdgeInsets.zero,
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                    value: socialMedia.string,
                                    items: socialMedias
                                        .map<DropdownMenuItem<String>>(
                                      (String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(left: 10),
                                            child: Text(
                                              value,
                                              style: const TextStyle(
                                                color: AppColors.grey,
                                                fontFamily: AppFonts.segoe,
                                                fontWeight: AppFonts.regular,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ).toList(),
                                    iconEnabledColor: AppColors.grey,
                                    icon: const Padding(
                                      padding:
                                          EdgeInsets.only(right: 8, top: 5),
                                      child: Icon(FontAwesomeIcons.angleDown),
                                    ),
                                    iconSize: 14,
                                    borderRadius: BorderRadius.circular(14),
                                    onChanged: (value) {
                                      socialMedia.value = value!;
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: (width - AppMargin.mPage * 2) / 2 - 5,
                            height: 40,
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Username",
                                contentPadding: const EdgeInsets.only(
                                  left: 10,
                                  right: 0,
                                  top: 5,
                                  bottom: 5,
                                ),
                                focusColor: AppColors.grey,
                                hoverColor: AppColors.grey,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: AppColors.grey, width: 0.5),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: AppColors.grey, width: 0.5),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                              ),
                              maxLines: 1,
                              style: const TextStyle(
                                color: AppColors.black,
                                fontFamily: AppFonts.segoe,
                                fontWeight: AppFonts.regular,
                                fontSize: 12,
                              ),
                              textAlignVertical: TextAlignVertical.center,
                              cursorWidth: 1,
                              cursorColor: AppColors.primary,
                              textInputAction: TextInputAction.search,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
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
                            onTap: () {},
                            child: const Text(
                              "Add Social Link",
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
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.back();
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(width - AppMargin.mPage * 2, 42),
                    foregroundColor: AppColors.primary,
                    backgroundColor: AppColors.primary,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13.0),
                    ),
                  ),
                  child: const Text(
                    "Save",
                    style: TextStyle(
                      color: AppColors.white,
                      fontFamily: AppFonts.segoe,
                      fontWeight: AppFonts.regular,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
