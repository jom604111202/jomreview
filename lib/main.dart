import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:jomreview/states/authen.dart';
import 'package:jomreview/states/create_account.dart';
import 'package:jomreview/uitlity/my_constant.dart';

final Map<String, WidgetBuilder> map = {
  MyConstant.rountAuthen: (context) => const Authen(),
  MyConstant.rountCreatAccount: (context) => const CreateAccount(),
};

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp()
      .then(((value) => print('#####Firebase Intitia; Success')));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: map,
      title: MyConstant.appNeme,
      initialRoute: MyConstant.rountAuthen,
    );
  }
}
