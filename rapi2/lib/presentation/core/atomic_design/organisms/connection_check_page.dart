import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rapi2/presentation/core/presentation_funcionalities/show_snack_bar_mixin.dart';

import '../../../../application/core/services/cubit/connection_status_cubit.dart';
import '../../../../i18n/generated/translations.g.dart';
import '../molecules/connection_dialog.dart';

class ConnectionCheck extends StatelessWidget with ShowSnackBarMixin{
  final String? pendingRoute;
  const ConnectionCheck({super.key, required this.pendingRoute});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConnectionDialog(
        onRetry: () async {
          await context.read<ConnectionStatusCubit>().checkOnlineStatus().then((_) {
            if (context.read<ConnectionStatusCubit>().state ==
                const ConnectionStatusState.online()) {
              context.go(pendingRoute!);
                } else {
              showSnackBar(context, i18n.core.connection_failure_dialog.snackbar);
            }
          });
        },
      ),
    );
  }
}
