import 'internal_hard_disk.dart';

class MotherBoard {
  void readFromSataPort(InternalHardDisk hdd) {
    final data = hdd.getData();
    print('Computer is reading from hard disk: $data');
  }
}
