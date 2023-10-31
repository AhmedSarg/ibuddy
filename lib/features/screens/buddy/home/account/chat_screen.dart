import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:ibuddy/features/screens/buddy/home/account/account_screen.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_fonts.dart';
import '../../../../../core/utils/app_values.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        elevation: 0,
        toolbarHeight: 100,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Youssef Negm",
              style: TextStyle(
                color: AppColors.black,
                fontFamily: AppFonts.segoe,
                fontWeight: AppFonts.semiBold,
                fontSize: 36,
              ),
            ),
            Text(
              "last seen 1 day ago",
              style: TextStyle(
                color: AppColors.grey,
                fontFamily: AppFonts.segoe,
                fontWeight: AppFonts.semiBold,
                fontSize: 11,
              ),
            ),
          ],
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
        shape: const Border(bottom: BorderSide(color: AppColors.grey)),
      ),
      backgroundColor: AppColors.nearlyWhite,
      body: Padding(
        padding: const EdgeInsets.only(bottom: 60),
        child: ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) {
            if (index == 0) {
              return Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 50),
                child: Column(
                  children: [
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: const [
                        CircleAvatar(
                          backgroundColor: AppColors.secondary,
                          radius: 60,
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 10, right: 10),
                          child: CircleAvatar(
                            backgroundColor: AppColors.white,
                            radius: 8,
                            child: CircleAvatar(
                              backgroundColor: AppColors.green,
                              radius: 6,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      "Youssef Negm",
                      style: TextStyle(
                        color: AppColors.black,
                        fontFamily: AppFonts.segoe,
                        fontWeight: AppFonts.semiBold,
                        fontSize: 29,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      child: Text(
                        "joined Aug 2023",
                        style: TextStyle(
                          color: AppColors.grey,
                          fontFamily: AppFonts.segoe,
                          fontWeight: AppFonts.semiBold,
                          fontSize: 11,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (Get.previousRoute == '/Account') {
                          Get.back();
                        }
                        else {
                          Get.to(() => Account());
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        foregroundColor: AppColors.white,
                        elevation: 0,
                        fixedSize: const Size(140, 30),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14.0),
                        ),
                      ),
                      child: const Text(
                        "View Profile",
                        style: TextStyle(
                          color: AppColors.white,
                          fontFamily: AppFonts.segoe,
                          fontWeight: AppFonts.semiBold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: AppMargin.mPage),
                child: message(index, width),
              );
            }
          },
        ),
      ),
      bottomSheet: SizedBox(
        width: width,
        height: 60,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                iconSize: 26,
                splashRadius: 25,
                color: AppColors.primary,
                icon: const Icon(Icons.location_on),
              ),
              IconButton(
                onPressed: () {},
                iconSize: 26,
                splashRadius: 25,
                color: AppColors.primary,
                icon: const Icon(Icons.image_rounded),
              ),
              IconButton(
                onPressed: () {},
                iconSize: 26,
                splashRadius: 25,
                color: AppColors.primary,
                icon: const Icon(Icons.mic),
              ),
              SizedBox(
                height: 30,
                width: width - 174,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Aa",
                    contentPadding: const EdgeInsets.only(
                      left: 10,
                      right: 0,
                      top: 5,
                      bottom: 5,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      padding: const EdgeInsets.only(top: 0),
                      splashRadius: 1,
                      splashColor: AppColors.transparent,
                      color: AppColors.primary,
                      iconSize: 20,
                      icon: const Icon(Icons.send),
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
                  maxLines: 1,
                  style: const TextStyle(
                    color: AppColors.black,
                    fontFamily: AppFonts.segoe,
                    fontWeight: AppFonts.regular,
                    fontSize: 14,
                  ),
                  textAlignVertical: TextAlignVertical.center,
                  cursorWidth: 1,
                  cursorColor: AppColors.primary,
                  textInputAction: TextInputAction.send,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget message(int index, double width) {
    String dir = index % 2 != 0 ? "right" : "left";
    Color messageColor =
        dir == "right" ? AppColors.lightBlue : AppColors.lightOrange;
    return Align(
      alignment: dir == "right" ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.only(
          top: 10,
          bottom: 10,
          left: dir == "right" ? width * 1 / 4 : 0,
          right: dir == "right" ? 0 : width * 1 / 4,
        ),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        decoration: BoxDecoration(
          color: messageColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Text(
          "message dwaj dbiaw bdwiy bauwd baw gdvua wgdv uaw vdwav ydwv fyaw v",
          style: TextStyle(
            color: AppColors.white,
            fontFamily: AppFonts.segoe,
            fontWeight: AppFonts.regular,
            fontSize: 13,
          ),
        ),
      ),
    );
  }
}
