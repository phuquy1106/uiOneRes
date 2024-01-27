import 'package:flutter/material.dart';

class MenuDropdownWidget extends StatefulWidget {
  const MenuDropdownWidget({
    Key? key,
    // required this.dropdownItems,
    this.dropdownWidth,
    this.dropdownBackgroundColor,
    this.onPressed,
    required this.text,
    required this.functions,
    this.buttonTitleStyle,
    required this.child,
  }) : super(key: key);

  /// Title for the dropdown
  ///
  /// Only accepts string value

  /// To Style the [buttonTitle] property
  ///
  /// Only accepts [TextStyle]
  final TextStyle? buttonTitleStyle;
  final Widget child;

  /// To customise the dropdown menu with
  ///
  /// by default width is 200.0
  /// Only acceps [double] value
  final double? dropdownWidth;

  /// Use to change the dropdown background color
  ///
  /// Only accepts [Color] class
  /// It's an optional field
  /// By default color is [grey]
  final Color? dropdownBackgroundColor;

  /// Dropdown items to be shown in the menu
  ///
  /// expects list of [ListTile] class
  // final List<ListTile> dropdownItems;

  final void Function(FocusNode)? onPressed;

  final List<Function> functions;
  final List<Text> text;

  @override
  State<MenuDropdownWidget> createState() => _MenuDropdownState();
}

class _MenuDropdownState extends State<MenuDropdownWidget> {
  OverlayEntry? _overlayEntry;
  FocusNode textFocusNode = FocusNode();
  bool showOverlay = false;

  @override
  void initState() {
    super.initState();
    textFocusNode.addListener(() {
      if (textFocusNode.hasFocus) {
        _overlayEntry = _createOverlayEntry();
        Overlay.of(context).insert(_overlayEntry!);
        // _showOverlay(context, 0);
      } else {
        removeOverlay();
      }
    });
  }

  void removeOverlay() {
    _overlayEntry!.remove();
    showOverlay = false;
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
        focusNode: textFocusNode,
        onHover: (val) {
          if (val) {
            textFocusNode.requestFocus();
            showOverlay = true;
          } else {
            textFocusNode.unfocus();
          }
        },
        onPressed: () {
          showOverlay = !showOverlay;
          if (showOverlay) {
            textFocusNode.requestFocus();
          } else {
            textFocusNode.unfocus();
          }
        },
        style: const ButtonStyle(
            overlayColor: MaterialStatePropertyAll(Colors.yellow)),
        child: widget.child);
  }

  OverlayEntry _createOverlayEntry() {
    RenderBox renderBox = context.findRenderObject() as RenderBox;
    var offset = renderBox.localToGlobal(Offset.zero);

    return OverlayEntry(
        maintainState: true,
        builder: (context) => Positioned(
              left: offset.dx + 50,
              top: offset.dy,
              width: widget.dropdownWidth ?? 200,
              child: TextButton(
                onPressed: () {},
                onHover: (val) {
                  if (val && showOverlay) {
                    textFocusNode.requestFocus();
                  } else {
                    textFocusNode.unfocus();
                  }
                },
                child: Material(
                  color: widget.dropdownBackgroundColor ?? Colors.grey,
                  elevation: 4.0,
                  child: ListView(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      children: widget.text
                          .map<Widget>((Text text) => ListTile(
                              onTap: () async {
                                int iconIndex = widget.text.indexOf(text);
                                if (iconIndex >= 0 &&
                                    iconIndex <= (widget.functions.length)) {
                                  widget.functions[iconIndex].call();
                                }
                                textFocusNode.unfocus();
                              },
                              title: text))
                          .toList()),
                ),
              ),
            ));
  }
}
