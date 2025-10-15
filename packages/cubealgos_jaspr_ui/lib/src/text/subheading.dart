part of 'text.dart';

class Subheading extends StatelessComponent {
  final Color? color;
  final String content;

  const Subheading(this.content, {super.key, this.color});

  @override
  Component build(BuildContext context) {
    return h2(
      styles: Styles(
        fontWeight: FontWeight.w600,
        fontSize: Unit.rem(2.25),
        color: color,
      ),
      [text(content)],
    );
  }
}
