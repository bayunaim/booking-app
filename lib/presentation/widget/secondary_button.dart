import 'package:flutter/material.dart';
import 'package:booking/config/config.dart';

class SecondaryWidget extends StatelessWidget {
  const SecondaryWidget(
      {Key? key,
      this.type = SecondaryButtonType.type1,
      required this.onPressed,
      required this.text,
      this.width = 78})
      : super(key: key);
  final SecondaryButtonType type;
  final VoidCallback? onPressed;
  final String text;
  final double width;

  @override
  Widget build(BuildContext context) {
    return type == SecondaryButtonType.type1
        ? _type1()
        : type == SecondaryButtonType.type2
            ? _type2()
            : _type3();
  }

  Widget _type1() {
    return SizedBox(
      width: width,
      height: 24,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.ink6,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
        child: Text(
          text,
          style: AppFont.componentSmall.copyWith(color: AppColor.ink1),
        ),
      ),
    );
  }

  Widget _type2() {
    return SizedBox(
      width: width,
      height: 32,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.ink6,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
        child: Text(
          text,
          style: AppFont.componentMediumBold.copyWith(color: AppColor.ink1),
        ),
      ),
    );
  }

  Widget _type3() {
    return SizedBox(
      width: width,
      height: 24,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.ink6,
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

enum SecondaryButtonType {
  type1,
  type2,
  type3,
}
