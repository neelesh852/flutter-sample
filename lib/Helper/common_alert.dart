import 'package:flutter/material.dart';

import '../Utils/app_localization.dart';
import 'common_button.dart';

class AppAlert {
  final String? title;
  final String? message;
  final String? confirmBtnText;
  final VoidCallback? cancelTap;
  final VoidCallback? confirmTap;
  final bool? isNeedConfirmBtn;
  const AppAlert({this.title = '', this.message, this.confirmBtnText = 'OK',
    this.isNeedConfirmBtn = true, this.cancelTap, this.confirmTap});

  void showDialogBox(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              title: (title?.isNotEmpty ?? false) ? Text(title ?? '') : null,
              content:  Text(message ?? ''),
              actions:[
                AppTextButton(
                    title: AppLocalization.instance.keys.cancel,
                    onPressed: () {
                      Navigator.of(context).pop();
                      if (cancelTap != null) {
                        cancelTap!();
                      }
                    }
                ),
                if (isNeedConfirmBtn ?? false)
                  AppTextButton(
                      title: confirmBtnText ?? '',
                      onPressed: () {
                        Navigator.of(context).pop();
                        if (confirmTap != null){
                          confirmTap!();
                        }
                      }
                  )
              ]);
        }
    );
  }
}


