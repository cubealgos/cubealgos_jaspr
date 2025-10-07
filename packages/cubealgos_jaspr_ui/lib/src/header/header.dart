library;

import 'package:jaspr/ui.dart';

part 'header_item.dart';
part 'header_button.dart';

class Header extends StatelessComponent {
  const Header({
    required this.logoPath,
    this.destinations = const [],
    this.button,
    this.attributes,
    super.key,
  });

  final String logoPath;
  final List<HeaderItem> destinations;
  final HeaderButton? button;
  final Map<String, String>? attributes;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield header(attributes: attributes, [
      Center(
        children: [
          div(
            classes:
                "bg-neutral-900 shadow-sm rounded-sm w-full max-w-[1280px] m-4",
            [
              div(classes: "flex flex-row justify-between", [
                div(classes: "flex flex-row justify-start", [
                  a(classes: "flex shrink-0 items-center p-4", href: "/", [
                    img(classes: "h-8 w-auto", src: logoPath),
                  ]),
                  ...destinations,
                ]),
                if (button != null) button!,
              ]),
            ],
          ),
        ],
      ),
    ]);
  }
}
