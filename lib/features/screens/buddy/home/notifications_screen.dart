import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:ibuddy/core/utils/app_fonts.dart';
import 'package:ibuddy/core/utils/app_values.dart';

import '../../../../core/utils/app_colors.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
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
        shape: const Border(bottom: BorderSide(color: AppColors.grey)),
      ),
      backgroundColor: AppColors.nearlyWhite,
      body: ListView.separated(
        itemBuilder: (context, index) {
          return notification(index, width, height);
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 25,
          );
        },
        padding: const EdgeInsets.only(
          right: AppMargin.mPage - 20,
          left: AppMargin.mPage - 20,
          top: 15,
          bottom: 15,
        ),
        itemCount: 10,
      ),
    );
  }

  Widget notification(int index, width, height) {
    width -= (AppMargin.mPage - 20) * 2;
    return GestureDetector(
      onTap: () {},
      child: SizedBox(
        width: width,
        height: 80,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Stack(
                alignment: Alignment.bottomRight,
                children: const [
                  CircleAvatar(
                    backgroundColor: AppColors.secondary,
                    radius: 40,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 5, right: 5),
                    child: CircleAvatar(
                      radius: 10,
                      child: Icon(
                        FontAwesomeIcons.tag,
                        size: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: width - 80 - 12 - 32,
                  child: RichText(
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "Ahmed Mamdouh Sarg ",
                          style: TextStyle(
                            color: AppColors.black,
                            fontFamily: AppFonts.segoe,
                            fontWeight: AppFonts.semiBold,
                            fontSize: 15,
                          ),
                        ),
                        TextSpan(
                          text: "tagged you in a post",
                          style: TextStyle(
                            color: AppColors.grey,
                            fontFamily: AppFonts.segoe,
                            fontWeight: AppFonts.semiBold,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Text(
                  " 2 hours ago",
                  style: TextStyle(
                    color: AppColors.grey,
                    fontFamily: AppFonts.segoe,
                    fontWeight: AppFonts.semiBold,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
