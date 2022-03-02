import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'clients/views/components/app_home.dart';
import 'clients/views/logic/auth.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Authentication())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MonResto',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: const AppHome(),
      ),
    );
  }
}

