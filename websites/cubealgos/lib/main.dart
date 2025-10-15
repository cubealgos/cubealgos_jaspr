import "package:jaspr/server.dart";
import "package:cubealgos_jaspr_ui/cubealgos_jaspr_ui.dart";

import "jaspr_options.dart";
import "app.dart";

void main() {
  Jaspr.initializeApp(options: defaultJasprOptions);
  runApp(
    Document(
      title: "cubealgos",
      head: [
        link(href: "/favicon.svg", type: "image/svg+xml", rel: "icon"),
        ...CUI.head,
      ],
      body: div(
        classes: "main",
        styles: Styles(fontFamily: FontFamily("Silkscreen")),
        [
          App(),
          ...CUI.scripts,
        ],
      ),
    ),
  );
}
