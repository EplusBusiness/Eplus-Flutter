import 'package:flutter/material.dart';
import '../../core/color_constant.dart';
import '../../core/icon_constants.dart';
import '../../core/string_constant.dart';

class SearchBar extends StatefulWidget {
  const SearchBar(
      {Key? key,
      required this.createFolder,
      required this.onSubmit,
      this.isVisibleCreate = true})
      : super(key: key);

  final VoidCallback createFolder;
  final bool isVisibleCreate;
  final Function(String) onSubmit;

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  FocusNode? _defaultFocusNode;
  late TextEditingController _searchController;
  bool isShowPrefixIcon = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _searchController = TextEditingController();
    _defaultFocusNode = FocusNode();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _searchController.dispose();
    _defaultFocusNode?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.isVisibleCreate ? backgroundPrimary : Colors.transparent,
      height: 100,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade200.withOpacity(0.8),
                borderRadius: BorderRadius.circular(18),
              ),
              child: TextField(
                focusNode: _defaultFocusNode,
                controller: _searchController,
                onSubmitted: (value) {
                  if (value.isNotEmpty) {
                    widget.onSubmit.call(value);
                  }
                },
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
                  focusColor: Colors.transparent,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: searchString,
                  prefixIcon: IconButton(
                    onPressed: () {
                      final text = _searchController.text;
                      widget.onSubmit.call(text);
                    },
                    icon: const Icon(
                      Icons.search_sharp,
                      color: Colors.grey,
                    ),
                  ),
                  suffixIcon: isShowPrefixIcon
                      ? IconButton(
                          disabledColor: Colors.red,
                          icon: const Icon(Icons.clear),
                          onPressed: () {
                            _searchController.clear();
                            searchInputChanged();
                          },
                        )
                      : null,
                ),
                onChanged: (value) {
                  setState(() {
                    searchInputChanged();
                  });
                },
              ),
            ),
          ),
          Visibility(
            visible: widget.isVisibleCreate,
            child: SizedBox(
              width: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(
                    width: 15,
                  ),
                  IconButton(
                    onPressed: () {
                      widget.createFolder.call();
                    },
                    icon: Image.asset(
                      icAddFolder,
                      width: 35,
                      height: 35,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void searchInputChanged() {
    if (_searchController.text.isNotEmpty) {
      isShowPrefixIcon = true;
    } else {
      isShowPrefixIcon = false;
    }

    setState(() {});
  }
}
