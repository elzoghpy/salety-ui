// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_typing_uninitialized_variables, must_be_immutable
import 'package:flutter/material.dart';
import 'package:selaty/constants/resources/mycolors.dart';
import 'package:selaty/presentation/widgets/widgets.dart';

class SearchScreen extends StatelessWidget {
  var list;

  SearchScreen({Key? key}) : super(key: key);

  var searshController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.hikightgrey,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: defaultFormFaild(
                  controller: searshController,
                  type: TextInputType.text,
                  onchange: (value) {},
                  validate: (String? value) {
                    if (value!.isEmpty) {
                      return 'search must not be empty';
                    }
                    return null;
                  },
                  Label: 'Search',
                  prefix: Icons.search),
            ),
          )
        ],
      ),
    );
  }
}
