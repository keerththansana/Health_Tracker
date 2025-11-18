import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../core/app_export.dart';
import 'package:flutter_switch/flutter_switch.dart';

// ignore_for_file: must_be_immutable
class CustomSwitch extends StatelessWidget {
  final Alignment? alignment;
  bool? value;
  final Function(bool) onChange;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;

  CustomSwitch({
    Key? key,
    required this.onChange,
    this.alignment,
    this.value,
    this.width,
    this.height,
    this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      child: alignment != null
          ? Align(
              alignment: alignment ?? Alignment.center,
              child: switchWidget,
            )
          : switchWidget,
    );
  }

  Widget get switchWidget => FlutterSwitch(
        value: value ?? false,
        height: 30.h,
        width: 50.h,
        toggleSize: 26,
        borderRadius: 14.h,
        activeColor: theme.colorScheme.onErrorContainer,
        activeToggleColor: appTheme.black900,
        inactiveColor: appTheme.gray30001,
        inactiveToggleColor: appTheme.black900,
        onToggle: (value) {
          onChange(value);
        },
      );
}
