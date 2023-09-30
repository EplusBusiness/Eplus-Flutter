import 'package:eplusflutter/widget/drop_down_options/drop_down_has_not_add.dart';
import 'package:eplusflutter/widget/text_customize/TextCustomize.dart';
import 'package:flutter/material.dart';
import 'package:eplusflutter/core/color_constant.dart';
import 'package:eplusflutter/core/text_app_style.dart';
import 'package:iphone_has_notch/iphone_has_notch.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import '../../core/icon_constants.dart';
import '../drop_down_options/drop_down_edit.dart';

class CustomizeNavigationBar extends StatelessWidget {
  const CustomizeNavigationBar({
    Key? key,
    required this.onNextPressed,
    this.isBackground = true,
    this.isVisibleAdd = false,
    this.isVisibleNext = false,
    this.isVisibleSearch = false,
    this.isExportCSV = false,
    this.isVisibleOptions = true,
    required this.title,
    this.onPreviousPressed,
    this.onExportCSVPressed,
    this.onEditPressed,
    this.onDeletePressed,
    this.onSearchPressed,
  }) : super(key: key);

  final bool isBackground;
  final bool isVisibleAdd;
  final bool isVisibleNext;
  final bool isVisibleOptions;
  final bool isExportCSV;
  final bool isVisibleSearch;
  final Function onNextPressed;
  final VoidCallback? onEditPressed;
  final VoidCallback? onPreviousPressed;
  final VoidCallback? onDeletePressed;
  final VoidCallback? onExportCSVPressed;
  final VoidCallback? onSearchPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black26, blurRadius: 5.0, offset: Offset(0.0, 0.5))
        ],
        color: colorYellow,
      ),
      // height: (IphoneHasNotch.hasNotch) ? 100 : 100,
      height: (kIsWeb)
          ? 60
          : (IphoneHasNotch.hasNotch)
              ? 100
              : 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Visibility(
            // visible: true,
            visible: !kIsWeb || IphoneHasNotch.hasNotch,
            child: SizedBox(
              height: 50,
            ),
          ),
          // SizedBox(
          //     height: 50,
          //   ),
          Stack(
            children: [
              SizedBox(
                height: 50,
                child: Center(
                  child: TextCustomize(
                    title: title,
                    textStyle: textStyleApp.bold(size: 20),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    _buildTextBackButton(),
                    const Spacer(),
                    _buildExportCSV(),
                    _buildSearch(),
                    Visibility(
                      visible: isVisibleOptions,
                      child: isVisibleAdd
                          ? DropDownOption(
                              onInsertPressed: () => onNextPressed.call(),
                              onDeletePressed: () => onDeletePressed?.call(),
                              onEditPressed: () => onEditPressed?.call(),
                            )
                          : DropDownOptionNotAdd(
                              onDeletePressed: () => onDeletePressed?.call(),
                              onEditPressed: () => onEditPressed?.call(),
                            ),
                    ),
                    _buildPlusButton(),
                    _buildTextNextButton(),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTextBackButton() {
    return ElevatedButton(
      child: Row(
        children: const [
          Icon(
            Icons.navigate_before,
            color: Colors.black,
          ),
          Text(
            "Back",
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
        ],
      ),
      onPressed: () => onPreviousPressed?.call(),
      style: ElevatedButton.styleFrom(
        shadowColor: Colors.transparent,
        backgroundColor: colorYellow,
      ),
    );
  }

  Widget _buildExportCSV() {
    return Visibility(
      visible: isExportCSV,
      child: IconButton(
        onPressed: () => onExportCSVPressed?.call(),
        icon: Image.asset(
          icExportCsv,
          width: 35,
          height: 35,
        ),
      ),
    );
  }

  Widget _buildSearch() {
    return Visibility(
      visible: isVisibleSearch,
      child: IconButton(
        onPressed: () => onSearchPressed?.call(),
        icon: const Icon(
          Icons.search,
          size: 30,
        ),
      ),
    );
  }

  Widget _buildPlusButton() {
    return Visibility(
      visible: isVisibleAdd && !isVisibleOptions,
      // maintainSize: true,
      maintainAnimation: true,
      maintainState: true,
      child: IconButton(
        onPressed: () => onNextPressed.call(),
        icon: Image.asset(
          icPlus,
          height: 22,
          width: 22,
        ),
      ),
    );
  }

  Widget _buildTextNextButton() {
    return Visibility(
      visible: isVisibleNext && !isVisibleOptions,
      // maintainSize: true,
      maintainAnimation: true,
      maintainState: true,
      child: ElevatedButton(
        child: Row(
          children: const [
            Text(
              "Next",
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            Icon(
              Icons.navigate_next,
              color: Colors.black,
            ),
          ],
        ),
        onPressed: () {
          onNextPressed.call();
        },
        style: ElevatedButton.styleFrom(
          shadowColor: Colors.transparent,
          backgroundColor: colorYellow,
        ),
      ),
    );
  }
}
