import 'package:flutter/material.dart';
import 'package:muslim/core/resources/color_manager.dart';
import 'package:muslim/core/resources/values_manager.dart';

class SplashLogo extends StatelessWidget {
  const SplashLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .3,
      height: MediaQuery.of(context).size.height * .15,
      decoration: BoxDecoration(
        color: ColorManager.shadePrimary,
        borderRadius: BorderRadius.circular(AppRadiusCorner.r10),
      ),
      child: Center(
        child: Icon(
          Icons.mosque,
          color: ColorManager.green,
          size: AppSize.s20 * 3,
        ),
      ),
    );
  }
}
