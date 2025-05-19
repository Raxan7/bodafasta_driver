
import 'package:bodafasta_driver/features/uber_trips_history_feature/data/models/driver_model.dart';
import 'package:bodafasta_driver/features/uber_trips_history_feature/domain/entities/trip_entity.dart';

abstract class TripHistoryRepository{
  Stream<List<TripEntity>> tripDriverStream(bool isHistory,String driverId, String? tripId);
  Future<void> updateDriverAndTrip(TripEntity tripDriver,DriverModel driverModel,bool isDriver);
}