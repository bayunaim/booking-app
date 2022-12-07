import 'package:booking/config/config.dart';
import 'package:flutter/material.dart';

class DisableButton extends StatelessWidget {
  const DisableButton(
      {Key? key,
      this.type = DisableButtonType.type1,
      required this.onPressed,
      required this.text,
      this.width = 78})
      : super(key: key);
  final DisableButtonType type;
  final VoidCallback? onPressed;
  final String text;
  final double width;

  @override
  Widget build(BuildContext context) {
    return type == DisableButtonType.type1
        ? _type1()
        : type == DisableButtonType.type2
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
            backgroundColor: AppColor.ink4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
        child: Text(
          text,
          style: AppFont.componentSmall.copyWith(color: AppColor.ink2),
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
            backgroundColor: AppColor.ink4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
        child: Text(
          text,
          style: AppFont.componentMediumBold.copyWith(color: AppColor.ink2),
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
            backgroundColor: AppColor.ink4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
        child: Text(
          text,
          style: AppFont.componentSmall.copyWith(color: AppColor.ink2),
        ),
      ),
    );
  }
}

enum DisableButtonType {
  type1,
  type2,
  type3,
}
