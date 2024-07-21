import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart' hide Debouncer;
import 'package:pragma_breed_api/src/shared/utils/utils.dart';

class SearcherWidget extends StatefulWidget {
  const SearcherWidget({super.key, required this.onQueryChanged});

  final ValueChanged<String> onQueryChanged;

  @override
  State<SearcherWidget> createState() => _SearcherWidgetState();
}

class _SearcherWidgetState extends State<SearcherWidget> {
  final debouncer = Debouncer(milliseconds: 700);

  void search(String value) {
    debouncer.run(() {
      widget.onQueryChanged(value);
    });
  }

  @override
  void dispose() {
    debouncer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: search,
      decoration: const InputDecoration(
        labelText: 'Search',
        suffixIcon: Icon(Icons.search),
      ),
    ).paddingBottom(16.0);
  }
}
