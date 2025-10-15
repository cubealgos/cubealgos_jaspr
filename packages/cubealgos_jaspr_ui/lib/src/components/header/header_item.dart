part of 'header.dart';

class HeaderItem extends StatelessComponent {
  final String href;
  final String title;

  final Color? color;
  final Color? highlight;

  const HeaderItem({
    required this.href,
    required this.title,
    this.color,
    this.highlight,
  });

  @override
  Component build(BuildContext context) {
    return a(
      styles: Styles(
        height: Unit.percent(100.0),
        display: Display.flex,
        justifyContent: JustifyContent.center,
        alignItems: AlignItems.center,
        border: Border.only(
          bottom: BorderSide.solid(
            width: Unit.rem(0.25),
            color: context.url == href
                ? highlight ?? DefaultColors.blue500
                : Colors.transparent,
          ),
        ),
        padding: Spacing.only(
          top: Unit.rem(0.25),
          right: Unit.rem(0.25),
          left: Unit.rem(0.25),
        ),
        fontSize: Unit.rem(0.875),
        color: color ?? DefaultColors.slate200,
        fontWeight: FontWeight.w500,
      ),
      href: href,
      [text(title)],
    );
  }
}
