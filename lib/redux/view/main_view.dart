import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/redux/state/app_state.dart';
import 'package:flutter_boilerplate/redux/view/status_view.dart';
import 'package:redux/redux.dart';

class AppView {
 StatusView status;

  AppView({
    @required this.status,
  });

  static AppView fromStore(Store<AppState> store) {
    return new AppView(
      status: StatusView.fromStore(store),
    );
  }
}
