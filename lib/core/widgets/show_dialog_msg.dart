import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:quickalert/quickalert.dart';

class ShowDialogMsg {
  static void showDialogtext({
    required BuildContext context,
    required QuickAlertType type,
    required String title,
    required String body,
    String confirmText = 'Okay',
    String cancelText = 'Cancel',
    VoidCallback? cancel,
    required VoidCallback confirm,
  }) {
    QuickAlert.show(
        cancelBtnTextStyle: TextStyle(color: Color(0xff101127), fontSize: 20),
        context: context,
        type: type,
        title: title,
        text: body,
        confirmBtnText: confirmText,
        onConfirmBtnTap: confirm,
        cancelBtnText: cancelText,
        onCancelBtnTap: cancel);
  }
  static void showToost({required String msg}){
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }
}
