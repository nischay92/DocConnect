import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

/// Converts Firestore [Timestamp]/[DateTime]/[String] values into [DateTime].
class TimestampDateTimeConverter implements JsonConverter<DateTime?, Object?> {
  const TimestampDateTimeConverter();

  @override
  DateTime? fromJson(Object? json) {
    if (json == null) return null;
    if (json is Timestamp) return json.toDate();
    if (json is DateTime) return json;
    if (json is String) return DateTime.tryParse(json);
    throw ArgumentError('Cannot convert $json to DateTime');
  }

  @override
  Object? toJson(DateTime? object) {
    if (object == null) return null;
    return Timestamp.fromDate(object);
  }
}

/// Converts Firestore [GeoPoint] values. Accepts map form when deserializing
/// (useful for emulator export/REST payloads).
class GeoPointConverter implements JsonConverter<GeoPoint?, Object?> {
  const GeoPointConverter();

  @override
  GeoPoint? fromJson(Object? json) {
    if (json == null) return null;
    if (json is GeoPoint) return json;
    if (json is Map<String, dynamic>) {
      final latitude = json['latitude'] ?? json['_latitude'];
      final longitude = json['longitude'] ?? json['_longitude'];
      if (latitude is num && longitude is num) {
        return GeoPoint(latitude.toDouble(), longitude.toDouble());
      }
    }
    throw ArgumentError('Cannot convert $json to GeoPoint');
  }

  @override
  Object? toJson(GeoPoint? object) => object;
}
