import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loader {
  bool _isLoading = false;
  BuildContext _context;

  void showLoader(BuildContext context) {
    if (!_isLoading) {
      _isLoading = true;
      _context = context;
      showModal(
        context: context,
        builder: (context) => Material(
          color: Colors.transparent,
          child: Center(
              child: SpinKitCubeGrid(
            color: Color(0xff00e3ee),
            size: 40.0,
            duration: Duration(
              milliseconds: 1000,
            ),
          )),
        ),
      );
    }
  }

  void hideLoader() {
    if (_isLoading) {
      Navigator.of(_context).pop();
      _isLoading = false;
    }
  }
}
