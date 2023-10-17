import 'package:flutter/material.dart';
import 'package:ibuddy/core/utils/i_buddy_icons_icons.dart';
import 'package:ibuddy/features/screens/buddy/home/account_screen.dart';
import 'package:ibuddy/features/screens/buddy/home/chats_screen.dart';
import 'package:ibuddy/features/screens/buddy/home/home_screen.dart';
import 'package:ibuddy/features/screens/buddy/home/notifications_screen.dart';

import '../../../../core/utils/app_colors.dart';

class MainNavigator extends StatefulWidget {
  const MainNavigator({super.key});

  @override
  State<MainNavigator> createState() => _MainNavigatorState();
}

class _MainNavigatorState extends State<MainNavigator> {
  Widget screen = const Home();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    setState(() {
                      screen = const Home();
                    });
                  },
                  icon: const Icon(Icons.home_outlined),
                  color: AppColors.white,
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      screen = const Account();
                    });
                  },
                  icon: const Icon(Icons.person_outline_rounded),
                  color: AppColors.white,
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      screen = const Notifications();
                    });
                  },
                  icon: const Icon(Icons.notifications_outlined),
                  color: AppColors.white,
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      screen = const Chats();
                    });
                  },
                  icon: const Icon(Icons.message_outlined),
                  color: AppColors.white,
                ),
              ],
            ),
          ),
        ),
      ),
      body: screen,
    );
  }
}
