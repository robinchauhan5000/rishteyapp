import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rishtey/utils/app_config.dart';

import '../../controller/auth_controller.dart';
import '../../controller/search_controller.dart';
import '../../utils/app_button.dart';

class QuickSearch extends StatefulWidget {
  @override
  State<QuickSearch> createState() => _QuickSearchState();
}

class _QuickSearchState extends State<QuickSearch> {
  RangeValues values = const RangeValues(1, 100);
  RangeLabels labels = const RangeLabels('1', "100");
  AuthController? authController;
  String? selectedValue;
  String? selectedCaste;
  SearchController? searchController;
  @override
  void initState() {
    authController = Provider.of<AuthController>(context, listen: false);
    Future.delayed(const Duration(microseconds: 100), () {
      selectedValue = "Hindu";
      selectedCaste = "Brahmin";
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          children: const [
            Text(
              "Quick Search",
            )
          ],
        ),
        actions: const [
          Icon(Icons.notifications_active),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.settings),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: AppConfig.height * 0.05,
            ),
            const Text(
              "Filter By Age",
              style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
            ),
            RangeSlider(
                divisions: 10,
                activeColor: Colors.red[700],
                inactiveColor: Colors.red[300],
                min: 1,
                max: 100,
                values: values,
                labels: labels,
                onChanged: (value) {
                  print("START: ${value.start}, End: ${value.end}");
                  setState(() {
                    values = value;
                    labels = RangeLabels(
                        "Age-${value.start.toInt().toString()}",
                        "Age-${value.end.toInt().toString()}");
                  });
                }),
            const Text(
              "Religion",
              style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
            ),
            Consumer<AuthController>(builder: (context, controller, child) {
              return controller.isLoading
                  ? const CircularProgressIndicator()
                  : Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: Colors.grey)),
                      child: DropdownButton(
                        borderRadius: BorderRadius.circular(10.0),
                        onChanged: (newValue) {
                          setState(() {
                            selectedValue = newValue.toString();
                          });
                        },
                        value: selectedValue,
                        items: controller.religionModel!.religions!.map((item) {
                          return DropdownMenuItem(
                            child: Text(item.religion!.toString()),
                            value: item.religion!.toString(),
                          );
                        }).toList(),

                        isExpanded:
                            true, //make true to take width of parent widget
                        underline: Container(), //empty line
                        style:
                            const TextStyle(fontSize: 18, color: Colors.black),
                        dropdownColor: Colors.white,
                        iconEnabledColor: Colors.black,
                        hint: const Text("Select Your Religion"), //Icon color
                      ));
            }),
            const Text(
              "Community",
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
            ),
            Consumer<AuthController>(builder: (context, controller, child) {
              return controller.isLoading
                  ? const CircularProgressIndicator()
                  : Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: Colors.grey)),
                      child: DropdownButton(
                        borderRadius: BorderRadius.circular(10.0),
                        onChanged: (newValue) {
                          setState(() {
                            selectedCaste = newValue.toString();
                          });
                        },
                        value: selectedCaste,
                        items: controller.castesModel!.casts!.map((item) {
                          return DropdownMenuItem(
                            child: Text(item.cast!.toString()),
                            value: item.cast!.toString(),
                          );
                        }).toList(),

                        isExpanded:
                            true, //make true to take width of parent widget
                        underline: Container(), //empty line
                        style:
                            const TextStyle(fontSize: 18, color: Colors.black),
                        dropdownColor: Colors.white,
                        iconEnabledColor: Colors.black,
                        hint: const Text("Select Your Religion"), //Icon color
                      ));
            }),
            const Expanded(
              child: SizedBox(),
            ),
            Consumer<SearchController>(builder: (context, controller, child) {
              return AppButton(
                onClick: () {
                  controller.quickSearch(context, values.start, values.end,
                      selectedValue, selectedCaste);
                },
                textWidet: controller.isLoading
                    ? CircularProgressIndicator()
                    : Text(
                        "Apply Filter",
                        style: TextStyle(color: Colors.white),
                      ),
              );
            })
          ],
        ),
      ),
    );
  }
}
