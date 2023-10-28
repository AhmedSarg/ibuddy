import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:ibuddy/core/utils/app_colors.dart';
import 'package:ibuddy/core/utils/app_fonts.dart';
import 'package:ibuddy/core/utils/app_values.dart';

class AddPost extends StatelessWidget {
  const AddPost({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppMargin.mPage),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Create a Post",
              style: TextStyle(
                color: AppColors.primary,
                fontFamily: AppFonts.tahoma,
                fontSize: 20,
              ),
            ),
            Container(
              width: width - AppMargin.mPage * 2,
              margin: const EdgeInsets.only(top: 15),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  color: AppColors.primary,
                  width: 1.5,
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: CircleAvatar(
                          backgroundColor: AppColors.primary,
                          radius: 25,
                        ),
                      ),
                      Text(
                        "Noor Jack",
                        style: TextStyle(
                          color: AppColors.primary,
                          fontFamily: AppFonts.segoe,
                          fontWeight: AppFonts.semiBold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      "hi, my name is noor from iran "
                      "i gonna visit Egypt next week i wanna buddy "
                      "have a good deal with me",
                      style: TextStyle(
                          color: AppColors.primary,
                          fontFamily: AppFonts.segoe,
                          fontWeight: AppFonts.regular,
                          fontSize: 17),
                    ),
                  ),
                  const Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: width - AppMargin.mPage * 2 - 20,
                      color: AppColors.nearlyWhite,
                      child: Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Icon(
                              Icons.image,
                              color: AppColors.primary,
                              size: 20,
                            ),
                          ),
                          Text(
                            "Photo / Video",
                            style: TextStyle(
                              color: AppColors.primary,
                              fontFamily: AppFonts.segoe,
                              fontWeight: AppFonts.regular,
                              fontSize: 12
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: width - AppMargin.mPage * 2 - 20,
                      color: AppColors.nearlyWhite,
                      child: Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Icon(
                              FontAwesomeIcons.tag,
                              color: AppColors.primary,
                              size: 20,
                            ),
                          ),
                          Text(
                            "Tag People",
                            style: TextStyle(
                                color: AppColors.primary,
                                fontFamily: AppFonts.segoe,
                                fontWeight: AppFonts.regular,
                                fontSize: 12
                            ),
                          ),
                        ],
                      ),
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
