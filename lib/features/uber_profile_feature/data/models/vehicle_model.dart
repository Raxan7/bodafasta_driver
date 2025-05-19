import 'package:bodafasta_driver/features/uber_profile_feature/domain/entities/vehicle_entity.dart';

class VehicleModel extends VehicleEntity {
  VehicleModel({
    required this.comapany,
    required this.number_plate,
    this.color,
    this.model
  }) : super();

  factory VehicleModel.fromJson(Map<dynamic, dynamic> value) {
    return VehicleModel(
        comapany: value['company'],
        number_plate: value['number_plate'],
        color: value['color'],
        model: value['model']

    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'company': comapany,
      'number_plate': number_plate,
      'color': color,
      'model':model

    };
  }

  @override
  final String? color;
  @override
  final String? comapany;
  @override
  final String? model;
  @override
  final String? number_plate;

}