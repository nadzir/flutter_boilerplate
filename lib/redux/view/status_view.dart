import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/redux/action/status_action.dart';
import 'package:flutter_boilerplate/redux/state/app_state.dart';
import 'package:redux/redux.dart';

class StatusView {
  int numOfTimesLaunch;

  Function updateNumOfTimesLaunch;

  StatusView({
    @required this.numOfTimesLaunch,
    @required this.updateNumOfTimesLaunch,
  });

  static StatusView fromStore(Store<AppState> store) {
    return new StatusView(
        numOfTimesLaunch: store.state.status.numOfTimesLaunch ?? 0,
        updateNumOfTimesLaunch: (int numOfTimesLaunch) {
          store.dispatch(UpdateNumOfTimesLaunch(numOfTimesLaunch: numOfTimesLaunch));
        });
  }
}
