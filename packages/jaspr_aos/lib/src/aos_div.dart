part of '../jaspr_aos.dart';

class AOSDiv extends StatelessComponent {
  final AOSAnimation animation;
  final int duration;
  final int delay;
  final bool once;

  final List<Component> children;

  const AOSDiv({
    super.key,
    required this.animation,
    required this.children,
    this.duration = 100,
    this.delay = 0,
    this.once = false,
  });

  @override
  Component build(BuildContext context) {
    return div(
      attributes: Map<String, String>.fromEntries([
        AOS.data(animation),
        AOS.delay(delay),
        AOS.duration(duration),
        AOS.once(once),
      ]),
      children,
    );
  }
}
