part of 'footer.dart';

class FooterLink extends StatelessComponent {
  final String href;
  final String title;

  final Color? color;

  const FooterLink({required this.href, required this.title, this.color});

  @override
  Component build(BuildContext context) {
    return li([
      a(
        styles: Styles(
          color: color ?? DefaultColors.slate200,
          lineHeight: Unit.rem(2.0),
          margin: Spacing.only(bottom: Unit.rem(1.5)),
        ),
        href: href,
        [text(title)],
      ),
    ]);
  }
}
