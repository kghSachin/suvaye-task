import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:suvayetask/constants/constants.dart';
import 'package:suvayetask/views/widgets/page_view_container.dart';
import 'package:suvayetask/views/widgets/row_dots.dart';

class PageViewFile extends ConsumerStatefulWidget {
  const PageViewFile({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PageViewFileState();
}

class _PageViewFileState extends ConsumerState<PageViewFile> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 146,
      child: Stack(
        children: [
          PageView(
            onPageChanged: (value) =>
                {ref.read(indexProvider.notifier).update((state) => value)},
            children: const [
              PageViewContainer(
                color: Constants.pageContainerColor,
              ),
              PageViewContainer(
                color: Constants.gridFourColor,
              ),
              PageViewContainer(
                color: Constants.gridOneColor,
              )
            ],
          ),
        ],
      ),
    );
  }
}
