import 'package:flutter/material.dart';
import 'package:hajithon_teami_flutter_app/core/utils/loader.dart';
import 'package:hajithon_teami_flutter_app/routes/routes.dart';

String getInintialRoute({bool debug = false}) {
  return debug ? Routes.TEST : Routes.HOME;
}

void main() async {
  await AppLoader().load();
  runApp(
    MaterialApp(
      title: '하지톤 temai',
      initialRoute: getInintialRoute(debug: false),
      debugShowCheckedModeBanner: false,
    ),
  );
}
