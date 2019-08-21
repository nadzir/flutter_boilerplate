import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/redux/action/status_action.dart';
import 'package:flutter_boilerplate/redux/state/app_state.dart';
import 'package:redux/redux.dart';

class StatusView {
  bool isFirstLaunch;

  Function updateIsFirstLaunch;

  StatusView({
    @required this.isFirstLaunch,
    @required this.updateIsFirstLaunch,
  });

  static StatusView fromStore(Store<AppState> store) {
    return new StatusView(
        isFirstLaunch: store.state.status.isFirstLaunch ?? true,
        updateIsFirstLaunch: (bool isFirstLaunch) {
          store.dispatch(UpdateIsFirstLaunch(isFirstLaunch: isFirstLaunch));
        });
  }
}
