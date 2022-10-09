import 'package:finandina/slider_components/model/page_view_model.dart';
import 'package:flutter/material.dart';

class IntroContent extends StatelessWidget {
  final PageViewModel page;

  const IntroContent({Key? key, required this.page}) : super(key: key);

  Widget? _buildWidget(Widget? widget, String? text, TextStyle? style) {
    return widget;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: page.decoration.contentPadding,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(1),
            child: SizedBox(),
          ),
          Padding(
            padding: EdgeInsets.all(1),
            child: SizedBox(),
          ),
          if (page.footer != null)
            Padding(
              padding: EdgeInsets.all(1),
              //  padding: page.decoration.footerPadding,
              child: page.footer,
            ),
        ],
      ),
    );
  }
}
