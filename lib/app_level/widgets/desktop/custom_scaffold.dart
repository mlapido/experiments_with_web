import 'package:experiments_with_web/app_level/extensions/textstyle_extension.dart';
import 'package:experiments_with_web/app_level/styles/themes.dart';

import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({
    Key key,
    this.titleText = 'Your Title',
    this.child,
    this.showAppBar = true,
    this.showDrawer = false,
    this.enableDarkMode = false,
    this.drawerChild,
    Widget bottomSheet,
  })  : _bottomSheet = bottomSheet,
        super(key: key);

  final String titleText;
  final Widget child;
  final bool showAppBar;
  final bool showDrawer;
  final bool enableDarkMode;
  final Widget drawerChild;
  final Widget _bottomSheet;

  @override
  Widget build(BuildContext context) {
    //

    return Theme(
      data: enableDarkMode ? ThemeData.dark() : AppTheme.darkTheme,
      child: Scaffold(
        appBar: showAppBar
            ? AppBar(
                title:
                    Text(titleText, style: const TextStyle().c(Colors.black)),
              )
            : null,
        body: child ?? const Center(child: Text('Hi there')),
        endDrawer: showDrawer ? drawerChild : null,
        bottomSheet: _bottomSheet,
      ),
    );
  }
}
