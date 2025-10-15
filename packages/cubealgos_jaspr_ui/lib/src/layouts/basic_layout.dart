part of 'layouts.dart';

class BasicLayout extends StatelessComponent {
  BasicLayout({
    this.background,
    this.header,
    this.footer,
    required this.child,
    super.key,
  });

  final Color? background;

  final Header? header;
  final Footer? footer;
  final Component child;

  @override
  Component build(BuildContext context) {
    return div(
      styles: Styles(
        minHeight: Unit.vh(100.0),
        backgroundColor: background ?? DefaultColors.slate800,
      ),
      [
        div(
          styles: Styles(
            position: Position.sticky(top: Unit.zero),
            zIndex: ZIndex(50),
          ),
          [if (header != null) header!],
        ),
        child,
        if (footer != null) footer!,
      ],
    );
  }
}
