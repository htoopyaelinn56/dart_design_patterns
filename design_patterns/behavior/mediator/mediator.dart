import 'vehicle.dart';

abstract class Mediator {
  void parkVehicle(Vehicle vehicle);
  void removeVehicle(Vehicle vehicle);
  void drawParking();
}