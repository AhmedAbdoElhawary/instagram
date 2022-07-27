import 'package:flutter/cupertino.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:instagram/core/utility/constant.dart';

/// I don't use routes methods because there is a lot of run time error.
/// I use normal Navigator because i don't know how to make Get.to without root.
Future pushToPage(BuildContext context,
    {required Widget page, bool withoutRoot = true}) async {
  if (isThatMobile) {
    return Navigator.of(context, rootNavigator: withoutRoot)
        .push(CupertinoPageRoute(
            builder: (context) {
              return page;
            },
            maintainState: !withoutRoot));
  } else {
    return Get.to(page);
  }
}
