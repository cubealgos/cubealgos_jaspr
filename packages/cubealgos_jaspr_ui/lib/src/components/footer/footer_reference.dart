part of 'footer.dart';

class FooterReference extends StatelessComponent {
  final String content;
  final String href;
  final Color? color;

  const FooterReference({
    super.key,
    this.content = "Cube Algos UG (haftungsbeschränkt)",
    this.href = "https://cubealgos.xyz",
    this.color,
  });

  @override
  Component build(BuildContext context) {
    return div(
      styles: Styles(
        display: Display.flex,
        flexDirection: FlexDirection.row,
        justifyContent: JustifyContent.spaceBetween,
        alignItems: AlignItems.center,
        margin: Spacing.only(top: Unit.rem(1.5)),
        padding: Spacing.only(top: Unit.rem(1.5)),
        border: Border.only(
          top: BorderSide.solid(
            color: color ?? DefaultColors.slate300,
            width: Unit.rem(0.1),
          ),
        ),
      ),
      [
        a(href: href, styles: Styles(color: color ?? DefaultColors.slate300), [
          text(content),
        ]),
      ],
    );
  }
}
