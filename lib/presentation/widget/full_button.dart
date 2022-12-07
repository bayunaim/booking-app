import 'package:booking/config/config.dart';
import 'package:flutter/material.dart';

class FullButton extends StatelessWidget {
  const FullButton(
      {Key? key,
      this.type = FullButtonType.type1,
      required this.onPressed,
      required this.text,
      this.width = 43})
      : super(key: key);
  final FullButtonType type;
  final VoidCallback? onPressed;
  final String text;
  final double width;

  @override
  Widget build(BuildContext context) {
    return type == FullButtonType.type1
        ? _type1()
        : type == FullButtonType.type1
            ? _type1()
            : _type1();
  }

  Widget _type1() {
    return SizedBox(
      width: width,
      height: 56,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.ink4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
        child: Text(
          text,
          style: AppFont.componentSmall.copyWith(color: AppColor.ink1),
        ),
      ),
    );
  }
}

enum FullButtonType {
  type1,
}
