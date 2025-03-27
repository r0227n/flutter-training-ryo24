import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_training/utils/result.dart';

class ResultDialog extends StatelessWidget {
  const ResultDialog({required this.title, required this.content, super.key});

  final String title;
  final String content;

  static Future<bool?> show({
    required BuildContext context,
    required String title,
    required Result<String> result,
  }) {
    return showDialog(
      context: context,
      builder:
          (ctx) => ResultDialog(
            title: title,
            content: switch (result) {
              Ok<String>() => result.success,
              Error<String>() => result.error,
            },
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(true),
          child: const Text('OK'),
        ),
      ],
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('title', title));
    properties.add(StringProperty('content', content));
  }
}
