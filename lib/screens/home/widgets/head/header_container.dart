import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:learn_smart/modal/compliation_search.dart';
import 'package:lottie/lottie.dart';

import '../../../../data/search_list.dart';

final lottie = Lottie.network(
  "https://lottie.host/c642558f-e7e2-465c-86a8-e215e9fc5564/Hpqm3CtUTX.json",
);

class HeaderContainer extends StatelessWidget {
  const HeaderContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 40,
        ),
        Row(
          children: [
            const Expanded(flex: 3, child: HeaderBody()),
            Expanded(
              flex: 2,
              child: lottie,
            )
          ],
        )
      ],
    );
  }
}

// for mobile
class MobileHeaderContainer extends StatelessWidget {
  const MobileHeaderContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [lottie, const HeaderBody()],
    );
  }
}

class HeaderBody extends StatefulWidget {
  const HeaderBody({
    super.key,
  });

  @override
  State<HeaderBody> createState() => _HeaderBodyState();
}

class _HeaderBodyState extends State<HeaderBody> {
  final List<CompilationSearch> searchListRoute = [];

  @override
  void initState() {
    super.initState();
    initData();
  }

  void initData() {
    for (var elements in searchList) {
      elements.forEach((element) {
        CompilationSearch item = CompilationSearch(
            "${element.subTopics} ${element.topics}", element.pages);
        searchListRoute.add(item);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AutoSizeText(
          "Learn Today",
          maxLines: 1,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 53,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const AutoSizeText(
          "Live another day",
          maxLines: 1,
          style: TextStyle(fontSize: 53),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Welcome to Code Pro, where our motto is 'Learn today, Live another day.' We believe that continuous learning empowers you to face tomorrow's challenges with confidence. Dive into our resources, expand your knowledge, and prepare yourself for a brighter future..",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black54,
            letterSpacing: 0.5,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        _buildSearchBar(),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }

  Widget _buildSearchBar() {
    return Autocomplete<CompilationSearch>(
      optionsMaxHeight: 400,
      fieldViewBuilder: (
        context,
        textEditingController,
        focusNode,
        onFieldSubmitted,
      ) {
        return Container(
          padding: const EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Center(
            child: TextField(
              controller: textEditingController,
              focusNode: focusNode,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: Theme.of(context).colorScheme.primary,
                ),
                hintText: "Search here...",
                focusedBorder:
                    UnderlineInputBorder(borderSide: BorderSide.none),
                enabledBorder:
                    UnderlineInputBorder(borderSide: BorderSide.none),
              ),
            ),
          ),
        );
      },
      optionsBuilder: (TextEditingValue textEditingValue) {
        if (textEditingValue.text.isEmpty) {
          return [];
        }
        return searchListRoute.where((searchCls) {
          return searchCls.searchText
              .toLowerCase()
              .contains(textEditingValue.text.toLowerCase());
        });
      },
      displayStringForOption: (option) => option.searchText,
      onSelected: (searchCls) {
        var page = searchCls.pageRoute;
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => page,
          ),
        );
      },
      optionsViewBuilder: (
        BuildContext context,
        Function(CompilationSearch) onSelected,
        Iterable<CompilationSearch> options,
      ) {
        return Container(
          margin: const EdgeInsets.only(top: 15, right: 50, bottom: 400),
          child: Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(20),
            child: ListView(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              children: options.map((option) {
                return ListTile(
                  title: Text(option.searchText),
                  onTap: () {
                    onSelected(option);
                  },
                );
              }).toList(),
            ),
          ),
        );
      },
    );
  }
}
