part of 'footer.dart';

class FooterColumn extends StatelessComponent {
  final List<FooterLink> links;
  final Paragraph title;

  const FooterColumn({super.key, required this.title, required this.links});

  @override
  Component build(BuildContext context) {
    return div(styles: Styles(margin: Spacing.only(right: Unit.rem(3.0))), [
      div(styles: Styles(margin: Spacing.only(bottom: Unit.rem(0.5))), [title]),
      ul(
        styles: Styles(
          margin: Spacing.only(bottom: Unit.rem(0.5)),
          height: Unit.percent(100.0),
        ),
        [...links, div(styles: Styles(height: Unit.percent(100.0)), [])],
      ),
    ]);
  }
}
