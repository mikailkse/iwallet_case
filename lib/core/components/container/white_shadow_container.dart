import 'package:flutter/material.dart';

final class WhiteShadowContainer extends Container {
  WhiteShadowContainer({
    super.key,
    required final double width,
    required Widget child,
    double height = 80,
    EdgeInsetsGeometry? margin = const EdgeInsets.all(8),
    EdgeInsetsGeometry? padding = const EdgeInsets.all(8),
  }) : super(
          width: width,
          height: height,
          margin: margin,
          padding: padding,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
            borderRadius: BorderRadius.circular(12),
          ),
          child: child,
        );
}
