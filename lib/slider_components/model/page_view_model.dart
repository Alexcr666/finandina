import 'package:finandina/slider_components/model/page_decoration.dart';
import 'package:flutter/material.dart';

class PageViewModel {
  final Widget? titleWidget;

  /// Text of page (description)

  /// Widget content of page (description)
  final Widget? bodyWidget;

  /// Image of page
  /// Tips: Wrap your image with an alignment widget like Align or Center
  final Widget? image;

  /// Footer widget, you can add a button for example
  final Widget? footer;

  /// Page decoration
  /// Contain all page customizations, like page color, text styles
  final PageDecoration decoration;

  PageViewModel({
    this.titleWidget,
    this.bodyWidget,
    this.image,
    this.footer,
    this.decoration = const PageDecoration(),
  });
}
