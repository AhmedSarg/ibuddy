import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:ibuddy/core/utils/app_colors.dart';
import 'package:ibuddy/core/utils/app_values.dart';
import '../../../../../../../core/utils/app_fonts.dart';

class InterestsEdit extends StatelessWidget {
  InterestsEdit({super.key});

  Map<String, RxBool> interests = {
    "History": false.obs,
    "Reading": false.obs,
    "Football": false.obs,
    "Eating": false.obs,
    "Travelling": false.obs,
    "Technology": false.obs,
    "Designing": false.obs,
    "Resting": false.obs,
    "Adventure": false.obs,
    "Discovering": false.obs,
  };

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        elevation: 0,
        titleSpacing: 0,
        title: const Text(
          "Add Interests",
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
                const Placeholder(
                  color: AppColors.primary,
                  fallbackHeight: 250,
                  fallbackWidth: 250,
                ),
                SizedBox(
                  height: 367,
                  child: SingleChildScrollView(
                    child: Column(
                      children: interestsBox(width),
                    ),
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

  List<Widget> interestsBox(width) {
    List<Widget> interestsBoxes = [];
    interests.forEach(
      (key, value) {
        interestsBoxes.add(
          Obx(
            // () => GestureDetector(
            //   onTap: () {
            //     interests[key]!.toggle();
            //   },
            //   child: SizedBox(
            //     width: width - AppMargin.mPage * 2,
            //     height: 50,
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         Text(
            //           key,
            //           style: const TextStyle(
            //             color: AppColors.black,
            //             fontFamily: AppFonts.segoe,
            //             fontWeight: AppFonts.semiBold,
            //             fontSize: 13,
            //           ),
            //         ),
            //         Container(
            //           width: 20,
            //           height: 20,
            //           decoration: BoxDecoration(
            //             color: AppColors.transparent,
            //             border: Border.all(color: AppColors.grey),
            //             borderRadius: const BorderRadius.all(Radius.circular(6)),
            //           ),
            //           child: Icon(
            //             Icons.check,
            //             size: 18,
            //             color: interests[key]!.value
            //                 ? AppColors.primary
            //                 : AppColors.transparent,
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            () => SizedBox(
              width: width - AppMargin.mPage * 2,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    key,
                    style: const TextStyle(
                      color: AppColors.black,
                      fontFamily: AppFonts.segoe,
                      fontWeight: AppFonts.semiBold,
                      fontSize: 13,
                    ),
                  ),
                  Checkbox(
                    value: interests[key]!.value,
                    activeColor: AppColors.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    onChanged: (value) {
                      interests[key]!.value = value!;
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
    return interestsBoxes;
  }
}
