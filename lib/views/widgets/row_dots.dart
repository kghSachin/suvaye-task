import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:suvayetask/constants/constants.dart';

class RowDots extends ConsumerWidget {
  const RowDots({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(indexProvider);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            ref.read(indexProvider.notifier).update((state) => 0);
          },
          child: CircleAvatar(
            radius: 4,
            backgroundColor: ref.read(indexProvider) == 0
                ? Constants.pageContainerDotColor
                : Colors.grey[250],
          ),
        ),
        const SizedBox(
          width: 6,
        ),
        InkWell(
          onTap: () {
            ref.read(indexProvider.notifier).update((state) => 1);
          },
          child: CircleAvatar(
            radius: 4,
            backgroundColor: ref.read(indexProvider) == 1
                ? Constants.pageContainerDotColor
                : Colors.grey[250],
          ),
        ),
        const SizedBox(
          width: 6,
        ),
        InkWell(
          onTap: () {
            ref.read(indexProvider.notifier).update((state) => 2);
          },
          child: CircleAvatar(
            radius: 4,
            backgroundColor: ref.read(indexProvider) == 2
                ? Constants.pageContainerDotColor
                : Colors.grey[250],
          ),
        ),
      ],
    );
  }
}

final indexProvider = StateProvider<int>((ref) {
  return 0;
});
