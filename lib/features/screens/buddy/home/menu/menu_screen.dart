import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ibuddy/core/utils/app_colors.dart';
import 'package:ibuddy/core/utils/app_values.dart';
import 'package:ibuddy/features/screens/buddy/home/menu/account_screen.dart';
import 'package:ibuddy/features/screens/buddy/home/menu/followers_screen.dart';
import 'package:ibuddy/features/screens/buddy/home/menu/following_screen.dart';
import 'package:ibuddy/features/screens/buddy/home/menu/my_posts_screen.dart';
import 'package:ibuddy/features/screens/buddy/home/menu/profile_screen.dart';
import 'package:ibuddy/features/screens/buddy/home/menu/saved_screen.dart';
import 'package:ibuddy/features/screens/buddy/home/menu/settings_screen.dart';

import '../../../../../core/utils/app_fonts.dart';
import '../../../../../core/utils/i_buddy_icons_icons.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Padding(
          padding: EdgeInsets.only(left: AppMargin.mPage - 16),
          child: Text(
            "Menu",
            style: TextStyle(
              color: AppColors.primary,
              fontFamily: AppFonts.tahoma,
              fontSize: AppFonts.appBarTitle,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: AppMargin.mPage - 16),
            child: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                IBuddyIcons.apps,
                color: AppColors.primary,
                size: 27,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: AppColors.nearlyWhite,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppMargin.mPage),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 80,
                    width: width - AppMargin.mPage * 2,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(14),
                      boxShadow: const [
                        BoxShadow(
                          color: AppColors.shadow,
                          blurRadius: 3,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 10, right: 20),
                          child: CircleAvatar(
                            backgroundColor: AppColors.primary,
                            radius: 25,
                          ),
                        ),
                        Text(
                          "Noor Jack",
                          style: TextStyle(
                            color: AppColors.black,
                            fontFamily: AppFonts.segoe,
                            fontWeight: AppFonts.semiBold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ), //Profile Name
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: GestureDetector(
                  onTap: () {
                    Get.to(() => Profile());
                  },
                  child: Container(
                    height: 50,
                    width: width - AppMargin.mPage * 2,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(14),
                      boxShadow: const [
                        BoxShadow(
                          color: AppColors.shadow,
                          blurRadius: 3,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Icon(
                            Icons.person_outline_rounded,
                            color: AppColors.grey,
                          ),
                        ),
                        Text(
                          "Profile",
                          style: TextStyle(
                            color: AppColors.black,
                            fontFamily: AppFonts.tahoma,
                            fontWeight: AppFonts.regular,
                            fontSize: 18,
                            letterSpacing: 0.16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ), //Profile
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: GestureDetector(
                  onTap: () {
                    Get.to(() => const MyPosts());
                  },
                  child: Container(
                    height: 50,
                    width: width - AppMargin.mPage * 2,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(14),
                      boxShadow: const [
                        BoxShadow(
                          color: AppColors.shadow,
                          blurRadius: 3,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Icon(
                            Icons.post_add_rounded,
                            color: AppColors.grey,
                          ),
                        ),
                        Text(
                          "My Posts",
                          style: TextStyle(
                            color: AppColors.black,
                            fontFamily: AppFonts.tahoma,
                            fontWeight: AppFonts.regular,
                            fontSize: 18,
                            letterSpacing: 0.16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ), //My Posts
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: GestureDetector(
                  onTap: () {
                    Get.to(() => const Saved());
                  },
                  child: Container(
                    height: 50,
                    width: width - AppMargin.mPage * 2,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(14),
                      boxShadow: const [
                        BoxShadow(
                          color: AppColors.shadow,
                          blurRadius: 3,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Icon(
                            Icons.bookmark_border_outlined,
                            color: AppColors.grey,
                          ),
                        ),
                        Text(
                          "Saved",
                          style: TextStyle(
                            color: AppColors.black,
                            fontFamily: AppFonts.tahoma,
                            fontWeight: AppFonts.regular,
                            fontSize: 18,
                            letterSpacing: 0.16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ), //Saved
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: GestureDetector(
                  onTap: () {
                    Get.to(() => const Followers());
                  },
                  child: Container(
                    height: 50,
                    width: width - AppMargin.mPage * 2,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(14),
                      boxShadow: const [
                        BoxShadow(
                          color: AppColors.shadow,
                          blurRadius: 3,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Icon(
                            Icons.people_alt_outlined,
                            color: AppColors.grey,
                          ),
                        ),
                        Text(
                          "Followers",
                          style: TextStyle(
                            color: AppColors.black,
                            fontFamily: AppFonts.tahoma,
                            fontWeight: AppFonts.regular,
                            fontSize: 18,
                            letterSpacing: 0.16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ), //Followers
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: GestureDetector(
                  onTap: () {
                    Get.to(() => const Following());
                  },
                  child: Container(
                    height: 50,
                    width: width - AppMargin.mPage * 2,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(14),
                      boxShadow: const [
                        BoxShadow(
                          color: AppColors.shadow,
                          blurRadius: 3,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Icon(
                            Icons.person_add_alt_outlined,
                            color: AppColors.grey,
                          ),
                        ),
                        Text(
                          "Following",
                          style: TextStyle(
                            color: AppColors.black,
                            fontFamily: AppFonts.tahoma,
                            fontWeight: AppFonts.regular,
                            fontSize: 18,
                            letterSpacing: 0.16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ), //Following
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    width: width - AppMargin.mPage * 2,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(14),
                      boxShadow: const [
                        BoxShadow(
                          color: AppColors.shadow,
                          blurRadius: 3,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Icon(
                            Icons.monetization_on_outlined,
                            color: AppColors.grey,
                          ),
                        ),
                        Text(
                          "Payment Method",
                          style: TextStyle(
                            color: AppColors.black,
                            fontFamily: AppFonts.tahoma,
                            fontWeight: AppFonts.regular,
                            fontSize: 18,
                            letterSpacing: 0.16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ), //Payment Method
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: GestureDetector(
                  onTap: () {
                    Get.to(() => Settings());
                  },
                  child: Container(
                    height: 50,
                    width: width - AppMargin.mPage * 2,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(14),
                      boxShadow: const [
                        BoxShadow(
                          color: AppColors.shadow,
                          blurRadius: 3,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Icon(
                            Icons.settings,
                            color: AppColors.grey,
                          ),
                        ),
                        Text(
                          "Settings",
                          style: TextStyle(
                            color: AppColors.black,
                            fontFamily: AppFonts.tahoma,
                            fontWeight: AppFonts.regular,
                            fontSize: 18,
                            letterSpacing: 0.16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ), //Settings
            ],
          ),
        ),
      ),
    );
  }
}
