import 'vehicle.dart';

class Car extends Vehicle {
  Car({required super.licensePlate, required super.parkingMediator});

  @override
  void depart() {
    parkingMediator.removeVehicle(this);
  }

  @override
  void park() {
    parkingMediator.parkVehicle(this);
  }
}
