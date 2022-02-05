import 'package:flutter/material.dart';
import 'package:jomreview/uitlity/my_constant.dart';
import 'package:jomreview/widgets/show_button.dart';
import 'package:jomreview/widgets/show_form.dart';
import 'package:jomreview/widgets/show_image.dart';
import 'package:jomreview/widgets/show_text.dart';

class Authen extends StatelessWidget {
  const Authen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: MyConstant().mainBoz(),
        child: GestureDetector(onTap: () => FocusScope.of(context).requestFocus(FocusScopeNode()),
          behavior: HitTestBehavior.opaque,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                newimage(),
                newAppName(),
                newEmail(),
                newPassword(),
                newLogin(),
                newCreateAccount(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row newCreateAccount(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const ShowText(label: 'Non Account ?'),
        TextButton(
          onPressed: () =>Navigator.pushNamed(context, MyConstant.rountCreatAccount),
          child: ShowText(
            label: 'Create Account',
            textStyle: MyConstant().h3StylePick(),
          ),
        ),
      ],
    );
  }

  ShowButton newLogin() {
    return ShowButton(
      label: 'Login',
      pressFunc: () {},
    );
  }

  ShowForm newEmail() {
    return ShowForm(
      textInputType: TextInputType.emailAddress,
      label: 'Email :',
      iconData: Icons.email_outlined, changFunce: (String string) {  },
    );
  }

  ShowForm newPassword() {
    return ShowForm(
      label: 'Password :',
      iconData: Icons.lock_outlined,
      obcu: true, changFunce: (String string) {  },
    );
  }

  Container newAppName() {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      child: ShowText(
        label: MyConstant.appNeme,
        textStyle: MyConstant().h1Style(),
      ),
    );
  }

  SizedBox newimage() {
    return const SizedBox(
      width: 250,
      child: ShowImage(
        path: 'images/image2.png',
      ),
    );
  }
}
