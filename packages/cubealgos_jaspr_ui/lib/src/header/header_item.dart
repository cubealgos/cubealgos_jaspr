part of 'header.dart';

class HeaderItem extends StatelessComponent {
  final String href;
  final String title;

  final String _commonClasses =
      "h-100% inline-flex items-center border-b-4 px-2 pt-1 text-sm font-mediumS";
  final String _notSelectedClasses =
      "border-transparent text-neutral-300 hover:border-neutral-300 hover:text-neutral-100";
  final String _selectedClasses = "border-pink-300 text-neutral-200";

  const HeaderItem({required this.href, required this.title});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield a(
      classes:
          "$_commonClasses ${context.url == href ? _selectedClasses : _notSelectedClasses}",
      href: href,
      [Text(title)],
    );
  }
}
