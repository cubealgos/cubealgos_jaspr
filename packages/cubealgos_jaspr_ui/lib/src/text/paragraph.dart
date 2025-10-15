part of 'text.dart';

class Paragraph extends StatelessComponent {
  final Color? color;
  final String content;

  const Paragraph(this.content, {super.key, this.color});

  @override
  Component build(BuildContext context) {
    return p(styles: Styles(color: color), [text(content)]);
  }
}
