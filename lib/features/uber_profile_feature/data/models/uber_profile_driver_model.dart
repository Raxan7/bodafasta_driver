import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:bodafasta_driver/features/uber_profile_feature/domain/entities/driver_entity.dart';

class DriverProfileModel extends DriverEntity {
  @override
  final String? name;
  @override
  final String? email;
  @override
  final bool? is_online;
  @override
  final String? mobile;
  @override
  final String? overall_rating;
  @override
  final String? profile_img;
  @override
  final int? wallet;
  @override
  final DocumentReference? vehicle;
  @override
  final GeoPoint? current_location;
  @override
  final String? driver_id;
  @override
  final String? city;

  const DriverProfileModel(
      {this.name,
      this.email,
      this.mobile,
      this.overall_rating,
      this.profile_img,
      this.wallet,
      this.is_online,
      this.vehicle,
      this.current_location,
      this.driver_id,
      this.city});

  Map<String, dynamic> toDocument() {
    return {
      "name": name,
      "email": email,
      "mobile": mobile,
      "overall_rating": overall_rating,
      "profile_img": profile_img,
      "wallet": wallet,
      "vehicle": vehicle,
      "current_location": current_location,
      "driver_id": driver_id,
      "is_online":is_online,
      "city":city
    };
  }

  factory DriverProfileModel.fromSnapShot(DocumentSnapshot documentSnapshot) {
    return DriverProfileModel(
      name: documentSnapshot.get("name"),
      email: documentSnapshot.get("email"),
      mobile: documentSnapshot.get("mobile"),
      overall_rating: documentSnapshot.get("overall_rating"),
      profile_img: documentSnapshot.get("profile_img"),
      city: documentSnapshot.get("city"),
      wallet: documentSnapshot.get("wallet"),
      vehicle: documentSnapshot.get("vehicle"),
      current_location: documentSnapshot.get("current_location"),
      driver_id: documentSnapshot.get("driver_id"),
      is_online: documentSnapshot.get("is_online"),
    );
  }
}
