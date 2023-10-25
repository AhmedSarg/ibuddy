import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:ibuddy/core/utils/app_colors.dart';
import 'package:ibuddy/core/utils/app_values.dart';
import 'package:ibuddy/features/screens/buddy/home/menu/profile_details/about_screen.dart';
import '../../../../../core/utils/app_fonts.dart';

class Settings extends StatelessWidget {
  Settings({super.key});

  var deactivateValue = false.obs;
  var onlineStatusValue = false.obs;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        elevation: 0,
        titleSpacing: 0,
        title: const Text(
          "Settings",
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
              onPressed: () {},
              color: AppColors.grey,
              icon: const Icon(
                Icons.settings,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: AppColors.nearlyWhite,
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 15, top: 30),
              child: GestureDetector(
                onTap: () {
                  Get.to(() => const About());
                },
                child: Container(
                  height: 50,
                  width: width - AppMargin.mPage * 2,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        "Profile Details",
                        style: TextStyle(
                          color: AppColors.black,
                          fontFamily: AppFonts.segoe,
                          fontWeight: AppFonts.bold,
                          fontSize: 16,
                        ),
                      ),
                      Icon(
                        FontAwesomeIcons.angleRight,
                        color: AppColors.grey,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: SizedBox(
                width: width - AppMargin.mPage * 2,
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Deactivate",
                        style: TextStyle(
                          color: AppColors.black,
                          fontFamily: AppFonts.segoe,
                          fontWeight: AppFonts.bold,
                          fontSize: 16,
                        ),
                      ),
                      Obx(
                        () => Row(
                          children: [
                            CustomAnimatedToggleSwitch(
                              current: deactivateValue.value,
                              values: const [false, true],
                              spacing: 20.0,
                              indicatorSize: const Size.square(10.0),
                              animationDuration:
                                  const Duration(milliseconds: 300),
                              animationCurve: Curves.linear,
                              onChanged: (_) {
                                deactivateValue.toggle();
                              },
                              iconBuilder: (context, local, global) {
                                return const SizedBox();
                              },
                              cursors: const ToggleCursors(
                                defaultCursor: SystemMouseCursors.click,
                              ),
                              onTap: (_) {
                                deactivateValue.toggle();
                              },
                              iconsTappable: false,
                              wrapperBuilder: (context, global, child) {
                                return Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Positioned(
                                      left: 0.0,
                                      right: 0.0,
                                      height: 22.0,
                                      child: DecoratedBox(
                                        decoration: BoxDecoration(
                                          color: Color.lerp(
                                            AppColors.nearlyWhite,
                                            AppColors.primary,
                                            global.position,
                                          ),
                                          border: BoxBorder.lerp(
                                              Border.all(
                                                color: AppColors.black,
                                                width: 3,
                                              ),
                                              Border.all(
                                                color: AppColors.transparent,
                                                width: 0,
                                              ),
                                              global.position),
                                          borderRadius: const BorderRadius.all(
                                            Radius.circular(50.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                    child.paddingSymmetric(horizontal: 6),
                                  ],
                                );
                              },
                              foregroundIndicatorBuilder: (context, global) {
                                return SizedBox.fromSize(
                                  size: global.indicatorSize,
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      color: Color.lerp(
                                        AppColors.black,
                                        AppColors.white,
                                        global.position,
                                      ),
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(5.0),
                                      ),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Colors.black38,
                                          spreadRadius: 0.05,
                                          blurRadius: 1.1,
                                          offset: Offset(0.0, 0.8),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, bottom: 2),
                              child: SizedBox(
                                width: 21,
                                child: Text(
                                  deactivateValue.value ? "On" : "Off",
                                  style: const TextStyle(
                                    color: AppColors.black,
                                    fontFamily: AppFonts.segoe,
                                    fontWeight: AppFonts.semiBold,
                                    fontSize: 14
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: SizedBox(
                width: width - AppMargin.mPage * 2,
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Online Status",
                        style: TextStyle(
                          color: AppColors.black,
                          fontFamily: AppFonts.segoe,
                          fontWeight: AppFonts.bold,
                          fontSize: 16,
                        ),
                      ),
                      Obx(
                        () => Row(
                          children: [
                            CustomAnimatedToggleSwitch(
                              current: onlineStatusValue.value,
                              values: const [false, true],
                              spacing: 20.0,
                              indicatorSize: const Size.square(10.0),
                              animationDuration:
                                  const Duration(milliseconds: 300),
                              animationCurve: Curves.linear,
                              onChanged: (_) {
                                onlineStatusValue.toggle();
                              },
                              iconBuilder: (context, local, global) {
                                return const SizedBox();
                              },
                              cursors: const ToggleCursors(
                                defaultCursor: SystemMouseCursors.click,
                              ),
                              onTap: (_) {
                                onlineStatusValue.toggle();
                              },
                              iconsTappable: false,
                              wrapperBuilder: (context, global, child) {
                                return Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Positioned(
                                      left: 0.0,
                                      right: 0.0,
                                      height: 22.0,
                                      child: DecoratedBox(
                                        decoration: BoxDecoration(
                                          color: Color.lerp(
                                            AppColors.nearlyWhite,
                                            AppColors.primary,
                                            global.position,
                                          ),
                                          border: BoxBorder.lerp(
                                              Border.all(
                                                color: AppColors.black,
                                                width: 3,
                                              ),
                                              Border.all(
                                                color: AppColors.transparent,
                                                width: 0,
                                              ),
                                              global.position),
                                          borderRadius: const BorderRadius.all(
                                            Radius.circular(50.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                    child.paddingSymmetric(horizontal: 6),
                                  ],
                                );
                              },
                              foregroundIndicatorBuilder: (context, global) {
                                return SizedBox.fromSize(
                                  size: global.indicatorSize,
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      color: Color.lerp(
                                        AppColors.black,
                                        AppColors.white,
                                        global.position,
                                      ),
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(5.0),
                                      ),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Colors.black38,
                                          spreadRadius: 0.05,
                                          blurRadius: 1.1,
                                          offset: Offset(0.0, 0.8),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, bottom: 2),
                              child: SizedBox(
                                width: 21,
                                child: Text(
                                  onlineStatusValue.value ? "On" : "Off",
                                  style: const TextStyle(
                                    color: AppColors.black,
                                    fontFamily: AppFonts.segoe,
                                    fontWeight: AppFonts.semiBold,
                                    fontSize: 14
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
