import 'package:flutter/material.dart';

/// Wrapper for buttons.
class FitButton extends StatelessWidget {
  /// Padding around the child of the button.
  static const EdgeInsets _contentPadding = EdgeInsets.only(left: 12.0, right: 12.0, top: 4.0, bottom: 4.0);

  /// Execute when tapping on the button.
  final Function()? onTap;

  /// Execute when long pressing on the button.
  final Function()? onLongPress;

  /// Width of the button.
  final double? width;

  /// Height of the button.
  final double? height;

  /// Margin of the button.
  final EdgeInsets? margin;

  /// Padding of the button.
  final EdgeInsets? padding;

  /// Widget to display inside the button.
  final Widget child;

  /// Creates a new [FitButton].
  const FitButton({
    super.key,
    this.onTap,
    required this.child,
    this.onLongPress,
    this.margin,
    this.padding,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      child: FilledButton(
        onPressed: onTap,
        onLongPress: onLongPress,
        child: Container(
          padding: _contentPadding,
          child: child,
        ),
      ),
    );
  }
}