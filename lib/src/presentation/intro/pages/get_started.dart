import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:localization/localization.dart';
import 'package:spotify_redesing_app/src/common/widgets/button/basic_app_button.dart';
import 'package:spotify_redesing_app/src/core/configs/assets/app_images.dart';

import '../../../core/configs/assets/app_copys.dart';
import '../../../core/configs/assets/app_svg.dart';
import '../../../core/configs/navigation/navigation_routes.dart';
import '../../../core/configs/theme/app_colors.dart';
import '../../../core/tools/text_styles.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.introBg),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.15),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 40, horizontal: 40),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(AppSvg.logo),
                ),
                Spacer(),
                Text(
                  COPY_INTRO_TITLE.i18n(),
                  style: fontBoldSize(18).copyWith(color: Colors.white),
                ),
                SizedBox(
                  height: 21,
                ),
                Text(
                  COPY_INTRO_MESSAGE.i18n(),
                  style: fontMediumSize(13).copyWith(color: AppColors.grey),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                BasicAppButton(
                  onPressed: () {
                    navigateToChoose(context);
                  },
                  label: COPY_LABEL_STARTED_BTN.i18n(),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
