// https://refactoring.guru/design-patterns/mediator

import 'bus.dart';
import 'car.dart';
import 'parking_mediator.dart';
import 'truck.dart';

void main() {
  final parking = ParkingMediator();

  final car = Car(licensePlate: 'CAR123', parkingMediator: parking);
  final truck = Truck(licensePlate: 'TRUCK789', parkingMediator: parking);
  final bus = Bus(licensePlate: 'BUS456', parkingMediator: parking);

  car.park();
  truck.park();
  bus.park();

  parking.drawParking();

  car.depart();
  truck.depart();
  bus.depart();

  parking.drawParking();
}
