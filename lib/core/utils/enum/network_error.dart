enum NetworkError {
  network,
  server,
  unknown;

  String get message {
    switch (this) {
      case NetworkError.network:
        return "Network Error";
      case NetworkError.server:
        return "Network Server";
      case NetworkError.unknown:
        return "Network Unknown";
    }
  }
}
