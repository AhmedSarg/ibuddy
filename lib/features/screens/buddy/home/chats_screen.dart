import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:ibuddy/core/utils/app_fonts.dart';
import 'package:ibuddy/core/utils/app_values.dart';
import 'package:ibuddy/core/utils/i_buddy_icons_icons.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../model/slidable_action.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        elevation: 0,
        titleSpacing: 0,
        title: const Text(
          "Inbox",
          style: TextStyle(
            color: AppColors.black,
            fontFamily: AppFonts.segoe,
            fontWeight: AppFonts.semiBold,
            fontSize: 20,
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
              onPressed: () {},
              color: AppColors.grey,
              icon: const Icon(
                Icons.chat_outlined,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: AppColors.nearlyWhite,
      body: ListView.builder(
        itemBuilder: (context, index) {
          return chat(index, width, height);
        },
        itemCount: 10,
      ),
    );
  }

  Widget chat(int index, width, height) {
    // width -= AppMargin.mPage * 2;
    if (index == 0) {
      return Padding(
        padding: const EdgeInsets.only(
          top: 10,
          left: AppMargin.mPage,
          right: AppMargin.mPage,
        ),
        child: SizedBox(
          height: 30,
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "Search",
              contentPadding: const EdgeInsets.only(
                left: 10,
                right: 0,
                top: 5,
                bottom: 5,
              ),
              suffix: IconButton(
                onPressed: () {},
                padding: EdgeInsets.zero,
                splashRadius: 1,
                splashColor: AppColors.transparent,
                color: AppColors.grey,
                iconSize: 20,
                icon: const Icon(IBuddyIcons.search),
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
            textInputAction: TextInputAction.search,
          ),
        ),
      ); //Search Bar
    } else {
      return Slidable(
        endActionPane: ActionPane(
          motion: const ScrollMotion(),
          extentRatio: 0.3,
          children: [
            MySlidableAction(
              onPressed: (context) {},
              backgroundColor: AppColors.error,
              foregroundColor: AppColors.white,
              label: "Delete",
              spacing: 5,
              icon: Icons.delete,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: SizedBox(
            // width: width + 52,
            height: 100,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: AppMargin.mPage,
                    right: AppMargin.mPage,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: const [
                            CircleAvatar(
                              backgroundColor: AppColors.primary,
                              radius: 40,
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 10),
                              child: CircleAvatar(
                                backgroundColor: AppColors.white,
                                radius: 7,
                                child: CircleAvatar(
                                  backgroundColor: AppColors.green,
                                  radius: 6,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: width - 120 - 52,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Youssef Negm",
                                  style: TextStyle(
                                    color: AppColors.black,
                                    fontFamily: AppFonts.segoe,
                                    fontWeight: AppFonts.semiBold,
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  "july 15",
                                  style: TextStyle(
                                    color: AppColors.grey,
                                    fontFamily: AppFonts.segoe,
                                    fontWeight: AppFonts.semiBold,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            const Text(
                              "I am trying to reach you .. it is says turned off.",
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: TextStyle(
                                color: AppColors.grey,
                                fontFamily: AppFonts.segoe,
                                fontWeight: AppFonts.semiBold,
                                fontSize: 13,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Text(
                                  "Seen",
                                  style: TextStyle(
                                    color: AppColors.primary,
                                    fontFamily: AppFonts.segoe,
                                    fontWeight: AppFonts.regular,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 19),
                  child: Container(
                    height: 1,
                    color: AppColors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }
}
