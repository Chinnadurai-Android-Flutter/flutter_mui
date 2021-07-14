import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mui/app_fonts.dart';

import 'app_text_style.dart';
import 'dimen.dart';

class AppText {
  static String capitalize(String? text) {
    if (text?.isNotEmpty == true) {
      return text!
          .split(" ")
          .map((s) => s[0].toUpperCase() + s.substring(1))
          .join(" ");
    } else {
      return "";
    }
  }

  static Widget titleField(
      {String? title,
      String? subtitle,
      BuildContext? context,
      bool showBackButton = false,
      Color? color}) {
    return Row(
      children: <Widget>[
        Visibility(
          visible: showBackButton,
          child: GestureDetector(
            onTap: () {
              if (context != null) {
                Navigator.of(context).pop();
              }
            },
            child: Padding(
              padding: const EdgeInsets.only(right: Dimen.BASE_MARGIN),
              child: Icon(
                Icons.arrow_back,
                color: color,
                size: 22,
              ),
            ),
          ),
        ),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              titleText(title!, color: color!),
              Padding(
                padding: const EdgeInsets.only(top: Dimen.TINY),
                child: smallBold(subtitle!, color: color),
              )
            ],
          ),
        ),
      ],
    );
  }

  static Widget titleText(String text, {Color? color}) {
    return Text(
      text,
      maxLines: 1,
      softWrap: true,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
          fontFamily: AppFonts.poppinsMedium,
          fontStyle: FontStyle.normal,
          color: color!,
          fontSize: TextSize.XXX_LARGE,
          fontWeight: FontWeight.w600),
    );
  }

  static Widget small(String text, {Color? color}) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      softWrap: true,
      style: AppTextStyle.small(color: color!),
    );
  }

  static Widget smallMultiLine(String text, {Color? color}) {
    return Text(
      text,
      softWrap: true,
      style: AppTextStyle.small(color: color!),
    );
  }

  static Widget smallMultiLineCenterAlign(String text, {Color? color}) {
    return Text(
      text,
      textAlign: TextAlign.center,
      softWrap: true,
      style: AppTextStyle.small(color: color!),
    );
  }

  static Widget smallBold(String text,
      {Color? color, Color? backgroundColor, bool isMultiline = false}) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      maxLines: isMultiline ? 10 : 1,
      softWrap: true,
      style: AppTextStyle.smallBold(
          color: color!, backgroundColor: backgroundColor!),
    );
  }

  static Widget normal(String text, {Color? color}) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      softWrap: true,
      style: AppTextStyle.normal(color: color!),
    );
  }

  static Widget normalBold(String text, {Color? color}) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      softWrap: true,
      style: AppTextStyle.normalBold(color: color!),
    );
  }

  static Widget medium(String text,
      {Color? color, Color? backgroundColor, TextAlign? alignment}) {
    return Text(
      text,
      maxLines: 1,
      softWrap: true,
      overflow: TextOverflow.ellipsis,
      textAlign: alignment,
      style:
          AppTextStyle.medium(color: color!, backgroundColor: backgroundColor!),
    );
  }

  static Widget mediumBold(String text, {Color? color}) {
    return Text(
      text,
      maxLines: 1,
      softWrap: true,
      overflow: TextOverflow.ellipsis,
      style: AppTextStyle.mediumBold(color: color!),
    );
  }

  static Widget largeBold(String text, {Color? color}) {
    return Text(text,
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        softWrap: true,
        style: AppTextStyle.largeBold(color: color!));
  }

  static Widget extraLarge(String text, {Color? color}) {
    return Text(text,
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        softWrap: true,
        style: AppTextStyle.extraLarge(color: color!));
  }

  static Widget extraLargeBold(String text, {Color? color}) {
    return Text(text,
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        softWrap: true,
        style: AppTextStyle.extraLargeBold(color: color!));
  }

  static Widget textFormField(
      {String? hint,
      TextEditingController? controller,
      TextInputType? inputType,
      bool autoValidate = false,
      FormFieldValidator<String>? validator,
      String? prefixText}) {
    return TextFormField(
      // ignore: deprecated_member_use
      autovalidate: autoValidate,
      cursorColor: Colors.grey,
      decoration: InputDecoration(
          focusColor: Colors.grey,
          contentPadding: const EdgeInsets.all(Dimen.TINY),
          isDense: true,
          hintText: hint ?? "",
          border: const UnderlineInputBorder(),
          fillColor: Colors.grey,
          prefixText: prefixText),
      validator: validator,
      controller: controller,
      keyboardType: inputType ?? TextInputType.text,
      maxLines: 1,
      style: TextStyle(
        color: Colors.black87,
        fontFamily: AppFonts.poppins,
        fontSize: TextSize.MEDIUM,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.normal,
      ),
    );
  }

  static Widget textFormFieldWithBorder(
      {String? hint,
      TextEditingController? controller,
      TextInputType? inputType,
      bool autoValidate = false,
      FormFieldValidator<String>? validator,
      String? prefixText}) {
    return TextFormField(
      // ignore: deprecated_member_use
      autovalidate: autoValidate,
      textAlign: TextAlign.center,
      cursorColor: Colors.grey,
      decoration: InputDecoration(
          focusColor: Colors.grey,
          contentPadding: const EdgeInsets.all(Dimen.TINY),
          isDense: true,
          hintText: hint ?? "",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide: const BorderSide(),
              gapPadding: Dimen.LARGE),
          fillColor: Colors.grey,
          prefixText: prefixText),
      validator: validator,
      controller: controller,
      keyboardType: inputType ?? TextInputType.number,
      maxLines: 1,
      style: TextStyle(
        color: Colors.black87,
        fontFamily: AppFonts.poppins,
        fontSize: TextSize.MEDIUM,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.normal,
      ),
    );
  }

  static Widget searchTextFormFieldWithBorder(
      {String? hint,
      TextEditingController? controller,
      TextInputType? inputType,
      bool autoValidate = false,
      FormFieldValidator<String>? validator,
      String? prefixText}) {
    return Container(
      color: Colors.white,
      child: TextFormField(
        // ignore: deprecated_member_use
        autovalidate: autoValidate,
        textAlign: TextAlign.center,
        cursorColor: Colors.white,
        decoration: InputDecoration(
            focusColor: Colors.white,
            contentPadding: const EdgeInsets.all(Dimen.SMALL),
            isDense: true,
            hintText: hint ?? "",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
                borderSide:
                    const BorderSide(color: Colors.transparent, width: 0.0),
                gapPadding: Dimen.XX_LARGE),
            fillColor: Colors.white,
            prefixText: prefixText),
        validator: validator,
        controller: controller,
        keyboardType: inputType ?? TextInputType.text,
        maxLines: 1,
        style: TextStyle(
          color: Colors.black87,
          fontFamily: AppFonts.poppins,
          fontSize: TextSize.MEDIUM,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
