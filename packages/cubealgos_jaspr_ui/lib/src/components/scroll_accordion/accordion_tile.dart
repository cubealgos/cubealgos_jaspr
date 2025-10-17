part of 'scroll_accordion.dart';

class AccordionTile extends StatelessComponent {
  AccordionTile({
    required this.child,
    this.inverted = false,
    this.backgroundBehind,
    this.background,
  });

  final Component child;
  final bool inverted;

  final Color? backgroundBehind;
  final Color? background;

  final Radius borderRadius = Radius.circular(Unit.rem(1.5));

  @override
  Component build(BuildContext context) {
    return div(styles: Styles(backgroundColor: backgroundBehind), [
      div(
        styles: Styles(
          backgroundColor: background,
          radius: BorderRadius.only(
            topLeft: borderRadius,
            topRight: borderRadius,
          ),
        ),
        attributes: Map.fromEntries([AOS.data(AOSAnimation.slideUp)]),
        [
          div(
            styles: Styles(
              maxWidth: Unit.pixels(1280),
              margin: Spacing.symmetric(horizontal: Unit.auto),
              display: Display.flex,
              justifyContent: JustifyContent.center,
              alignItems: AlignItems.center,
            ),
            [child],
          ),
        ],
      ),
    ]);
  }
}
