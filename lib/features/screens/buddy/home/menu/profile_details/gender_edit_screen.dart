import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:ibuddy/core/utils/app_colors.dart';
import 'package:ibuddy/core/utils/app_values.dart';
import '../../../../../../../core/utils/app_fonts.dart';

enum Genders { male, female, other }

class GenderEdit extends StatelessWidget {
  GenderEdit({super.key});

  var gender = Genders.male.obs;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        elevation: 0,
        titleSpacing: 0,
        title: const Text(
          "Gender",
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
                Obx(
                  () => Column(
                    children: [
                      Container(
                        width: width - AppMargin.mPage * 2,
                        height: 50,
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom:
                                BorderSide(color: AppColors.grey, width: 0.5),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Male",
                              style: TextStyle(
                                  color: AppColors.black,
                                  fontFamily: AppFonts.segoe,
                                  fontWeight: AppFonts.regular,
                                  fontSize: 16),
                            ),
                            Radio<Genders>(
                              activeColor: AppColors.primary,
                              value: Genders.male,
                              groupValue: gender.value,
                              onChanged: (value) {
                                gender.value = value!;
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: width - AppMargin.mPage * 2,
                        height: 50,
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom:
                                BorderSide(color: AppColors.grey, width: 0.5),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Female",
                              style: TextStyle(
                                  color: AppColors.black,
                                  fontFamily: AppFonts.segoe,
                                  fontWeight: AppFonts.regular,
                                  fontSize: 16),
                            ),
                            Radio<Genders>(
                              activeColor: AppColors.primary,
                              value: Genders.female,
                              groupValue: gender.value,
                              onChanged: (value) {
                                gender.value = value!;
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: width - AppMargin.mPage * 2,
                        height: 50,
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom:
                                BorderSide(color: AppColors.grey, width: 0.5),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Other",
                              style: TextStyle(
                                  color: AppColors.black,
                                  fontFamily: AppFonts.segoe,
                                  fontWeight: AppFonts.regular,
                                  fontSize: 16),
                            ),
                            Radio<Genders>(
                              activeColor: AppColors.primary,
                              value: Genders.other,
                              groupValue: gender.value,
                              onChanged: (value) {
                                gender.value = value!;
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
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
