import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:ibuddy/core/utils/app_colors.dart';
import 'package:ibuddy/core/utils/app_values.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import '../../../../../../../core/utils/app_fonts.dart';

class AgeEdit extends StatelessWidget {
  const AgeEdit({super.key});

  String monthIntToString(int month) {
    String val;
    switch (month) {
      case 1: {
        val = "Jan";
      }
      break;
      case 2: {
        val = "Feb";
      }
      break;
      case 3: {
        val = "Mar";
      }
      break;
      case 4: {
        val = "Apr";
      }
      break;
      case 5: {
        val = "May";
      }
      break;
      case 6: {
        val = "Jun";
      }
      break;
      case 7: {
        val = "Jul";
      }
      break;
      case 8: {
        val = "Aug";
      }
      break;
      case 9: {
        val = "Sep";
      }
      break;
      case 10: {
        val = "Oct";
      }
      break;
      case 11: {
        val = "Nov";
      }
      break;
      case 12: {
        val = "Dec";
      }
      break;
      default: {
        val = "Dec";
      }
    }

    return val;
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    var showDates = false.obs;
    var dateValue = DateTime.now().obs;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        elevation: 0,
        titleSpacing: 0,
        title: const Text(
          "Age",
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
      ),
      backgroundColor: AppColors.nearlyWhite,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppMargin.mPage),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10, top: 30),
                      child: TextButton(
                        onPressed: () {
                          showDates.toggle();
                        },
                        style: TextButton.styleFrom(
                            backgroundColor: AppColors.transparent,
                            foregroundColor: AppColors.grey,
                            fixedSize: Size(width - AppMargin.mPage * 2, 40),
                            alignment: Alignment.centerLeft,
                            side: const BorderSide(color: AppColors.grey)),
                        child: Obx(() =>
                        Text(
                            "${dateValue.value.day} ${monthIntToString(dateValue.value.month) } ${dateValue.value.year}",
                            style: const TextStyle(
                              color: AppColors.grey,
                              fontFamily: AppFonts.segoe,
                              fontWeight: AppFonts.regular,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Obx(
                      () {
                        if (showDates.isTrue) {
                          return SfDateRangePicker(
                            view: DateRangePickerView.decade,
                            todayHighlightColor: AppColors.primary,
                            headerStyle: const DateRangePickerHeaderStyle(
                              textStyle: TextStyle(
                                color: AppColors.primary,
                                fontFamily: AppFonts.segoe,
                                fontWeight: AppFonts.semiBold,
                              )
                            ),
                            maxDate: DateTime.now(),
                            selectionColor: AppColors.primary,
                            selectionTextStyle:
                                const TextStyle(color: AppColors.white),
                            yearCellStyle: const DateRangePickerYearCellStyle(
                              todayTextStyle: TextStyle(
                                color: AppColors.primary,
                                fontFamily: AppFonts.segoe,
                                fontWeight: AppFonts.semiBold,
                                fontSize: 12,
                              ),
                              textStyle: TextStyle(
                                color: AppColors.black,
                                fontFamily: AppFonts.segoe,
                                fontWeight: AppFonts.semiBold,
                                fontSize: 12,
                              ),
                              disabledDatesTextStyle: TextStyle(
                                color: AppColors.grey,
                                fontFamily: AppFonts.segoe,
                                fontWeight: AppFonts.light,
                                fontSize: 12,
                              ),
                            ),
                            monthCellStyle: const DateRangePickerMonthCellStyle(
                              todayTextStyle: TextStyle(
                                color: AppColors.primary,
                                fontFamily: AppFonts.segoe,
                                fontWeight: AppFonts.semiBold,
                                fontSize: 12,
                              ),
                              textStyle: TextStyle(
                                color: AppColors.black,
                                fontFamily: AppFonts.segoe,
                                fontWeight: AppFonts.semiBold,
                                fontSize: 12,
                              ),
                              disabledDatesTextStyle: TextStyle(
                                color: AppColors.grey,
                                fontFamily: AppFonts.segoe,
                                fontWeight: AppFonts.light,
                                fontSize: 12,
                              ),
                            ),
                            onSelectionChanged: (value) {
                              dateValue.value = value.value;
                              // showDates.toggle();
                            },
                          );
                        } else {
                          return const SizedBox();
                        }
                      },
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.back();
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(width - AppMargin.mPage * 2, 42),
                    foregroundColor: AppColors.primary,
                    backgroundColor: AppColors.primary,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13.0),
                    ),
                  ),
                  child: const Text(
                    "Save",
                    style: TextStyle(
                      color: AppColors.white,
                      fontFamily: AppFonts.segoe,
                      fontWeight: AppFonts.regular,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
