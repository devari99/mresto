import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../logic/auth.dart';

class ServiceView extends StatelessWidget {
  const ServiceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<Authentication>(
        builder: (BuildContext context, value, Widget? child) {
          debugPrint('serviceView ${value.response}');
          return Text('Service');
        },
      ),
    );
  }
}
