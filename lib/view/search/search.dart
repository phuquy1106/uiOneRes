library animated_search_bar;

import 'package:flutter/material.dart';
import 'package:oneres_newuiversion/utils/colorutils.dart';
import 'package:oneres_newuiversion/view/search/widget/search_widget.dart';
// import 'package:oneres_newuiversion/view/search/widget/search_widget.dart';
import 'package:oneres_newuiversion/view/search/widget/widget.dart';

class ExpandableSearchBar extends StatefulWidget {
  const ExpandableSearchBar({
    Key? key,
    required this.onTap,
    required this.hintText,
    this.animationDuration = const Duration(milliseconds: 500),
    this.animationCurve = Curves.fastOutSlowIn,
    this.textFieldAnimationDuration = const Duration(milliseconds: 200),
    this.textFieldAnimationCurve = Curves.easeInOut,
    this.text,
  }) : super(key: key);

  final void Function()? onTap;
  final TextEditingController? text;
  final String? hintText;

  final Duration animationDuration;

  final Cubic animationCurve;

  final Duration textFieldAnimationDuration;

  final Cubic textFieldAnimationCurve;

  @override
  State<ExpandableSearchBar> createState() => _ExpandableSearchBarState();
}

class _ExpandableSearchBarState extends State<ExpandableSearchBar> {
  bool isSearchbarHidden = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0, backgroundColor: Colors.transparent),
      backgroundColor: Color(0xff17181f),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MediaQuery.of(context).size.width < 800
                  ? AnimatedContainer(
                      width: isSearchbarHidden ? 45 : 220,
                      duration: widget.animationDuration,
                      curve: widget.animationCurve,
                      padding: isSearchbarHidden
                          ? const EdgeInsets.all(0)
                          : const EdgeInsets.only(left: 14),
                      decoration: const BoxDecoration(
                        color: Color(0xff101010),
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black38,
                            spreadRadius: 4,
                            blurRadius: 2,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Stack(
                        children: [
                          AnimatedContainer(
                            width: isSearchbarHidden ? 0.0 : 155,
                            height: 45,
                            duration: widget.textFieldAnimationDuration,
                            curve: widget.textFieldAnimationCurve,
                            child: TextField(
                              style:
                                  const TextStyle(color: ColorTheme.colorText),
                              decoration: InputDecoration(
                                hintText: widget.hintText,
                                hintStyle: const TextStyle(
                                  color: ColorTheme.colorText,
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          Positioned(
                            right: 0,
                            child: InkWell(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(30)),
                              onTap: widget.onTap,
                              child: InkWell(
                                  onTap: () {
                                    print(isSearchbarHidden);
                                    isSearchbarHidden = false;
                                    setState(() {});
                                    print(isSearchbarHidden);
                                  },
                                  child: RoundSearchIcon()),
                            ),
                          ),
                        ],
                      ),
                    )
                  : MouseRegion(
                      onEnter: (details) => setState(() {
                        isSearchbarHidden = false;
                      }),
                      onExit: (details) => setState(() {
                        isSearchbarHidden = true;
                      }),
                      child: AnimatedContainer(
                        width: isSearchbarHidden ? 45 : 220,
                        duration: widget.animationDuration,
                        curve: widget.animationCurve,
                        padding: isSearchbarHidden
                            ? const EdgeInsets.all(0)
                            : const EdgeInsets.only(left: 14),
                        decoration: const BoxDecoration(
                          color: Color(0xff101010),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black38,
                              spreadRadius: 4,
                              blurRadius: 2,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Stack(
                          children: [
                            AnimatedContainer(
                              width: isSearchbarHidden ? 0.0 : 155,
                              height: 45,
                              duration: widget.textFieldAnimationDuration,
                              curve: widget.textFieldAnimationCurve,
                              child: TextField(
                                style: const TextStyle(
                                    color: ColorTheme.colorText),
                                decoration: InputDecoration(
                                  hintText: widget.hintText,
                                  hintStyle: const TextStyle(
                                    color: ColorTheme.colorText,
                                  ),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            Positioned(
                              right: 0,
                              child: InkWell(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(30)),
                                onTap: widget.onTap,
                                child: const RoundSearchIcon(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
            ],
          ),
          const SizedBox(
            width: 100,
          ),
          const SearchWidget()
        ],
      ),
    );
  }
}
