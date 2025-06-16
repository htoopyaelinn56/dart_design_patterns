import 'vehicle.dart';

class Truck extends Vehicle {
  Truck({required super.licensePlate, required super.parkingMediator});

  @override
  void depart() {
    parkingMediator.removeVehicle(this);
  }

  @override
  void park() {
    parkingMediator.parkVehicle(this);
  }
}
