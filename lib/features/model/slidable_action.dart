import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:ibuddy/core/utils/app_colors.dart';
import 'package:ibuddy/core/utils/app_fonts.dart';

class MySlidableAction extends StatelessWidget {
  /// Creates a [SlidableAction].
  ///
  /// The [flex], [backgroundColor], [autoClose] and [spacing] arguments
  /// must not be null.
  ///
  /// You must set either an [icon] or a [label].
  ///
  /// The [flex] argument must also be greater than 0.
  const MySlidableAction({
    Key? key,
    this.flex = 1,
    this.backgroundColor = AppColors.error,
    this.foregroundColor,
    this.autoClose = true,
    required this.onPressed,
    this.icon,
    this.spacing = 4,
    this.label,
    this.borderRadius = BorderRadius.zero,
    this.padding,
  })  : assert(flex > 0),
        assert(icon != null || label != null),
        super(key: key);

  /// {@macro slidable.actions.flex}
  final int flex;

  /// {@macro slidable.actions.backgroundColor}
  final Color backgroundColor;

  /// {@macro slidable.actions.foregroundColor}
  final Color? foregroundColor;

  /// {@macro slidable.actions.autoClose}
  final bool autoClose;

  /// {@macro slidable.actions.onPressed}
  final SlidableActionCallback? onPressed;

  /// An icon to display above the [label].
  final IconData? icon;

  /// The space between [icon] and [label] if both set.
  ///
  /// Defaults to 4.
  final double spacing;

  /// A label to display below the [icon].
  final String? label;

  /// Padding of the OutlinedButton
  final BorderRadius borderRadius;

  /// Padding of the OutlinedButton
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    final children = <Widget>[];

    if (icon != null) {
      children.add(
        Icon(icon, size: 30,),
      );
    }

    if (label != null) {
      if (children.isNotEmpty) {
        children.add(
          SizedBox(height: spacing),
        );
      }

      children.add(
        Text(
          label!,
          style: const TextStyle(
            fontFamily: AppFonts.segoe,
            fontWeight: AppFonts.semiBold,
            fontSize: 11,
          ),
          overflow: TextOverflow.ellipsis,
        ),
      );
    }

    final child = children.length == 1
        ? children.first
        : Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ...children.map(
                (child) => Flexible(
                  child: child,
                ),
              )
            ],
          );

    return CustomSlidableAction(
      borderRadius: borderRadius,
      padding: padding,
      onPressed: onPressed,
      autoClose: autoClose,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      flex: flex,
      child: child,
    );
  }
}
