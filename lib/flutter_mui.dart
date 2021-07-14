
import 'dart:async';

import 'package:flutter/services.dart';

class FlutterMui {
  static const MethodChannel _channel =
      const MethodChannel('flutter_mui');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
