import 'package:flutter/material.dart';
import 'package:rapi2/i18n/generated/translations.g.dart';

class ConnectionDialog extends StatelessWidget {
  final VoidCallback onRetry;
  const ConnectionDialog({super.key, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(i18n.core.connection_failure_dialog.title),
      content: Text(i18n.core.connection_failure_dialog.content),
      actions: [
        TextButton(
          onPressed: 
            onRetry,
          
          child: Text(i18n.core.connection_failure_dialog.action_button),
        ),
      ],
    );
  }
}
