import 'package:flutter/material.dart';

import '../../Constants/app_size_constants.dart';
import '../../Constants/color_constants.dart';
import '../../Constants/font_size_constants.dart';
import '../../Constants/icon_size_constants.dart';
import '../../Constants/padding_constants.dart';
import '../../Constants/spacing_constants.dart';
import '../../Utils/app_localization.dart';
import '../../gen/assets.gen.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  Widget _spacing() {
    return const SizedBox(height: AppSpacing.regular);
  }
  Widget _bottom(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: AppPaddings.regular, right: AppPaddings.regular),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [AppColors.primaryColor.withAlpha(50),
                  AppColors.primaryColor.withAlpha(0)]
            )),
        child: SafeArea(
            child:  Column(
                children: [
                  _spacing(),
                  Text(AppLocalization.instance.keys.entertainment, textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: AppFontSize.extraLarge,
                          fontWeight: FontWeight.w900, color: AppColors.whiteTextColor)),
                  _spacing(),
                  Text(AppLocalization.instance.keys.onboarding,
                      style: const TextStyle(fontSize: AppFontSize.large,
                          fontWeight: FontWeight.w600, color: AppColors.whiteTextColor)),
                  _spacing(),
                  /*AppElevatedButton(title: AppLocalization.instance.keys.getStarted,onPressed:  () {
                    const LoginRoute().push(context);
                  })*/
                ])
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:  Stack(
            children: [
              Assets.images.moviePoster.image(height: double.infinity, fit: BoxFit.fill),
              Positioned(
                  child: Container(
                      color: Colors.black.withAlpha(120),
                      height: AppSize.height,
                      child: Column(
                          children: [
                            SafeArea(
                                child:Assets.images.logo.image(height: AppIconSize.logo, width: AppIconSize.logo)
                            ),
                            const Spacer(),
                            _bottom(context)
                          ])
                  )
              )
            ])
    );
  }
}
