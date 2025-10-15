import 'package:cubealgos_jaspr_ui/cubealgos_jaspr_ui.dart';
import 'package:jaspr/ui.dart' hide Heading;

import '../components/components.dart';
import '../config.dart';

class HomePage extends StatelessComponent {
  const HomePage({super.key});

  @override
  Component build(BuildContext context) {
    return div(
      [
        const Hero(),
        ScrollAccordion(
          children: [
            AccordionTile(
              child: Feature(
                info: FeatureInfo(
                  hint: Paragraph(
                    "we love dart",
                    color: AppColors.primary,
                  ),
                  title: Subheading(
                    "The future is build on all platforms",
                    color: AppColors.textLight,
                  ),
                  description: Paragraph(
                    "We love Dart and its versatile language features. The great ecosystem of packages and tools built with it should be extended with onchain capabilities.",
                    color: AppColors.text,
                  ),
                ),
                tilemap: Tilemap(path: "/images/tilemaps/cross-platform"),
              ),
              background: AppColors.backgroundDark,
            ),
            AccordionTile(
              child: Feature(
                invert: true,
                info: FeatureInfo(
                  hint: Paragraph(
                    "community driven",
                    color: AppColors.primary,
                  ),
                  title: Subheading(
                    "Revenue sharing from day one.",
                    color: AppColors.textLight,
                  ),
                  description: Paragraph(
                    "we think decentralization and community owned goods are the backbone of fair finance.",
                    color: AppColors.text,
                  ),
                ),
                tilemap: Tilemap(path: "/images/tilemaps/revenue-sharing"),
              ),
              backgroundBehind: AppColors.backgroundDark,
              background: AppColors.background,
            ),
            AccordionTile(
              child: Feature(
                info: FeatureInfo(
                  hint: Paragraph(
                    "open source",
                    color: AppColors.primary,
                  ),
                  title: Subheading(
                    "Sharing code is sharing value",
                    color: AppColors.textLight,
                  ),
                  description: Paragraph(
                    "We believe that a great part of value creation in web3 comes through sharing code & programs. That's why we try to open source as much of our code as we can.",
                    color: AppColors.text,
                  ),
                ),
                tilemap: Tilemap(path: "/images/tilemaps/open-source"),
              ),
              backgroundBehind: AppColors.background,
              background: AppColors.backgroundLight,
            ),
          ],
        ),
      ],
    );
  }
}
