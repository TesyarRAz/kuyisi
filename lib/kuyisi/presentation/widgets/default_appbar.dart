import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';

class DefaultAppBar extends PreferredSize {
  DefaultAppBar({Key? key})
      : super(
          key: key,
          preferredSize: const Size.fromHeight(40),
          child: AppBar(
            centerTitle: true,
            elevation: 0,
            titleSpacing: 0,
            automaticallyImplyLeading: true,
            title: Text(Get.find<PackageInfo>().appName),
          ),
        );
}
