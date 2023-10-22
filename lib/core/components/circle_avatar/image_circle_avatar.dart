import 'package:flutter/material.dart';

final class NetworkImageCircleAvatar extends CircleAvatar {
  NetworkImageCircleAvatar(
      {super.key, required String networkUrl, double radius = 30})
      : super(
          radius: radius,
          backgroundImage: NetworkImage(networkUrl),
          backgroundColor: Colors.transparent,
          onBackgroundImageError: (error, stackTrace) => const CircleAvatar(
            radius: 30,
            child: Icon(
              Icons.error,
              color: Colors.red,
            ),
          ),
        );
}
