part of 'animations.dart';

class Background extends StatefulComponent {
  @override
  State<StatefulComponent> createState() => BackgroundState();
}

class BackgroundState extends State<Background> {
  BackgroundState({this.count = 1600});

  final int count;
  late final int _axisCount = sqrt(count).toInt();

  final Color color = Colors.black.withOpacity(0.05);

  final _inverted = ValueNotifier(false);

  late final _offests = List.generate(count, (index) => Random().nextDouble());

  Stream<double>? stream;

  @override
  void initState() {
    super.initState();
    if (kIsWeb) {
      stream = Stream.periodic(Duration(milliseconds: 50), (index) {
        int i = index % 100;
        if (i == 0) {
          _inverted.value = !_inverted.value;
        }
        if (_inverted.value) {
          i = 100 - i;
        }
        return i * 0.01;
      });
    }
  }

  @override
  Component build(BuildContext context) {
    return StreamBuilder(
      initialData: 0.0,
      stream: stream,
      builder: (context, snapshot) {
        final factor = 1.0 - snapshot.data!;
        return _ColoredGrid(
          color: color,
          offsets: _offests,
          factor: factor,
          rowCount: _axisCount,
          columnCount: _axisCount,
        );
      },
    );
  }
}

class _ColoredGrid extends StatelessComponent {
  final int columnCount;
  final int rowCount;

  final double factor;
  final List<double> offsets;

  final Color color;

  const _ColoredGrid({
    required this.color,
    this.factor = 0.0,
    this.columnCount = 20,
    this.rowCount = 20,
    required this.offsets,
  });

  @override
  Component build(BuildContext context) {
    return div(
      styles: Styles(
        filter: Filter.blur(Unit.percent(50.0)),
        position: Position.absolute(top: Unit.zero, left: Unit.zero),
        width: Unit.percent(100.0),
        height: Unit.vh(100.0),
        display: Display.grid,
        gridTemplate: GridTemplate(
          columns: GridTracks(
            List.generate(columnCount, (index) => GridTrack(TrackSize.fr(1))),
          ),
          rows: GridTracks(
            List.generate(rowCount, (index) => GridTrack(TrackSize.fr(1))),
          ),
        ),
      ),
      [
        ...List.generate(
          columnCount * rowCount,
          (index) =>
              _ColoredBox(color: color.withLightness(factor - offsets[index])),
        ),
      ],
    );
  }
}

class _ColoredBox extends StatelessComponent {
  final Color color;

  _ColoredBox({required this.color});

  @override
  Component build(BuildContext context) {
    return div(
      styles: Styles(
        position: Position.relative(),
        margin: Spacing.all(Unit.pixels(2)),
        backgroundColor: color,
      ),
      [],
    );
  }
}
