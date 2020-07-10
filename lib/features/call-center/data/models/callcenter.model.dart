import 'package:flutter/material.dart';

class CallCenterModel {
  final String label;
  final List<String> contacts;

  CallCenterModel({
    @required this.label,
    @required this.contacts,
  });
}
