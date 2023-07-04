import 'package:flutter/material.dart';
import 'package:rapi2/presentation/features/atoms/location_pointer_icon.dart';

import '../../../../i18n/generated/translations.g.dart';

final class LocationPromptDialog extends StatelessWidget {
  final VoidCallback onActivate;
  final VoidCallback onDismiss;
  const LocationPromptDialog({Key? key, required this.onActivate, required this.onDismiss})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Column(
        children: [
          const LocationPointerIcon(),
          const SizedBox(height: 10),
          Text(
            i18n.splash.location_dialog.content1,
            textAlign: TextAlign.center,
          ),
        ],
      ),
      content: Text(
        i18n.splash.location_dialog.content2,
        textAlign: TextAlign.center,
      ),
      actions: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            FilledButton(
              onPressed: onActivate,
              child: Text(
                i18n.splash.location_dialog.activate,
              ),
            ),
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: onDismiss,
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
