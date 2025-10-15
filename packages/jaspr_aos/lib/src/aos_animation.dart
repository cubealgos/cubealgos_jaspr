part of '../jaspr_aos.dart';

enum AOSAnimation implements Comparable<AOSAnimation> {
  // fade
  fadeUp("fade-up"),
  fadeDown("fade-down"),
  fadeRight("fade-right"),
  fadeLeft("fade-left"),
  fadeUpRight("fade-up-right"),
  fadeUpLeft("fade-up-left"),
  fadeDownRight("fade-down-right"),
  fadeDownLeft("fade-down-left"),
  // flip
  flipLeft("flip-left"),
  flipRight("flip-right"),
  flipUp("flip-up"),
  flipDown("flip-down"),
  // slide
  slideLeft("slide-left"),
  slideRight("slide-right"),
  slideUp("slide-up"),
  slideDown("slide-down"),
  // zoom
  zoomIn("zoom-in"),
  zoomInUp("zoom-in-up"),
  zoomInDown("zoom-in-down"),
  zoomInLeft("zoom-in-left"),
  zoomInRight("zoom-in-right"),
  zoomOut("zoom-out"),
  zoomOutUp("zoom-out-up"),
  zoomOutDown("zoom-out-down"),
  zoomOutLeft("zoom-out-left"),
  zoomOutRight("zoom-out-right");

  final String value;

  const AOSAnimation(this.value);

  @override
  int compareTo(AOSAnimation other) {
    return value.compareTo(other.value);
  }
}
