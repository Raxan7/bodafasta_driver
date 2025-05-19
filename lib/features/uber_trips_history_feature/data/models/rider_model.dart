
import 'package:bodafasta_driver/features/uber_trips_history_feature/domain/entities/rider_entity.dart';

class RiderModel extends RiderEntity {
  const RiderModel({required this.name, required this.rider_id,required this.mobile}) : super(name: name,rider_id:rider_id,mobile: mobile);

  factory RiderModel.fromJson(Map<dynamic, dynamic> value, String id) {
    return RiderModel(
      name: value['name'],
      rider_id: id,
      mobile: value['mobile'],
    );
  }

  @override
  final String? name;
  @override
  final String? rider_id;
  @override
  final String? mobile;
}
