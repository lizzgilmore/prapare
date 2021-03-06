import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prapare/routes/app_pages.dart';
import 'package:prapare/strings.dart';
import 'package:prapare/styled_components/app_logo.dart';
import 'package:prapare/styled_components/styled_button_large.dart';
import 'package:prapare/views/settings/settings_dialog.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 48.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppLogo(),
              StyledButtonLarge(
                  title: S.BTN_NEW_SURVEY,
                  onPressed: () => Get.toNamed(Routes.SURVEY)),
              StyledButtonLarge(title: S.BTN_EDIT_SURVEY),
              StyledButtonLarge(title: S.BTN_SUBMIT_SHARE),
              Align(
                  alignment: FractionalOffset(0.8, 0),
                  child: IconButton(
                      icon: Icon(Icons.settings, size: 36),
                      onPressed: () => settingsDialog()))
            ],
          ),
        ),
      ),
    );
  }
}
