import 'package:jaspr/ui.dart' hide Heading;

import '../../text/text.dart';
import '../../constants/constants.dart';

class Imprint extends StatelessComponent {
  const Imprint({
    super.key,
    this.headingColor,
    this.accentColor,
    this.hightlightColor,
    this.textLightColor,
    this.textColor,
    this.textDarkColor,
  });

  final Color? headingColor;
  final Color? accentColor;
  final Color? hightlightColor;
  final Color? textLightColor;
  final Color? textColor;
  final Color? textDarkColor;

  @override
  Component build(BuildContext context) {
    return div(
      styles: Styles(
        margin: Spacing.symmetric(horizontal: Unit.auto),
        padding: Spacing.all(Unit.rem(1.0)),
        maxWidth: Unit.pixels(500.0),
        textAlign: TextAlign.left,
        color: CubeAlgosColors.text,
      ),
      [
        Heading("Imprint", color: headingColor ?? CubeAlgosColors.primaryDark),
        div(
          styles: Styles(
            color: accentColor ?? CubeAlgosColors.primaryLight,
            margin: Spacing.symmetric(vertical: Unit.rem(1.0)),
            fontWeight: FontWeight.bold,
          ),
          [text("Information provided based on § 5 TMG:")],
        ),
        div([
          div(
            styles: Styles(
              color: textLightColor ?? CubeAlgosColors.textLight,
              fontWeight: FontWeight.bold,
            ),
            [text("Cube Algos UG (haftungsbeschränkt)")],
          ),
          div([text("Registration Court: Amtsgericht Aachen")]),
          div([
            text("Registered under Number: "),
            span(
              styles: Styles(color: hightlightColor ?? CubeAlgosColors.primary),
              [text("HRB 27008")],
            ),
          ]),
        ]),
        div(
          styles: Styles(margin: Spacing.symmetric(vertical: Unit.rem(1.0))),
          [
            div(
              styles: Styles(
                color: textLightColor ?? CubeAlgosColors.textLight,
                fontWeight: FontWeight.bold,
              ),
              [text("Represented by:")],
            ),
            div([text("Kevin Scheeren")]),
          ],
        ),
        div(
          styles: Styles(margin: Spacing.symmetric(vertical: Unit.rem(1.0))),
          [
            div(
              styles: Styles(
                color: textLightColor ?? CubeAlgosColors.textLight,
                fontWeight: FontWeight.bold,
              ),
              [text("USt-IdNr.")],
            ),
            div([text("DE363092217")]),
          ],
        ),
        div(
          styles: Styles(margin: Spacing.symmetric(vertical: Unit.rem(1.0))),
          [
            div(
              styles: Styles(
                color: textLightColor ?? CubeAlgosColors.textLight,
                fontWeight: FontWeight.bold,
              ),
              [text("Address:")],
            ),
            div([text("An der Maar 19")]),
            div([text("52525")]),
            div([text("Heinsberg")]),
          ],
        ),
        div(
          styles: Styles(margin: Spacing.symmetric(vertical: Unit.rem(1.0))),
          [
            div([
              span(
                styles: Styles(
                  color: textLightColor ?? CubeAlgosColors.textLight,
                  fontWeight: FontWeight.bold,
                ),
                [text("E-Mail:")],
              ),
              p([text("contact@cubealgos.org")]),
            ]),
          ],
        ),
        div(styles: Styles(margin: Spacing.symmetric(vertical: Unit.rem(1.0))), [
          div(
            styles: Styles(
              color: textLightColor ?? CubeAlgosColors.textLight,
              fontWeight: FontWeight.bold,
            ),
            [text("Platform of the EU-Commision for online-disputes:")],
          ),
          a(
            styles: Styles(color: hightlightColor ?? CubeAlgosColors.primary),
            href: "https://ec.europa.eu/consumers/odr",
            [text("https://ec.europa.eu/consumers/odr")],
          ),
          div(styles: Styles(color: textDarkColor ?? CubeAlgosColors.textDark), [
            text(
              "We neither must nor want to participate in any of such lawsuits.",
            ),
          ]),
        ]),
      ],
    );
  }
}
