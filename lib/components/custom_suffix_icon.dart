import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class custom_suffix_icon extends StatelessWidget {
  const custom_suffix_icon({
    Key key,
    @required this.svgIcon,
  }) : super(key: key);
  final String svgIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 20,
      ),
      child: SvgPicture.asset(
        svgIcon,
        width: 20,
      ),
    );
  }
}