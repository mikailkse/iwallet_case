import 'package:flutter/material.dart';

class IWalletAlertDialog extends AlertDialog {
  IWalletAlertDialog({
    super.key,
    super.actions,
    super.content,
    super.icon,
    super.actionsAlignment,
  }) : super(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        );
}

extension CustomAlertDialogExtension on IWalletAlertDialog {
  Future<void> show(BuildContext context) {
    return showDialog(
      context: context,
      barrierColor: Colors.black.withOpacity(0.5),
      builder: (context) => this,
    );
  }
}
