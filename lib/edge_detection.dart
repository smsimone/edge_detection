import 'dart:async';

import 'package:flutter/services.dart';

class EdgeDetection {
  static const MethodChannel _channel = const MethodChannel('edge_detection');

  /// [showGalleryPicker] indicates if it should show the [IconButton] used to
  /// select an image from the gallery.
  static Future<String?> detectEdge({
    bool showGalleryPicker = false,
  }) async {
    final String? imagePath = await _channel.invokeMethod('edge_detect', {
      'show_gallery_picker': showGalleryPicker,
    });
    return imagePath;
  }
}
