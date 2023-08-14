import 'dart:io';

extension FileExtension on File? {
  double get getFileSizeInMb {
    if (this == null) {
      return 0;
    }
    return this!.lengthSync() / (1024 * 1024);
  }
}
