import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mui/app_fonts.dart';
import 'package:flutter_mui/dimen.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'app_text.dart';

class WidgetUtils {
  static void showPopUp(BuildContext context,
      {String? title,
      String? message,
      String? sButtonLabel,
      String? nButtonLabel,
      GestureTapCallback? sFunction,
      GestureTapCallback? nFunction,
      bool? shownButton}) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title!),
          content: Text(message ?? ""),
          actions: <Widget>[
            FlatButton(
              child: Text(sButtonLabel ?? "OK"),
              onPressed: sFunction ??
                  () {
                    Navigator.of(context).pop();
                  },
            ),
            shownButton!
                ? FlatButton(
                    child: Text(nButtonLabel ?? "Cancel"),
                    onPressed: nFunction ??
                        () {
                          Navigator.of(context).pop();
                        },
                  )
                : Container(),
          ],
        );
      },
    );
  }

  static void showSnackBar(BuildContext context, String message) {
    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 3),
      ),
    );
  }

  static Widget qrCodeView(String qrURLString,
      {double? height, double? width}) {
    return Container(
      padding: EdgeInsets.all(Dimen.TINY),
      child: SvgPicture.string(qrURLString),
      width: width!,
      height: height!,
    );
  }

  static Widget placeHolder(isPlaceHolder) {
    return Center(
      child: Visibility(
        visible: isPlaceHolder,
        child: const CircularProgressIndicator(
          backgroundColor: Colors.white,
        ),
      ),
    );
  }

  static Widget noMoreValuesView(bool visibility, String image, Color? color,
      {String? message}) {
    return Visibility(
        visible: !visibility,
        child: Padding(
          padding: const EdgeInsets.all(Dimen.MEDIUM),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  image,
                  color: color,
                ),
                AppText.small(
                  message ?? 'No more items',
                  color: Colors.grey,
                ),
              ],
            ),
            alignment: Alignment.center,
          ),
        ));
  }

  static Widget loadingWidget(Color? color, String? image) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            image!,
            width: double.infinity,
            height: double.infinity,
          ),
          const SizedBox(
            height: Dimen.BASE_MARGIN_LARGE,
          ),
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(color!),
          ),
        ],
      ),
    );
  }

  Widget imageUtility(String url, BuildContext context,
      {double? dHeight, double? dWidth, BoxFit? fitValues}) {
    return Image(
      image: CachedNetworkImageProvider(url),
      width: dWidth ?? 80,
      height: dHeight ?? 80,
      fit: fitValues ?? BoxFit.fill,
    );
  }

  Widget assetImageUI(String asset, {double? dHeight, double? dWidth}) {
    return Image.asset(
      asset,
      width: dWidth ?? 28,
      height: dHeight ?? 28,
    );
  }

  Widget appNameField(String appName, String appNameExtension, {Color? color}) {
    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: appName,
            style: TextStyle(
                color: color ?? Colors.grey,
                fontSize: TextSize.XXX_LARGE,
                fontStyle: FontStyle.normal,
                letterSpacing: 2.5,
                fontFamily: AppFonts?.poppinsMedium,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget appNameWithLogo(String appName, String logo, String appNameExtension,
      {Alignment? alignment, Color? color, double? dHeight, double? dWidth}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            const SizedBox(height: Dimen?.BASE_MARGIN_LARGE),
            appNameField(appName, appNameExtension, color: color!),
            const SizedBox(height: Dimen?.BASE_MARGIN),
            Image.asset(
              logo,
              fit: BoxFit.fill,
              width: dWidth ?? 80,
              height: dHeight ?? 80,
            ),
          ],
        ),
      ],
    );
  }

  Widget assetLogo(String logo, {double? dHeight, double? dWidth}) {
    return Container(
      padding: const EdgeInsets.all(Dimen.TINY),
      child: Image.asset(
        logo,
        width: dWidth ?? 100,
        height: dHeight ?? 100,
        fit: BoxFit.fill,
      ),
    );
  }
}
