import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:vibration/vibration.dart';

class SliderButton extends StatefulWidget {
  final Widget? child;
  final double height;
  final double width;
  final double? buttonSize;
  final double? buttonWidth;
  final Color backgroundColor;
  final Color baseColor;
  final Color highlightedColor;
  final Color buttonColor;
  final Widget? label;
  final Alignment alignLabel;
  final BoxShadow? boxShadow;
  final Widget? icon;
  final Function action;
  final bool shimmer;
  final bool dismissible;
  final bool vibrationFlag;
  final bool disable;
  const SliderButton({
    super.key,
    required this.action,
    this.boxShadow,
    this.child,
    this.vibrationFlag = false,
    this.shimmer = true,
    this.height = 70,
    this.buttonSize,
    this.buttonWidth,
    this.width = 250,
    this.alignLabel = const Alignment(0.6, 0),
    this.backgroundColor = const Color(0xffe0e0e0),
    this.baseColor = Colors.black87,
    this.buttonColor = Colors.white,
    this.highlightedColor = Colors.white,
    this.label,
    this.icon,
    this.dismissible = true,
    this.disable = false,
  }) : assert((buttonSize ?? 60) <= (height));

  @override
  State<SliderButton> createState() => _SliderButtonState();
}

class _SliderButtonState extends State<SliderButton> {
  late bool flag;

  @override
  void initState() {
    super.initState();
    flag = true;
  }

  @override
  Widget build(BuildContext context) {
    return flag == true
        ? _control()
        : widget.dismissible == true
            ? Container()
            : _control();
  }

  Widget _control() => Container(
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
            color:
                widget.disable ? Colors.grey.shade700 : widget.backgroundColor,
            borderRadius: BorderRadius.circular(10)),
        alignment: Alignment.centerLeft,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: <Widget>[
            Container(
              alignment: widget.alignLabel,
              child: widget.shimmer && !widget.disable
                  ? Shimmer.fromColors(
                      baseColor:
                          widget.disable ? Colors.grey : widget.baseColor,
                      highlightColor: widget.highlightedColor,
                      child: widget.label ?? Text(''),
                    )
                  : widget.label,
            ),
            widget.disable
                ? Tooltip(
                    verticalOffset: 50,
                    message: 'Button is disabled',
                    child: Container(
                      width: (widget.width) - (widget.height),
                      height: (widget.height - 70),
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(
                        left: (widget.height -
                                (widget.buttonSize ?? widget.height * 0.9)) /
                            2,
                      ),
                      child: widget.child ??
                          Container(
                            height: widget.buttonSize ?? widget.height,
                            width: widget.buttonSize ?? widget.height,
                            decoration: BoxDecoration(
                                boxShadow: widget.boxShadow != null
                                    ? [
                                        widget.boxShadow!,
                                      ]
                                    : null,
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(child: widget.icon),
                          ),
                    ),
                  )
                : Dismissible(
                    key: UniqueKey(),
                    direction: DismissDirection.startToEnd,
                    dismissThresholds: const {
                      DismissDirection.startToEnd: 0.75
                    },
                    onDismissed: (dir) async {
                      setState(() {
                        if (widget.dismissible) {
                          flag = false;
                        } else {
                          flag = !flag;
                        }
                      });

                      widget.action();
                      final hasVibrator =
                          await Vibration.hasVibrator() ?? false;
                      if (widget.vibrationFlag && hasVibrator) {
                        try {
                          Vibration.vibrate(duration: 200);
                        } catch (e) {
                          print(e);
                        }
                      }
                    },
                    child: Container(
                      width:
                          widget.width - (widget.buttonWidth ?? widget.height),
                      height: widget.height,
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(
                        left: (widget.height -
                                (widget.buttonSize == null
                                    ? widget.height
                                    : widget.buttonSize!)) /
                            2,
                      ),
                      child: widget.child ??
                          Container(
                            height: widget.buttonSize ?? widget.height,
                            width: widget.buttonSize ?? widget.height,
                            decoration: BoxDecoration(
                                boxShadow: widget.boxShadow != null
                                    ? [
                                        widget.boxShadow!,
                                      ]
                                    : null,
                                color: widget.buttonColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(child: widget.icon),
                          ),
                    ),
                  ),
          ],
        ),
      );
}
