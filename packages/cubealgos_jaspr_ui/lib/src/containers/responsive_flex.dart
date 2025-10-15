part of 'containers.dart';

class ResponsiveFlex extends StatelessComponent {
  final List<Component> children;

  ResponsiveFlex({super.key, required this.children});

  @override
  Component build(BuildContext context) {
    return div(classes: "responsive_flex", children);
  }

  @css
  static final styles = [
    css(".responsive_flex").styles(
      margin: Spacing.symmetric(vertical: Unit.auto),
      display: Display.flex,
      flexDirection: FlexDirection.column,
    ),
    css.media(MediaQuery.screen(minWidth: Unit.pixels(600.0)), [
      css(".responsive_flex").styles(flexDirection: FlexDirection.row),
    ]),
  ];
}
