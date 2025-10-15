part of 'components.dart';

class Feature extends StatelessComponent {
  final FeatureInfo info;
  final Tilemap tilemap;
  final bool invert;

  Feature({
    required this.info,
    required this.tilemap,
    this.invert = false,
    super.key,
  });

  @override
  Component build(BuildContext context) {
    final left = invert ? tilemap : info;
    final right = invert ? info : tilemap;
    final children = [
      left,
      div(styles: Styles(width: Unit.rem(4.0), height: Unit.rem(4.0)), []),
      right
    ];

    return div(
      styles: Styles(
        height: Unit.vh(100.0),
        padding: Spacing.symmetric(horizontal: Unit.rem(2.0)),
        display: Display.flex,
        justifyContent: JustifyContent.center,
        alignItems: AlignItems.center,
      ),
      [ResponsiveFlex(children: children)],
    );
  }
}

class FeatureInfo extends StatelessComponent {
  final Paragraph hint;
  final Subheading title;
  final Paragraph description;

  FeatureInfo({
    required this.hint,
    required this.title,
    required this.description,
  });

  @override
  Component build(BuildContext context) {
    return div(
      styles: Styles(
        display: Display.flex,
        flexDirection: FlexDirection.column,
        justifyContent: JustifyContent.center,
        maxWidth: Unit.pixels(700.0),
      ),
      [
        div(
          attributes: Map.fromEntries([
            AOS.data(AOSAnimation.fadeUp),
            AOS.delay(100),
          ]),
          [hint],
        ),
        div(
          attributes: Map.fromEntries([
            AOS.data(AOSAnimation.fadeUp),
            AOS.delay(150),
          ]),
          [title],
        ),
        div(
          attributes: Map.fromEntries([
            AOS.data(AOSAnimation.fadeUp),
            AOS.delay(200),
          ]),
          [description],
        ),
      ],
    );
  }
}
