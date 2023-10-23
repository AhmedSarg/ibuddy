import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:ibuddy/core/utils/app_colors.dart';
import 'package:ibuddy/core/utils/app_values.dart';
import '../../../../../core/utils/app_fonts.dart';

class Following extends StatelessWidget {
  const Following({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        elevation: 0,
        titleSpacing: 0,
        title: const Text(
          "Following",
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
                Icons.person_add_alt_outlined,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: AppColors.nearlyWhite,
      body: ListView.separated(
        itemBuilder: (context, index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppMargin.mPage, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Following",
                    style: TextStyle(
                        color: AppColors.grey,
                        fontFamily: AppFonts.tahoma,
                        fontWeight: AppFonts.regular,
                        fontSize: 18),
                  ),
                  Text(
                    "700",
                    style: TextStyle(
                        color: AppColors.grey,
                        fontFamily: AppFonts.tahoma,
                        fontWeight: AppFonts.regular,
                        fontSize: 18),
                  ),
                ],
              ),
            );
          } else {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppMargin.mPage),
              child: following(index, width),
            );
          }
        },
        separatorBuilder: (context, index) {
          if (index == 0) {
            return const SizedBox(
              height: 0,
              width: 0,
            );
          } else {
            return const Divider(
              height: 30,
              indent: 20,
              endIndent: 20,
              thickness: 0.3,
              color: AppColors.grey,
            );
          }
        },
        itemCount: 20,
      ),
    );
  }

  following(int index, double width) {
    width -= AppMargin.mPage * 2;
    return SizedBox(
      width: width,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 10),
                child: CircleAvatar(
                  backgroundColor: AppColors.primary,
                  radius: 25,
                ),
              ),
              SizedBox(
                width: width - 50 - 10 - 80 - 10,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Nermin Behiri",
                      maxLines: 1,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: AppColors.black,
                        fontFamily: AppFonts.segoe,
                        fontWeight: AppFonts.regular,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "600 followers",
                      style: TextStyle(
                        color: AppColors.grey,
                        fontFamily: AppFonts.tahoma,
                        fontWeight: AppFonts.regular,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            width: 80,
            height: 24.5,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  elevation: 0,
                  backgroundColor: AppColors.transparent,
                  foregroundColor: AppColors.grey,
                  side: const BorderSide(
                    width: 0.5,
                    color: AppColors.grey,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(11.0),
                  ),
                ),
                child: const Text(
                  "Following",
                  style: TextStyle(
                    color: AppColors.grey,
                    fontFamily: AppFonts.tahoma,
                    fontWeight: AppFonts.regular,
                    fontSize: 13,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
