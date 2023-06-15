/*

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uni_links/uni_links.dart';

import 'deeplink.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp( MyAppDynamic());

}

void initUniLinks(BuildContext context) async {
  // Ensure that the app is ready to handle deep links
  try {
    await getInitialLink();
  } on PlatformException {
    // Handle exception if platform is not supported or other error occurs
  }

  // Set up a stream subscription to handle deep links when the app is running
  Uri? initialUri;
  getLinksStream().listen((String? uri) {
    if (uri != null && uri != initialUri) {
      initialUri = Uri.parse(uri);
      handleDeepLink(initialUri!,context);
    }
  }, onError: (err) {
    // Handle stream subscription errors
  });
}

void handleDeepLink(Uri uri, BuildContext context) {
  // Extract relevant information from the deep link and perform actions accordingly
  String path = uri.path;
  String? query = uri.queryParameters['param'];

  // Example: Navigating to a specific screen based on the deep link
  if (path == '/product') {
    String productId = query ?? '';
    Navigator.pushNamed(context, '/product', arguments: productId);
  }
}*/

import 'dart:async';
import 'package:blog/home.dart';
import 'package:blog/snackbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uni_links/uni_links.dart';
import 'package:flutter/services.dart' show PlatformException;

import 'app_utils.dart';
//IMPORT THESE PACKAGES ^^^
void main() {
  initUniLinks();
  runApp(MyApp());

}
 initUniLinks()async{
  try{
    Uri? initialLink = await getInitialUri();
    print(initialLink);
  } on PlatformException {
    print('platfrom exception unilink');
  }
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      scaffoldMessengerKey:AppUtils.messengerKey ,
      debugShowCheckedModeBanner: false,
      home: SnackbarDemo(),
    );
  }
}