part of 'text.dart';

class Heading extends StatelessComponent {
  final Color? color;
  final String content;

  const Heading(this.content, {super.key, this.color});

  @override
  Component build(BuildContext context) {
    return h1(
      styles: Styles(
        fontWeight: FontWeight.w600,
        fontSize: Unit.rem(2.5),
        color: color,
      ),
      [text(content)],
    );
  }
}
