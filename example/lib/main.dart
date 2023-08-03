import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pdftron_flutter/pdftron_flutter.dart';

import 'pdftron/xfdf.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.edgeToEdge,
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 50, title: const Text("Pdftron Demo")),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Viewer()),
                );
              },
              child: const Text('Open Pdftron'))),
    );
  }
}

class Viewer extends StatefulWidget {
  const Viewer({Key? key}) : super(key: key);

  @override
  State<Viewer> createState() => _ViewerState();
}

class _ViewerState extends State<Viewer> {
  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

// Platform messages are asynchronous, so initialize in an async method.
  Future<void> initPlatformState() async {
    String version;
    // Platform messages may fail, so use a try/catch PlatformException.
    try {
      // Initializes the PDFTron SDK, it must be called before you can use
      // any functionality.
      PdftronFlutter.initialize(
          "Asite Solutions Limited(asite.com):OEM:Adoddle::IA+:AMS(20220328):26A54FDD0437A80A73603E3AC992737860613FDDFF58BD3B95A545DA2A2CC9A07AD4B6F5C7");

      version = await PdftronFlutter.version;
    } on PlatformException {
      version = 'Failed to get platform version.';
    }

    if (!mounted) return;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 50,
        title: const Text('Demo'),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: <Widget>[
            DocumentView(onCreated: _onDocumentViewCreated),
          ],
        ),
      ),
    );
  }

  void _onDocumentViewCreated(DocumentViewController controller) async {
    Config config = Config()
      ..multiTabEnabled = false
      ..hideTopAppNavBar = true
      ..hideBottomToolbar = true
      ..hideTopToolbars = true
      ..continuousAnnotationEditing = false
      ..pageIndicatorEnabled = false
      ..rememberLastUsedTool = false
      ..tabletLayoutEnabled = false
      ..hideAnnotationToolbarSwitcher = true
      ..autoSaveEnabled = false
      ..hidePresetBar = true
      ..singleLineToolbar = true
      ..hideScrollbars = true
      ..longPressMenuEnabled = false
      ..singleLineToolbar = false
      ..layoutMode = LayoutModes.continuous
      ..fitMode = FitModes.fitPage
      ..documentSliderEnabled = false
      ..pageNumberIndicatorAlwaysVisible = false
      ..initialPageNumber = 1;

    File file = await Xfdf().getFileFromAssets('24164742.pdf');
    final uri = file.uri.toString();
    final startTime = DateTime.now();
    if (kDebugMode) {
      print("PlanCubit _openDocument openDocument start=${startTime.toString()}");
    }

    await controller.openDocument(uri, config: config);
    if (kDebugMode) {
      final endTime = DateTime.now();
      print("PlanCubit _openDocument openDocument end=${endTime.toString()}");
      print("PlanCubit _openDocument openDocument total time=${endTime.difference(startTime).inMilliseconds} Milliseconds");
    }
    try {
      // The imported command is in XFDF format and tells whether to add,
      // modify or delete annotations in the current document.
      var xfdf = await Xfdf().getXfdf('24164742.xfdf');
      await controller.importAnnotations(xfdf);

    } on PlatformException catch (e) {
      print("Failed to importAnnotationCommand '${e.message}'.");
    }
  }
}
