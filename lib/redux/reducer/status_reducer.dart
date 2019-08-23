import 'package:flutter_boilerplate/redux/action/status_action.dart';
import 'package:flutter_boilerplate/redux/state/status_state.dart';

dynamic statusReducer(StatusState statusState, action) {
  if (action is UpdateNumOfTimesLaunch) {
    statusState.numOfTimesLaunch = action.numOfTimesLaunch;
  }
  return statusState;
}
