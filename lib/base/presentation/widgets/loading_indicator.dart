import 'package:flutter/material.dart';

class LoadingIndicator extends StatelessWidget {
  final double? width;
  final double? height;
  final BoxDecoration? decoration;
  LoadingIndicator({Key? key, this.width, this.height, this.decoration}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
        width: this.width,
        height: this.height,
        decoration: this.decoration,
        child: Center(
          child: CircularProgressIndicator(),
        )
    );
  }
}
