import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AdaptiveIconButton extends StatelessWidget {
  final Function showDatePicker;
  AdaptiveIconButton(this.showDatePicker);
  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: Icon(CupertinoIcons.calendar),
            color: Theme.of(context).primaryColor,
            onPressed: showDatePicker,
          )
        : IconButton(
            icon: Icon(Icons.calendar_today),
            color: Theme.of(context).primaryColor,
            onPressed: showDatePicker,
          );
  }
}
