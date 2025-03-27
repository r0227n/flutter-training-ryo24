import 'dart:async';
import 'package:flutter/material.dart';

mixin WidgetsBindingFrame<T extends StatefulWidget> on State<T> {
  void didEndOfFrameAction();

  @override
  void initState() {
    super.initState();
    unawaited(
      WidgetsBinding.instance.endOfFrame.then((_) => didEndOfFrameAction()),
    );
  }
}
