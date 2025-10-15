library;

import 'package:jaspr/ui.dart';
import 'package:jaspr_aos/jaspr_aos.dart';

part 'accordion_tile.dart';

class ScrollAccordion extends StatelessComponent {
  final List<AccordionTile> children;

  ScrollAccordion({super.key, required this.children});

  @override
  Component build(BuildContext context) {
    return div(children);
  }
}
