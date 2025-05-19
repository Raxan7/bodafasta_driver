import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:bodafasta_driver/features/uber_profile_feature/domain/entities/driver_entity.dart';

class DriverModel extends DriverEntity {
  const DriverModel(
      {required this.is_online,
      required this.driver_id,
      this.profile_img,
      this.current_location})
      : super(
            is_online: is_online,
            driver_id: driver_id,
            profile_img: profile_img,
            current_location: current_location);

  factory DriverModel.fromJson(Map<dynamic, dynamic> value) {
    return DriverModel(
        is_online: value['is_online'],
        driver_id: value['driver_id'],
        profile_img: value['profile_img'],
        current_location: value['current_location']);
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'is_online': is_online,
      'driver_id': driver_id,
      'profile_img': profile_img,
      'current_location': current_location
    };
  }

  @override
  final bool? is_online;
  @override
  final String? driver_id;
  @override
  final String? profile_img;
  @override
  final GeoPoint? current_location;
}

class DriverLocationModel extends DriverModel {
  @override
  final bool? is_online;
  @override
  final String? driver_id;
  @override
  final GeoPoint? current_location;

  const DriverLocationModel(
      {this.is_online, this.driver_id, this.current_location})
      : super(
            driver_id: driver_id,
            current_location: current_location,
            is_online: is_online);

  factory DriverLocationModel.fromJson(Map<dynamic, dynamic> value) {
    return DriverLocationModel(
        is_online: value['is_online'],
        driver_id: value['driver_id'],
        current_location: value['current_location']);
  }

  @override
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'is_online': is_online,
      'driver_id': driver_id,
      'current_location': current_location
    };
  }
}
