
import 'package:flutter/material.dart';
import 'package:rapi2/presentation/features/atoms/location_pointer_icon.dart';

import '../../../../i18n/generated/translations.g.dart';

final class LocationPromptDialog extends StatelessWidget {
  final VoidCallback onActivate;
  const LocationPromptDialog({Key? key, required this.onActivate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const LocationPointerIcon(),
      content: Column(
        children: [
          Text(
            i18n.splash.location_dialog.content1,
          ),
          Text(
            i18n.splash.location_dialog.content2,
          ),
        ],
      ),
      actions: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextButton(
                onPressed: onActivate,
                child: Text(
                  i18n.splash.location_dialog.activate,
                ),
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  i18n.splash.location_dialog.ignore,
                ),
              ),
          ],
        ),
      ],
    );
  }
}
