import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jomreview/uitlity/my_constant.dart';
import 'package:jomreview/widgets/show_text.dart';

class ShowForm extends StatelessWidget {
  final String label;
  final IconData iconData;
  final bool? obcu;
  final TextInputType? textInputType;
  final Function(String) changFunce;
  const ShowForm({
    Key? key,
    required this.label,
    required this.iconData,
    this.obcu,
    this.textInputType,
    required this.changFunce,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      width: 250,
      height: 40,
      child: TextFormField(onChanged: changFunce ,
        keyboardType: textInputType ?? TextInputType.text,
        obscureText: obcu ?? false,
        decoration: InputDecoration(
          fillColor: Colors.white.withOpacity(0.5),
          filled: true,
          contentPadding: const EdgeInsets.symmetric(vertical: 4),
          prefixIcon: Icon(
            iconData,
            color: MyConstant.dark,
          ),
          label: ShowText(label: label),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: MyConstant.dark),
            borderRadius: BorderRadius.circular(30),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: MyConstant.lignt),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
