import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:ibuddy/core/utils/app_colors.dart';
import 'package:ibuddy/core/utils/app_values.dart';

import '../../../../../core/utils/app_fonts.dart';

class Saved extends StatelessWidget {
  const Saved({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        elevation: 0,
        titleSpacing: 0,
        title: const Text(
          "Saved",
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
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: AppMargin.mPage - 16),
            child: IconButton(
              onPressed: () {},
              color: AppColors.grey,
              icon: const Icon(
                Icons.bookmark_border_outlined,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: AppColors.nearlyWhite,
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return savedPost(index, width, height);
        },
      ),
    );
  }

  Widget savedPost(index, width, height) {
    Color postColor = AppColors.secondary;
    width -= AppMargin.mPage * 2;
    return Padding(
      padding:
      const EdgeInsets.symmetric(horizontal: AppMargin.mPage, vertical: 10),
      child: GestureDetector(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 10, left: 10, bottom: 5),
              width: width,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(18),
                  topLeft: Radius.circular(18),
                ),
                border: Border.all(
                  color: postColor,
                  width: 1.5,
                ),
              ),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: CircleAvatar(
                              backgroundColor: postColor,
                              radius: 15,
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                "Publisher",
                                style: TextStyle(
                                  color: postColor,
                                  fontFamily: AppFonts.segoe,
                                  fontWeight: AppFonts.bold,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "Date",
                                style: TextStyle(
                                  color: postColor,
                                  fontFamily: AppFonts.segoe,
                                  fontWeight: AppFonts.regular,
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: () {},
                        splashRadius: 1,
                        icon: Icon(
                          Icons.more_horiz_rounded,
                          color: postColor,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "Contrary to popular belief, Lorem Ipsum is not simply random text. "
                          "It has roots in a piece of classical Latin literature from 45 BC, "
                          "making it over 2000 years old. Richard McClintock,",
                      style: TextStyle(
                        color: postColor,
                        fontFamily: AppFonts.segoe,
                        fontWeight: AppFonts.regular,
                        fontSize: 13,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.bookmark,
                        color: postColor,
                        size: 13,
                      ),
                      Text(
                        20.toString(),
                        style: TextStyle(
                          color: postColor,
                          fontFamily: AppFonts.segoe,
                          fontWeight: AppFonts.regular,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: width,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(18),
                  bottomRight: Radius.circular(18),
                ),
                border: Border.all(
                  color: postColor,
                  width: 1.5,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: postColor,
                      padding: EdgeInsets.zero,
                    ),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.bookmark,
                          size: 17,
                        ),
                        Text(
                          "Save",
                          style: TextStyle(
                            fontFamily: AppFonts.segoe,
                            fontWeight: AppFonts.bold,
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: postColor,
                    ),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.send,
                          size: 17,
                        ),
                        Text(
                          "Send message",
                          style: TextStyle(
                            fontFamily: AppFonts.segoe,
                            fontWeight: AppFonts.bold,
                            fontSize: 11,
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
    );
  }
}
