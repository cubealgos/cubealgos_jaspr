part of 'containers.dart';

class Stack extends StatelessComponent {
  Stack({required this.children});

  final List<Component> children;

  @override
  Component build(BuildContext context) {
    return div(
      styles: Styles(
        display: Display.grid,
        alignContent: AlignContent.center,
        justifyContent: JustifyContent.center,
        alignItems: AlignItems.center,
        justifyItems: JustifyItems.center,
      ),
      children.map((comp) {
        return div(
          styles: Styles(
            gridPlacement: GridPlacement(
              rowStart: LinePlacement(1),
              columnStart: LinePlacement(1),
            ),
          ),
          [comp],
        );
      }).toList(),
    );
  }
}
