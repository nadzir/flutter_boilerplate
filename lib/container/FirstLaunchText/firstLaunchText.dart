import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/redux/state/app_state.dart';
import 'package:flutter_boilerplate/redux/view/main_view.dart';
import 'package:flutter_boilerplate/utility/SizeConfig.dart';
import 'package:flutter_redux/flutter_redux.dart';

class FirstLaunchText extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FirstLaunchTextState();
  }
}

class _FirstLaunchTextState extends State<FirstLaunchText> {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppView>(
      converter: AppView.fromStore,
      builder: (BuildContext context, AppView vm) {
        var text = vm.status.isFirstLaunch
            ? 'First Launch'
            : 'Updated via redux after 3 seconds';
        Timer(Duration(seconds: 3), () {
          vm.status.updateIsFirstLaunch(false);
        });

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
