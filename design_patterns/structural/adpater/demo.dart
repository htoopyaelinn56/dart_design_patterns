// https://refactoring.guru/design-patterns/adapter

import 'external_hard_disk.dart';
import 'internal_hard_disk.dart';
import 'mother_board.dart';

void main() {
  final motherBoard = MotherBoard();
  final hdd = InternalHardDisk();
  motherBoard.readFromSataPort(hdd);

  final externalHardDisk = ExternalHardDisk();
  final hardDiskObjectAdapter = HardDiskObjectAdapter(externalHardDisk);
  motherBoard.readFromSataPort(hardDiskObjectAdapter);

  final hardDiskClassAdapter = HardDiskClassAdapter();
  motherBoard.readFromSataPort(hardDiskClassAdapter);
}
