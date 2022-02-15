import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kuyisi/kuyisi/presentation/history/history_screen.dart';
import 'package:kuyisi/kuyisi/presentation/home/home_screen.dart';
import 'package:kuyisi/kuyisi/presentation/profile/profile_screen.dart';
import 'package:kuyisi/kuyisi/presentation/question_bank/question_bank_screen.dart';
import 'package:kuyisi/kuyisi/presentation/widgets/default_appbar.dart';
import 'package:package_info_plus/package_info_plus.dart';

class MainScreen extends StatelessWidget {
  late final List<Widget> _container;

  final _containerIndex = 0.obs;

  MainScreen({Key? key}) : super(key: key) {
    _container = [
      const HomeScreen(),
      const HistoryScreen(),
      const HomeScreen(),
      const QuestionBankScreen(),
      const ProfileScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(),
      body: Obx(() => _container[_containerIndex.value]),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          color: Colors.blue,
          child: FittedBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _MainButtonWidget(
                    icon: const Icon(Icons.home),
                    onPressed: () {
                      _containerIndex.value = 0;
                    },
                  ),
                  _MainButtonWidget(
                    icon: const Icon(Icons.history),
                    onPressed: () {
                      _containerIndex.value = 1;
                    },
                  ),
                  _MainButtonWidget(
                    bgColor: Colors.blue[700],
                    icon: const Icon(Icons.search),
                    onPressed: () {
                      // _containerIndex.value = 2;
                    },
                  ),
                  _MainButtonWidget(
                    icon: const Icon(Icons.menu_book_rounded),
                    onPressed: () {
                      _containerIndex.value = 3;
                    },
                  ),
                  _MainButtonWidget(
                    icon: const Icon(Icons.account_circle_rounded),
                    onPressed: () {
                      _containerIndex.value = 4;
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _MainButtonWidget extends StatelessWidget {
  final Color? bgColor;
  final Icon icon;
  final Function() onPressed;

  const _MainButtonWidget({
    Key? key,
    required this.icon,
    required this.onPressed,
    this.bgColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: IconButton(
          padding: EdgeInsets.zero,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          focusColor: Colors.transparent,
          splashColor: Colors.transparent,
          color: Colors.white,
          icon: icon,
          onPressed: onPressed,
        ),
      ),
    );
  }
}
