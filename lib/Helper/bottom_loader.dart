import 'package:flutter/material.dart';

import '../Constants/app_size_constants.dart';
import 'app_loader.dart';
class BottomLoader extends StatelessWidget {
  const BottomLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: ContanierSize.medium,
        child: AppLoader()
    );
  }
}
