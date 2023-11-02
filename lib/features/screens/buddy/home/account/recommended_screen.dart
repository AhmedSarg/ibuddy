import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_fonts.dart';
import '../../../../../core/utils/app_values.dart';

class Recommended extends StatelessWidget {
  Recommended({super.key});

  var rating = 0.obs;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close),
          iconSize: 25,
          color: AppColors.black,
          splashRadius: 20,
          splashColor: AppColors.white,
          onPressed: () {
            Get.back();
          },
        ),
        titleSpacing: 0,
        title: const Text(
          "Rate this person",
          style: TextStyle(
            color: AppColors.black,
            fontFamily: AppFonts.tahoma,
            fontWeight: AppFonts.regular,
            fontSize: 24,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: (56 - 35) / 2, horizontal: 20),
            child: ElevatedButton(
              onPressed: () {
                Get.back();
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: AppColors.white,
                backgroundColor: AppColors.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                elevation: 0,
                fixedSize: const Size(70, 35),
                padding: const EdgeInsets.only(bottom: 1),
                textStyle: const TextStyle(
                  fontFamily: AppFonts.tahoma,
                  fontWeight: AppFonts.regular,
                  fontSize: 15,
                ),
              ),
              child: const Text("post"),
            ),
          ),
        ],
      ),
      backgroundColor: AppColors.nearlyWhite,
      body: SingleChildScrollView(
        child: Container(
          width: width,
          margin: const EdgeInsets.symmetric(
              horizontal: AppMargin.mPage, vertical: 40),
          decoration: BoxDecoration(
              border: Border.all(color: AppColors.grey, width: 0.5),
              borderRadius: BorderRadius.circular(12)),
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            children: [
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: CircleAvatar(
                      backgroundColor: AppColors.secondary,
                      radius: 25,
                    ),
                  ),
                  SizedBox(
                    width: width - AppMargin.mPage * 2 - 96,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Noor Jack",
                          style: TextStyle(
                            color: AppColors.black,
                            fontFamily: AppFonts.segoe,
                            fontWeight: AppFonts.semiBold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "Review are public and include your country and your account",
                          style: TextStyle(
                            color: AppColors.grey,
                            fontFamily: AppFonts.segoe,
                            fontWeight: AppFonts.regular,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Obx(
                  () => SizedBox(
                    width: width - AppMargin.mPage * 2 - 1 - 30,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Icon(rating.value >= 1
                              ? Icons.star_rounded
                              : Icons.star_outline_rounded),
                          iconSize: 40,
                          color: rating.value >= 1
                              ? AppColors.primary
                              : AppColors.grey,
                          splashRadius: 1,
                          splashColor: AppColors.primary,
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            rating.value = 1;
                          },
                        ),
                        IconButton(
                          icon: Icon(rating.value >= 2
                              ? Icons.star_rounded
                              : Icons.star_outline_rounded),
                          iconSize: 40,
                          color: rating.value >= 2
                              ? AppColors.primary
                              : AppColors.grey,
                          splashRadius: 1,
                          splashColor: AppColors.primary,
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            rating.value = 2;
                          },
                        ),
                        IconButton(
                          icon: Icon(rating.value >= 3
                              ? Icons.star_rounded
                              : Icons.star_outline_rounded),
                          iconSize: 40,
                          color: rating.value >= 3
                              ? AppColors.primary
                              : AppColors.grey,
                          splashRadius: 1,
                          splashColor: AppColors.primary,
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            rating.value = 3;
                          },
                        ),
                        IconButton(
                          icon: Icon(rating.value >= 4
                              ? Icons.star_rounded
                              : Icons.star_outline_rounded),
                          iconSize: 40,
                          color: rating.value >= 4
                              ? AppColors.primary
                              : AppColors.grey,
                          splashRadius: 1,
                          splashColor: AppColors.primary,
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            rating.value = 4;
                          },
                        ),
                        IconButton(
                          icon: Icon(rating.value >= 5
                              ? Icons.star_rounded
                              : Icons.star_outline_rounded),
                          iconSize: 40,
                          color: rating.value >= 5
                              ? AppColors.primary
                              : AppColors.grey,
                          splashRadius: 1,
                          splashColor: AppColors.primary,
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            rating.value = 5;
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              TextField(
                cursorColor: AppColors.primary,
                cursorRadius: const Radius.circular(1),
                maxLines: null,
                decoration: InputDecoration(
                  hintText: "Describe your experience",
                  hintStyle: const TextStyle(
                    color: AppColors.grey,
                    fontFamily: AppFonts.segoe,
                    fontWeight: AppFonts.regular,
                    fontSize: 15,
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: AppColors.grey, width: 0.5),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: AppColors.primary, width: 0.5),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusColor: AppColors.secondary,
                  hoverColor: AppColors.secondary,
                ),
                style: const TextStyle(
                  color: AppColors.primary,
                  fontFamily: AppFonts.segoe,
                  fontWeight: AppFonts.regular,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
