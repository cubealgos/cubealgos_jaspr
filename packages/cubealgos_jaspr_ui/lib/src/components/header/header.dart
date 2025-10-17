import 'package:jaspr/ui.dart';
import 'package:jaspr_aos/jaspr_aos.dart';

import '../../constants/constants.dart';

part 'header_item.dart';

class Header extends StatelessComponent {
  const Header({
    required this.destinations,
    required this.src,
    this.background,
    this.iconPadding = Unit.zero,
    super.key,
  });

  final String src;
  final Color? background;

  final List<HeaderItem> destinations;

  final Unit iconPadding;

  @override
  Component build(BuildContext context) {
    return header(
      attributes: Map.fromEntries([
        AOS.data(AOSAnimation.fadeDown),
        AOS.once(true),
      ]),
      [
        Center(
          children: [
            div(
              styles: Styles(
                width: Unit.percent(100.0),
                maxWidth: Unit.pixels(1280),
                minHeight: Unit.pixels(64.0),
                maxHeight: Unit.pixels(65.0),
                margin: Spacing.all(Unit.rem(1.0)),
                backgroundColor: background ?? DefaultColors.slate950,
                radius: BorderRadius.all(Radius.circular(Unit.rem(0.5))),
                shadow: BoxShadow(
                  offsetX: Unit.pixels(0.0),
                  offsetY: Unit.pixels(2.0),
                  blur: Unit.pixels(4.0),
                  spread: Unit.pixels(0.0),
                  color: DefaultColors.neutral950,
                ),
              ),
              [
                div(
                  styles: Styles(
                    display: Display.flex,
                    flexDirection: FlexDirection.row,
                    justifyContent: JustifyContent.spaceBetween,
                  ),
                  [
                    div(
                      styles: Styles(
                        display: Display.flex,
                        flexDirection: FlexDirection.row,
                        justifyContent: JustifyContent.start,
                      ),
                      [
                        a(
                          styles: Styles(
                            display: Display.flex,
                            justifyItems: JustifyItems.center,
                          ),
                          href: "/",
                          [
                            img(
                              styles: Styles(
                                maxHeight: Unit.pixels(64.0),
                                margin: Spacing.all(iconPadding),
                              ),
                              src: src,
                            ),
                          ],
                        ),
                        ...destinations,
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
