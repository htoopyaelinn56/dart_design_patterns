import 'vehicle.dart';

class Bus extends Vehicle {
  Bus({required super.licensePlate, required super.parkingMediator});

  @override
  void depart() {
    parkingMediator.removeVehicle(this);
  }

  @override
  void park() {
    parkingMediator.parkVehicle(this);
  }
}
