import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ibuddy/core/utils/app_colors.dart';
import 'package:ibuddy/core/utils/app_values.dart';
import 'package:ibuddy/core/utils/i_buddy_icons_icons.dart';
import 'package:ibuddy/features/screens/buddy/home/add_post_screen.dart';
import 'package:ibuddy/features/screens/buddy/home/menu/account_screen.dart';
import 'package:ibuddy/features/screens/buddy/home/chats_screen.dart';
import 'package:ibuddy/features/screens/buddy/home/menu/menu_screen.dart';
import 'package:ibuddy/features/screens/buddy/home/menu/profile_screen.dart';
import 'package:ibuddy/features/screens/buddy/home/notifications_screen.dart';
import '../../../../core/utils/app_fonts.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        elevation: 0,
        title: const Padding(
          padding: EdgeInsets.only(left: AppMargin.mPage - 16),
          child: Text(
            "IBuddy",
            style: TextStyle(
              color: AppColors.primary,
              fontFamily: AppFonts.tahoma,
              fontSize: AppFonts.appBarTitle,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              IBuddyIcons.search,
              color: AppColors.primary,
              size: 25,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: AppMargin.mPage - 16),
            child: IconButton(
              onPressed: () {
                Get.to(() => const Menu());
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
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(43),
          topRight: Radius.circular(43),
        ),
        child: BottomAppBar(
          color: AppColors.primary,
          child: SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {
                    scrollController.animateTo(
                      0.0,
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeInOut,
                    );
                  },
                  icon: const Icon(Icons.home_outlined),
                  color: AppColors.white,
                ),
                IconButton(
                  onPressed: () {
                    Get.to(() => Profile());
                  },
                  icon: const Icon(Icons.person_outline_rounded),
                  color: AppColors.white,
                ),
                IconButton(
                  onPressed: () {
                    Get.to(() => const Notifications());
                  },
                  icon: const Icon(Icons.notifications_outlined),
                  color: AppColors.white,
                ),
                IconButton(
                  onPressed: () {
                    Get.to(() => const Chats());
                  },
                  icon: const Icon(Icons.message_outlined),
                  color: AppColors.white,
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: AppColors.nearlyWhite,
      body: ListView.builder(
        controller: scrollController,
        itemBuilder: (context, index) {
          return post(index, width, height);
        },
        itemCount: 10,
      ),
    );
  }

  Widget post(index, width, height) {
    Color postColor = index % 2 == 0 ? AppColors.primary : AppColors.secondary;
    if (index == 0) {
      return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppMargin.mPage,
          vertical: 10,
        ),
        child: Row(
          children: [
            const CircleAvatar(
              backgroundColor: AppColors.primary,
              radius: 17,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 3.0),
              child: TextButton(
                onPressed: () {
                  Get.to(() => const AddPost());
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.transparent,
                  shadowColor: AppColors.transparent,
                  foregroundColor: AppColors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  side: const BorderSide(
                    width: 1,
                    color: AppColors.grey,
                  ),
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  fixedSize: Size(width - 109, 30),
                ),
                child: const Text(
                  "Add New Post...",
                  style: TextStyle(
                    color: AppColors.black,
                    fontFamily: AppFonts.segoe,
                    fontWeight: AppFonts.bold,
                    fontSize: AppFonts.newPostBar,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    } else {
      width -= AppMargin.mPage * 2;
      return Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: AppMargin.mPage, vertical: 10),
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
                              child: GestureDetector(
                                onTap: () {
                                  Get.to(() => Account());
                                },
                                child: CircleAvatar(
                                  backgroundColor: postColor,
                                  radius: 15,
                                ),
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
                            Icons.bookmark_border,
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
}
