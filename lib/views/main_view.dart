import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:suvayetask/views/widgets/grid_box.dart';
import 'package:suvayetask/views/widgets/page_view.dart';
import 'package:suvayetask/views/widgets/row_dots.dart';
import '../constants/constants.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 40,
                    width: 40,
                    child: Image.asset(
                      "assets/icons/company.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    Constants.companyName,
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  "assets/icons/bell-02.svg",
                  // color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: mainPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 24,
              ),
              const Text(
                Constants.helloMessage,
                style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff371B34),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  const Text(Constants.services,
                      style: TextStyle(
                        fontFamily: "Inter",
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      )),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: const Row(
                      children: [
                        Text(Constants.seeMore,
                            style: TextStyle(
                              fontFamily: "Inter",
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.green,
                            )),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.green,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const SizedBox(
                height: 146,
                child: PageViewFile(),
              ),
              const SizedBox(
                height: 12,
              ),
              const RowDots(),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  const Text(Constants.outlook,
                      style: TextStyle(
                        fontFamily: "Inter",
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      )),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: const Row(
                      children: [
                        Text(Constants.seeMore,
                            style: TextStyle(
                              fontFamily: "Inter",
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.green,
                            )),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.green,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 24,
                    crossAxisSpacing: 16,
                    crossAxisCount: 2,
                    childAspectRatio: 2.4),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  GridContainer(
                    name: Constants.apps,
                    onPressed: () {},
                    color: Constants.gridOneColor,
                    image: Image.asset(
                      "assets/icons/mobile.png",
                      height: 21,
                      width: 21,
                    ),
                  ),
                  GridContainer(
                    name: Constants.website,
                    onPressed: () {},
                    color: Constants.gridTwoColor,
                    image: Image.asset(
                      "assets/icons/website.png",
                      height: 21,
                      width: 21,
                    ),
                  ),
                  GridContainer(
                    name: Constants.design,
                    onPressed: () {},
                    color: Constants.gridThreeColor,
                    image: Image.asset(
                      "assets/icons/tesro.png",
                      height: 21,
                      width: 21,
                    ),
                  ),
                  GridContainer(
                    name: Constants.consultant,
                    onPressed: () {},
                    color: Constants.gridFourColor,
                    image: Image.asset(
                      "assets/icons/consultant.png",
                      height: 21,
                      width: 21,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Consumer(
        builder: (context, ref, child) {
          ref.watch(navigationIndexProvider);
          return SizedBox(
            height: 97,
            child: BottomNavigationBar(
                currentIndex: ref.read(navigationIndexProvider),
                selectedItemColor: Colors.purple[700],
                onTap: (value) {
                  ref
                      .read(navigationIndexProvider.notifier)
                      .update((state) => value);
                },
                items: [
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: SvgPicture.asset(
                        "assets/icons/calendar.svg",
                        // ignore: deprecated_member_use
                        color: ref.read(navigationIndexProvider) == 0
                            ? Colors.purple[700]
                            : Colors.grey[250],
                      ),
                    ),
                    label: "Today",
                  ),
                  BottomNavigationBarItem(
                      icon: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Image.asset(
                          "assets/icons/menu.png",
                          height: 21,
                          width: 21,
                          color: ref.read(navigationIndexProvider) == 1
                              ? Colors.purple[700]
                              : Colors.grey[250],
                        ),
                      ),
                      label: "Services"),
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: SvgPicture.asset(
                        "assets/icons/chatt.svg",
                        // ignore: deprecated_member_use
                        color: ref.read(navigationIndexProvider) == 2
                            ? Colors.purple[700]
                            : Colors.grey[250],
                      ),
                    ),
                    label: "Chat",
                  ),
                ]),
          );
        },
      ),
    );
  }
}

final navigationIndexProvider = StateProvider<int>(
  (ref) {
    return 1;
  },
);
