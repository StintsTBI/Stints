import 'package:flutter/material.dart';
import 'package:stints/assets/constants.dart';

///This is the smallest of all
class SmallText extends StatelessWidget {
  const SmallText(
    this.text, {
    Key key,
    this.color,
  }) : super(key: key);

  final String text;

  ///Default value is WidgetColors.black
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: TextSize.small,
      ),
    );
  }
}

///This is a normal text
class NormalText extends StatelessWidget {
  const NormalText(
    this.text, {
    Key key,
    this.color,
  }) : super(key: key);

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: TextSize.medium,
      ),
    );
  }
}

///This is the second largest
class SubHeading extends StatelessWidget {
  const SubHeading(
    this.text, {
    Key key,
    this.color,
  }) : super(key: key);

  final String text;

  ///Default color is WidgetColors.black
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: TextSize.large,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

///This is the largest
class Heading extends StatelessWidget {
  const Heading(
    this.text, {
    Key key,
    this.color = WidgetColors.black,
  }) : super(key: key);

  final String text;

  ///Default value is WidgetColors.black
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.bold,
        fontSize: TextSize.extraLarge,
      ),
    );
  }
}
