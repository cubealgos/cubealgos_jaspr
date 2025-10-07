part of 'header.dart';

class HeaderButton extends StatelessComponent {
  final String href;
  final String title;

  const HeaderButton({required this.href, required this.title, super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: "flex shrink-0 items-center p-4", [
      a(
        classes:
            "rounded-md bg-pink-300 px-3.5 py-2.5 text-sm font-semibold text-neutral-800 shadow-sm hover:bg-pink-200 focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-pink-400",
        href: href,
        [Text(title)],
      ),
    ]);
  }
}
