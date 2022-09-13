import 'package:flutter/cupertino.dart';
import 'package:shopland/utils/constant/colors.dart';
import 'package:shopland/utils/constant/sizes.dart';

class WidgetConst {
  static BorderRadius defaultBorderRadius = BorderRadius.circular(SizeConst.kDefaultRadius);

  static const TextStyle highLight1Bold20 =
      TextStyle(fontSize: 20, color: ColorConst.kBackground1, fontWeight: FontWeight.bold);

  static SizedBox heightSpacer({double heightMultiplier = 1}) {
    return SizedBox(height: SizeConst.kDefaultPadding * heightMultiplier);
  }

  static SizedBox widthSpacer({double widthMultiplier = 1}) {
    return SizedBox(width: SizeConst.kDefaultPadding * widthMultiplier);
  }

  static Text defaultText({
    required String textString,
    TextStyle textStyle = highLight1Bold20,
    int maxLine = 1,
    TextAlign textAlign = TextAlign.center,
  }) =>
      Text(
        textString,
        style: textStyle,
        overflow: TextOverflow.ellipsis,
        maxLines: maxLine,
        textAlign: textAlign,
      );

  static Image cacheImage({String imagePath = "assets/logo.png"}) {
    return Image.asset(imagePath, fit: BoxFit.cover);
  }

  static Duration duration() => const Duration(milliseconds: 100);
}
