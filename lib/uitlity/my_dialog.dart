import 'package:flutter/material.dart';
import 'package:jomreview/uitlity/my_constant.dart';
import 'package:jomreview/widgets/show_image.dart';
import 'package:jomreview/widgets/show_text.dart';

class MyDialog {
  final BuildContext context;
  MyDialog({
    required this.context,
  });

  Future<void> normalDialog(String title, String message) async {
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: ListTile(
          leading: ShowImage(),
          title: ShowText(label: title, textStyle:  MyConstant().h2Style(),),
          subtitle: ShowText(label: message),
        ),
        actions: [TextButton(onPressed: () => Navigator.pop(context), child: ShowText(label: 'OK',textStyle: MyConstant().h3StylePick(),))],
      ),
    );
  }
}
