
import 'package:bodafasta_driver/features/uber_trips_history_feature/data/models/driver_model.dart';

abstract class DriverLocationRepository{
  Stream<DriverModel> tripDriverStream(String? driverId);
  Future<void> updateDriver(DriverModel driverModel);

}