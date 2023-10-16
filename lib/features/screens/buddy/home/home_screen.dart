import 'package:flutter/material.dart';
import 'package:ibuddy/core/utils/app_colors.dart';
import 'package:ibuddy/core/utils/app_values.dart';
import 'package:ibuddy/core/utils/i_buddy_icons_icons.dart';

import '../../../../core/utils/app_fonts.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final formKey = GlobalKey<FormState>();
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
              fontFamily: AppFonts.fontFamily1,
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
              onPressed: () {},
              icon: const Icon(
                IBuddyIcons.apps,
                color: AppColors.primary,
                size: 27,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppMargin.mPage),
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: AppColors.primary,
                    radius: 17,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 3.0),
                    child: TextButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.transparent,
                        shadowColor: AppColors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        side: const BorderSide(
                          width: 1,
                          color: AppColors.black,
                        ),
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.symmetric(horizontal: 14),
                        fixedSize: Size(width - 109, 30),
                      ),
                      child: const Text(
                        "Add New Post...",
                        style: TextStyle(
                          color: AppColors.black,
                          fontFamily: AppFonts.fontFamily2,
                          fontWeight: FontWeight.w900,
                          fontSize: AppFonts.newPostBar,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(43), topRight: Radius.circular(43)),
        child: BottomNavigationBar(
          backgroundColor: AppColors.primary,
          items: const [
            BottomNavigationBarItem(
              label: "",
              icon: Icon(IBuddyIcons.search),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: Icon(IBuddyIcons.search),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: Icon(IBuddyIcons.search),
            ),
          ],
        ),
      ),
    );
  }
}
