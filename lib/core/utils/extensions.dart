import 'package:anime_live/core/utils/regex.dart';
import 'package:flutter/material.dart';

extension ExtractKeyValue on Key {
  extractKeyValue() {
    final match = Regex.extractKeyValue.firstMatch(toString());
    return match?.group(1) ?? '';
  }
}
