import 'package:flutter/cupertino.dart';

import 'package:netflix/core/responsive.dart';
import 'package:netflix/presentation/pages/search/widgets/search_idle.dart';

import '../../../core/constant.dart';

class ScreenSearchPage extends StatelessWidget {
  const ScreenSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(AppLayout.getHeight(8)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CupertinoSearchTextField(
              style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
              suffixMode: OverlayVisibilityMode.editing,
              itemColor: CupertinoColors.secondaryLabel,
              prefixIcon: Padding(
                padding: EdgeInsets.all(AppLayout.getHeight(8.0)),
                child: const Icon(
                  CupertinoIcons.search,
                  color: Color.fromARGB(255, 117, 116, 116),
                ),
              ),
              suffixIcon: const Icon(CupertinoIcons.xmark_circle_fill),
            ),
            kheight,
            const Expanded(child: SearchIdleWidget()),
            // const Expanded(child: SearchResult()),
          ],
        ),
      ),
    );
  }
}
