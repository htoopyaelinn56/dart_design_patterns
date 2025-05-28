import 'device.dart';

class Tv implements Device {
  bool isTurnedOn = false;

  @override
  void turnOff() {
    isTurnedOn = false;
  }

  @override
  void turnOn() {
    isTurnedOn = true;
  }

  @override
  bool isEnabled() {
    return isTurnedOn;
  }
}
