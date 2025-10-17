import 'package:cubealgos_jaspr_ui/cubealgos_jaspr_ui.dart';
import 'package:jaspr/ui.dart' hide Heading;

@client
class Hero extends StatelessComponent {
  const Hero({super.key});

  @override
  Component build(BuildContext context) {
    return div(
      [
        Background(),
        div(
          styles: Styles(
            display: Display.flex,
            height: Unit.vh(100.0),
            maxHeight: Unit.pixels(800.0),
            justifyContent: JustifyContent.center,
            alignItems: AlignItems.center,
          ),
          [
            div(
              styles: Styles(
                margin: Spacing.all(Unit.auto),
                textAlign: TextAlign.center,
              ),
              [
                img(
                  src: "/favicon.svg",
                  styles: Styles(
                    maxHeight: Unit.rem(14.0),
                    margin: Spacing.symmetric(horizontal: Unit.auto),
                  ),
                ),
                div(
                  styles: Styles(
                    maxWidth: Unit.pixels(1280),
                    padding: Spacing.symmetric(
                        vertical: Unit.rem(0.5), horizontal: Unit.rem(2.0)),
                  ),
                  [
                    Heading(
                        "the ultimate participation in web3 is building on top of it.",
                        color: CubeAlgosColors.textLight)
                  ],
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
