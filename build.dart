import 'package:web_ui/component_build.dart';
import 'dart:io';
import 'dart:async';

void main() {
  Future task = build(new Options().arguments, ['web/index.html']);
}
