import 'package:cloud_firestore/cloud_firestore.dart';

/// Utility function to convert various timestamp formats to DateTime including Firestore Timestamps, Unix Epoch integers, and ISO8601 strings.
/// @param timestamp - The input timestamp which can be a Firestore Timestamp, an integer representing Unix Epoch time, or an ISO8601 string.
/// @returns A DateTime object representing the input timestamp.
/// @throws ArgumentError if the input timestamp format is unsupported or if an ISO8601 string cannot be parsed.
DateTime convertToDateTime(dynamic timestamp) {
  if (timestamp is Timestamp) {
    return timestamp.toDate(); // Firestore Timestamp → DateTime
  } else if (timestamp is int) {
    return DateTime.fromMillisecondsSinceEpoch(
      timestamp,
    ); // Unix Epoch → DateTime
  } else if (timestamp is String) {
    final timeReturned = DateTime.tryParse(timestamp);
    if (timeReturned == null) {
      throw ArgumentError(
        'ConvertToDatetime: Invalid date string format: $timestamp',
      );
    }
    return timeReturned; // ISO8601 String → DateTime
  } else {
    throw ArgumentError('Unsupported timestamp format: $timestamp');
  }
}

/// Utility function to convert a number of days into a human-readable time period name.
/// @param day - The number of days to convert.
/// @returns A string representing the time period corresponding to the input number of days, such as "Day", "Week", "Month", or a pluralized form for multiple weeks or months.
String numDaysToAmountOfTimeName(int day) {
  if (day == 1) {
    return "Day";
  }
  if (day == 7) {
    return "Week";
  }
  if (day == 30) {
    return "Month";
  }
  if (day % 30 == 0) {
    return "${(day / 30).toInt()} Months";
  }
  if (day % 7 == 0) {
    return "${(day / 7).toInt()} Weeks";
  }
  return "$day Days";
}
