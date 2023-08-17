import 'package:flutter_riverpod/flutter_riverpod.dart';

final navigationIndexProvider = StateProvider<int>(
  (ref) {
    return 1;
  },
);
