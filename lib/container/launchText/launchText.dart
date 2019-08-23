import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/redux/state/app_state.dart';
import 'package:flutter_boilerplate/redux/view/main_view.dart';
import 'package:flutter_boilerplate/utility/SizeConfig.dart';
import 'package:flutter_redux/flutter_redux.dart';

class LaunchText extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LaunchTextState();
  }
}

class _LaunchTextState extends State<LaunchText> {
  var firstLaunch = true;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppView>(
      converter: AppView.fromStore,
      builder: (BuildContext context, AppView vm) {
        var text = 'Num of updated: ' + vm.status.numOfTimesLaunch.toString();

        if (firstLaunch) {
          vm.status.updateNumOfTimesLaunch(vm.status.numOfTimesLaunch + 1);
          firstLaunch = false;
        }

        return Container(
          height: SizeConfig.blockSizeHeight * 20,
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              text,
              style: Theme.of(context).textTheme.title,
            ),
          ),
        );
      },
    );
  }
}
