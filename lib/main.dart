import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/redux/state/app_state.dart';
import 'package:flutter_boilerplate/redux/reducer/app_reducer.dart';
import 'package:flutter_boilerplate/ui/home.dart';
import 'package:flutter_boilerplate/utility/SizeConfig.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_logging/redux_logging.dart';
import 'package:splashscreen/splashscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(
        seconds: 2,
        navigateAfterSeconds: AfterSplash(),
        image: Image.asset("assets/icon/icon.png"),
        loaderColor: Colors.blue,
        backgroundColor: Colors.white,
        photoSize: 100,
      ),
    );
  }
}

class AfterSplash extends StatelessWidget {
  // Redux: Configure store
  final store = Store<AppState>(
    appReducer,
    initialState: AppState(),
    middleware: [LoggingMiddleware.printer()],
  );

  @override
  Widget build(BuildContext context) {
    // SizeConfig is to set the width and height of the physical device
    // Need to set the context once
    SizeConfig.setContext(context);

    return StoreProvider(
      store: store,
      child: MaterialApp(
        title: 'Flutter Boilerplate',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Home(title: 'Flutter Boilerplate'),
      ),
    );
  }
}
