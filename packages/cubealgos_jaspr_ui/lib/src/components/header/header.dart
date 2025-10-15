import 'package:jaspr/ui.dart';
import 'package:jaspr_aos/jaspr_aos.dart';

import '../../constants/constants.dart';

part 'header_item.dart';

class Header extends StatelessComponent {
  const Header({
    required this.destinations,
    required this.src,
    this.background,
    super.key,
  });

  final String src;
  final Color? background;

  final List<HeaderItem> destinations;

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
                margin: Spacing.all(Unit.rem(1.0)),
                backgroundColor: background ?? DefaultColors.slate950,
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
                              styles: Styles(height: Unit.rem(4.0)),
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
