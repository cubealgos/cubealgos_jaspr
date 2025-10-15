part of 'animations.dart';

class Tilemap extends StatelessComponent {
  final String path;
  final int count;
  final Map<String, int> _images = {};

  final double size;

  Tilemap({required this.path, this.count = 14, this.size = 1024, super.key}) {
    for (var i = 0; i < count; i++) {
      _images["$path/tilemap_$i.png"] = i * 50;
    }
  }

  @override
  Component build(BuildContext context) {
    final ret = div(
      styles: Styles(display: Display.grid),
      _images.keys.map((src) {
        return img(
          src: src,
          styles: Styles(
            gridPlacement: GridPlacement(
              rowStart: LinePlacement(1),
              columnStart: LinePlacement(1),
            ),
            maxHeight: Unit.pixels(size),
            maxWidth: Unit.pixels(size),
            height: Unit.percent(100.0),
            width: Unit.percent(100.0),
          ),
          attributes: Map.fromEntries([
            AOS.data(AOSAnimation.fadeUp),
            AOS.delay(_images[src] ?? 0),
          ]),
        );
      }).toList(),
    );

    return ret;
  }
}
