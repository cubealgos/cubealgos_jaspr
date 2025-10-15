import 'package:jaspr/ui.dart';

import '../../constants/constants.dart';
import '../../containers/containers.dart';
import '../../text/text.dart';

part 'footer_link.dart';
part 'footer_column.dart';
part 'footer_reference.dart';

class Footer extends StatelessComponent {
  final List<FooterColumn> columns;
  final FooterReference reference;

  final Color? background;

  const Footer({
    required this.columns,
    this.reference = const FooterReference(),
    this.background,
    super.key,
  });

  @override
  Component build(BuildContext context) {
    return footer([
      Center(
        children: [
          div(
            styles: Styles(
              width: Unit.percent(100.0),
              maxWidth: Unit.pixels(1280),
              height: Unit.percent(100.0),
              maxHeight: Unit.pixels(640.0),
              backgroundColor: background ?? DefaultColors.slate950,
              zIndex: ZIndex(50),
              padding: Spacing.symmetric(
                vertical: Unit.rem(1.5),
                horizontal: Unit.rem(2.0),
              ),
              margin: Spacing.all(Unit.rem(1.0)),
            ),
            [
              ResponsiveFlex(
                children: [
                  ...columns,
                  div(styles: Styles(width: Unit.percent(100.0)), []),
                ],
              ),
              reference,
            ],
          ),
        ],
      ),
    ]);
  }
}
