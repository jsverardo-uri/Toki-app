import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

/// Custom function to convert a slider integer output into a double
int sliderCoversion(double? sliderScore) {
  // I need a basic function to convert a double to an integer. Both the input and output should be somewhere from 0-10, inclusive. Input will be a double and should not have any decimal points, but the function should account for them and round up if found.
  if (sliderScore == null) return 0; // Handle null input
  int roundedScore = sliderScore.ceil(); // Round up
  return roundedScore.clamp(0, 10); // Ensure the output is between 0 and 10
}
