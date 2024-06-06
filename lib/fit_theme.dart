import 'package:flutter/material.dart';
import 'package:flutter_fit_utils_ui/flutter_fit_utils_ui.dart';

/// Theme data with extended functionnalities.
class FitTheme extends InheritedWidget {
  /// Base text style. This style will be applied to all fit ui components
  /// that uses the [Text] widget.
  /// For example, use this base style to set the font family.
  final TextStyle? baseTextStyle;

  /// Size to use to display [FitLoadingIndicator].
  /// You can override the size for individual loading indicators if needed.
  final Size loadingIndicatorSize;

  /// Theming properties for [FitTextIcon].
  final FitTextIconThemeData fitTextIconThemeData;

  /// Creates a new intance of [FitTheme].
  const FitTheme({
    super.key,
    required super.child,
    this.baseTextStyle,
    this.loadingIndicatorSize = FitLoadingIndicator.defaultSize,
    this.fitTextIconThemeData = const FitTextIconThemeData(),
  });

  /// Gets the closest [FitTheme] in the Widget Tree.
  static FitTheme? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<FitTheme>();
  }

  @override
  bool updateShouldNotify(FitTheme oldWidget) {
    return oldWidget.baseTextStyle != baseTextStyle;
  }
}
