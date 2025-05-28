import 'device.dart';
import 'remote.dart';

class BasicRemote implements Remote {
  @override
  Device device;

  BasicRemote(this.device);

  @override
  void turnOff() {
    device.turnOff();
  }

  @override
  void turnOn() {
    device.turnOn();
  }
}
