part of '../jaspr_aos.dart';

abstract class AOS {
  static final scripts = [
    script(src: "https://unpkg.com/aos@next/dist/aos.js"),
    script(content: "AOS.init();"),
  ];

  static final stylesheet = link(
    href: "https://unpkg.com/aos@next/dist/aos.css",
    rel: "stylesheet",
  );

  static MapEntry<String, String> data(AOSAnimation animation) =>
      MapEntry("data-aos", animation.value);
  static MapEntry<String, String> delay(int value) =>
      MapEntry("data-aos-delay", value.toString());
  static MapEntry<String, String> duration(int value) =>
      MapEntry("data-aos-duration", value.toString());
  static MapEntry<String, String> once(bool value) =>
      MapEntry("data-aos-once", value.toString());
}
