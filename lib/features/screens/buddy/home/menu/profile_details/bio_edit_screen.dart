import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:ibuddy/core/utils/app_colors.dart';
import 'package:ibuddy/core/utils/app_values.dart';
import '../../../../../../../core/utils/app_fonts.dart';

class BioEdit extends StatelessWidget {
  const BioEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        elevation: 0,
        titleSpacing: 0,
        title: const Text(
          "Bio",
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
              onPressed: () {
                Get.back();
              },
              color: AppColors.black,
              icon: const Icon(
                Icons.check,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: AppColors.nearlyWhite,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppMargin.mPage, vertical: 20),
        child: TextFormField(
          decoration: InputDecoration(
            hintText: "type your bio",
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 5
            ),
            focusColor: AppColors.grey,
            hoverColor: AppColors.grey,
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.grey),
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.grey),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          maxLines: 10,
          style: const TextStyle(
            color: AppColors.grey,
            fontFamily: AppFonts.segoe,
            fontWeight: AppFonts.regular,
            fontSize: 14,
          ),
          textAlignVertical: TextAlignVertical.center,
          cursorWidth: 1,
          cursorColor: AppColors.primary,
          textInputAction: TextInputAction.done,
        ),
      ),
    );
  }
}
