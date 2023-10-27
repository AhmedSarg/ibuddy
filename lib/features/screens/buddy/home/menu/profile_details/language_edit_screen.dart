import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:ibuddy/core/utils/app_colors.dart';
import 'package:ibuddy/core/utils/app_values.dart';
import '../../../../../../../core/utils/app_fonts.dart';

class LanguageEdit extends StatelessWidget {
  const LanguageEdit({super.key});

  static const List<String> languages = [
    'Afar',
    'Abkhazian',
    'Avestan',
    'Afrikaans',
    'Akan',
    'Amharic',
    'Aragonese',
    'Arabic',
    'Assamese',
    'Avaric',
    'Aymara',
    'Azerbaijani',
    'Bashkir',
    'Belarusian',
    'Bulgarian',
    'Bihari languages',
    'Bislama',
    'Bambara',
    'Bengali',
    'Tibetan',
    'Breton',
    'Bosnian',
    'Catalan',
    'Chechen',
    'Chamorro',
    'Corsican',
    'Cree',
    'Czech',
    'Church Slavic',
    'Chuvash',
    'Welsh',
    'Danish',
    'German',
    'Maldivian',
    'Dzongkha',
    'Ewe',
    'Greek',
    'English',
    'Esperanto',
    'Spanish',
    'Estonian',
    'Basque',
    'Persian',
    'Fulah',
    'Finnish',
    'Fijian',
    'Faroese',
    'French',
    'Western Frisian',
    'Irish',
    'Gaelic',
    'Galician',
    'Guarani',
    'Gujarati',
    'Manx',
    'Hausa',
    'Hebrew',
    'Hindi',
    'Hiri Motu',
    'Croatian',
    'Haitian',
    'Hungarian',
    'Armenian',
    'Herero',
    'Interlingua',
    'Indonesian',
    'Interlingue',
    'Igbo',
    'Sichuan Yi',
    'Inupiaq',
    'Ido',
    'Icelandic',
    'Italian',
    'Inuktitut',
    'Japanese',
    'Javanese',
    'Georgian',
    'Kongo',
    'Kikuyu',
    'Kuanyama',
    'Kazakh',
    'Kalaallisut',
    'Central Khmer',
    'Kannada',
    'Korean',
    'Kanuri',
    'Kashmiri',
    'Kurdish',
    'Komi',
    'Cornish',
    'Kirghiz',
    'Latin',
    'Luxembourgish',
    'Ganda',
    'Limburgan',
    'Lingala',
    'Lao',
    'Lithuanian',
    'Luba-Katanga',
    'Latvian',
    'Malagasy',
    'Marshallese',
    'Maori',
    'Macedonian',
    'Malayalam',
    'Mongolian',
    'Marathi',
    'Malay',
    'Maltese',
    'Burmese',
    'Nauru',
    'Norwegian',
    'North Ndebele',
    'Nepali',
    'Ndonga',
    'Dutch',
    'Norwegian',
    'Norwegian',
    'South Ndebele',
    'Navajo',
    'Chichewa',
    'Occitan',
    'Ojibwa',
    'Oromo',
    'Oriya',
    'Ossetic',
    'Panjabi',
    'Pali',
    'Polish',
    'Pushto',
    'Portuguese',
    'Quechua',
    'Romansh',
    'Rundi',
    'Romanian',
    'Russian',
    'Kinyarwanda',
    'Sanskrit',
    'Sardinian',
    'Sindhi',
    'Northern Sami',
    'Sango',
    'Sinhala',
    'Slovak',
    'Slovenian',
    'Samoan',
    'Shona',
    'Somali',
    'Albanian',
    'Serbian',
    'Swati',
    'Sotho, Southern',
    'Sundanese',
    'Swedish',
    'Swahili',
    'Tamil',
    'Telugu',
    'Tajik',
    'Thai',
    'Tigrinya',
    'Turkmen',
    'Tagalog',
    'Tswana',
    'Tonga',
    'Turkish',
    'Tsonga',
    'Tatar',
    'Twi',
    'Tahitian',
    'Uighur',
    'Ukrainian',
    'Urdu',
    'Uzbek',
    'Venda',
    'Vietnamese',
    'Volapük',
    'Walloon',
    'Wolof',
    'Xhosa',
    'Yiddish',
    'Yoruba',
    'Zhuang',
    'Chinese',
    'Zulu',
  ];
  static const List<String> levels = [
    'Basic',
    'Intermediate',
    'Fluent',
    'Native',
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    Rx<String> language = languages[37].obs;
    Rx<String> level = levels[0].obs;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        elevation: 0,
        titleSpacing: 0,
        title: const Text(
          "Languages",
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
                      padding: const EdgeInsets.only(bottom: 20),
                      child: SizedBox(
                        width: width - AppMargin.mPage * 2,
                        child: Obx(
                          () => DropdownButton(
                            value: language.string,
                            items: languages.map<DropdownMenuItem<String>>(
                              (String valueLang) {
                                return DropdownMenuItem<String>(
                                  value: valueLang,
                                  child: Text(
                                    valueLang,
                                    style: const TextStyle(
                                      color: AppColors.black,
                                      fontFamily: AppFonts.segoe,
                                      fontWeight: AppFonts.regular,
                                      fontSize: 12,
                                    ),
                                  ),
                                );
                              },
                            ).toList(),
                            alignment: Alignment.centerLeft,
                            underline: Container(
                              height: 1,
                              color: AppColors.grey,
                            ),
                            isExpanded: true,
                            onChanged: (value) {
                              language.value = value!;
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: SizedBox(
                        width: width - AppMargin.mPage * 2,
                        child: Obx(
                          () => DropdownButton(
                            value: level.string,
                            items: levels.map<DropdownMenuItem<String>>(
                              (String valueLevel) {
                                return DropdownMenuItem<String>(
                                  value: valueLevel,
                                  child: Text(
                                    valueLevel,
                                    style: const TextStyle(
                                      color: AppColors.black,
                                      fontFamily: AppFonts.segoe,
                                      fontWeight: AppFonts.regular,
                                      fontSize: 12,
                                    ),
                                  ),
                                );
                              },
                            ).toList(),
                            alignment: Alignment.centerLeft,
                            underline: Container(
                              height: 1,
                              color: AppColors.grey,
                            ),
                            isExpanded: true,
                            onChanged: (value) {
                              level.value = value!;
                            },
                          ),
                        ),
                      ),
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
