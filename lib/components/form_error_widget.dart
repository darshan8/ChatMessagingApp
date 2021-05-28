import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Error_widget extends StatelessWidget {
  const Error_widget({
    Key key,
    @required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          errors.length, (index) => formErrorText(error: errors[index])
      ),
    );
  }

  Row formErrorText({String error}) {
    return Row(
      children: [
        SvgPicture.asset(
          "assets/icons/Error.svg",
          height: 16,
          width: 16,
        ),
        SizedBox(
          width: 14,
        ),
        Text(errors[0]),
      ],
    );
  }
}