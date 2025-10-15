library;

import 'package:jaspr/ui.dart';
import 'package:jaspr_aos/jaspr_aos.dart';

import 'components.dart';

export 'constants.dart';
export 'components.dart';
export 'animations.dart';

abstract class CUI {
  static final List<Component> head = [
    link(href: "styles.css", rel: "stylesheet"),
    link(
      href: "https://fonts.googleapis.com/css?family=Silkscreen",
      rel: "stylesheet",
    ),
    AOS.stylesheet,
  ];

  static final List<Component> scripts = [...AOS.scripts];

  static final List<StyleRule> styles = [...ResponsiveFlex.styles];
}
