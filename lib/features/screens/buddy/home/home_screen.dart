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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                right: AppMargin.mPage, left: AppMargin.mPage, bottom: 23),
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
          SizedBox(
            height: height - 216,
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return post(index, width, height);
              },
              separatorBuilder: (context, index) => const Divider(),
              itemCount: 5,
            ),
          ),
        ],
      ),
    );
  }

  Widget post(index, width, height) {
    Color postColor = index % 2 != 0 ? AppColors.primary : AppColors.secondary;
    width -= AppMargin.mPage * 2;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppMargin.mPage),
      child: GestureDetector(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 10, left: 10, bottom: 5),
              width: width,
              decoration: BoxDecoration(
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
                            child: CircleAvatar(
                              backgroundColor: postColor,
                              radius: 15,
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                "Publisher",
                                style: TextStyle(
                                  color: postColor,
                                  fontFamily: "Segoe UI",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Text(
                                "Date",
                                style: TextStyle(
                                  color: postColor,
                                  fontFamily: "Segoe UI",
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: () {},
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
                        fontFamily: "Segoe UI",
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
                          fontFamily: "Segoe UI",
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
                            fontFamily: "Segoe UI",
                            fontSize: 11,
                            fontWeight: FontWeight.w900,
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
                            fontFamily: "Segoe UI",
                            fontSize: 11,
                            fontWeight: FontWeight.w900,
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
