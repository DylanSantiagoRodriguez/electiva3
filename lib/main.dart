import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MenuScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
                        // Header bar with dark teal background
            Container(
              width: double.infinity,
              height: 80,
              decoration: const BoxDecoration(
                color: Color(0xFF1A5F7A), // Dark teal color
              ),
              child: const Center(
                child: Text(
                  'Menu',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            // Main content area with buttons
            Expanded(
              child: Container(
                color: Colors.white,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Example layout button
                      Container(
                        width: 200,
                        height: 50,
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        decoration: BoxDecoration(
                          color: const Color(0xFF1A5F7A),
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 4,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ExampleLayoutScreen(),
                              ),
                            );
                          },
                          child: const Text(
                            'Example layout',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      // Example counter button
                      Container(
                        width: 200,
                        height: 50,
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        decoration: BoxDecoration(
                          color: const Color(0xFF1A5F7A),
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 4,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MyHomePage(title: 'Flutter Demo Home Page'),
                              ),
                            );
                          },
                          child: const Text(
                            'Example counter',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      // List dynamic button
                      Container(
                        width: 200,
                        height: 50,
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        decoration: BoxDecoration(
                          color: const Color(0xFF1A5F7A),
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 4,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ListDynamicScreen(),
                              ),
                            );
                          },
                          child: const Text(
                            'List dynamic',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      // Drawing canvas button
                      Container(
                        width: 200,
                        height: 50,
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        decoration: BoxDecoration(
                          color: const Color(0xFF1A5F7A),
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 4,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const DrawingCanvasScreen(),
                              ),
                            );
                          },
                          child: const Text(
                            'Drawing Canvas',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

class ExampleLayoutScreen extends StatelessWidget {
  const ExampleLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Header bar with dark teal background
            Container(
              width: double.infinity,
              height: 80,
              decoration: const BoxDecoration(
                color: Color(0xFF1A5F7A), // Dark teal color
              ),
              child: Stack(
                children: [
                  // Back button
                  Positioned(
                    left: 20,
                    top: 0,
                    bottom: 0,
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                  // Title
                  const Positioned(
                    left: 0,
                    right: 0,
                    top: 0,
                    bottom: 0,
                    child: Center(
                      child: Text(
                        'Example layout',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Main content area
            Expanded(
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    // Top section with colored squares
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    // Middle section with green rectangle
                    Container(
                      width: double.infinity,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 4,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: const Center(
                        child: Text(
                          'Texto superpuesto',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    // Bottom section with list items
                    Row(
                      children: [
                        Icon(Icons.home, color: Colors.grey[600], size: 24),
                        const SizedBox(width: 12),
                        Text(
                          'Element 1',
                          style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Icon(Icons.search, color: Colors.grey[600], size: 24),
                        const SizedBox(width: 12),
                        Text(
                          'Element 2',
                          style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ListDynamicScreen extends StatefulWidget {
  const ListDynamicScreen({super.key});

  @override
  State<ListDynamicScreen> createState() => _ListDynamicScreenState();
}

class _ListDynamicScreenState extends State<ListDynamicScreen> {
  List<ListItem> items = [];
  int nextId = 1;

  @override
  void initState() {
    super.initState();
    // Initialize with 12 items as shown in the image
    for (int i = 1; i <= 12; i++) {
      items.add(ListItem(
        id: nextId++,
        text: 'Elemento $i',
        isCompleted: false,
      ));
    }
  }

  void addItem() {
    setState(() {
      items.add(ListItem(
        id: nextId++,
        text: 'Elemento ${items.length + 1}',
        isCompleted: false,
      ));
    });
  }

  void toggleItem(int id) {
    setState(() {
      final index = items.indexWhere((item) => item.id == id);
      if (index != -1) {
        items[index] = items[index].copyWith(isCompleted: !items[index].isCompleted);
      }
    });
  }

  void removeItem(int id) {
    setState(() {
      items.removeWhere((item) => item.id == id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Header bar with dark teal background
            Container(
              width: double.infinity,
              height: 80,
              decoration: const BoxDecoration(
                color: Color(0xFF1A5F7A), // Dark teal color
              ),
              child: Stack(
                children: [
                  // Back button
                  Positioned(
                    left: 20,
                    top: 0,
                    bottom: 0,
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                  // Title
                  const Positioned(
                    left: 0,
                    right: 0,
                    top: 0,
                    bottom: 0,
                    child: Center(
                      child: Text(
                        'Example List',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Main content area with list
            Expanded(
              child: Container(
                color: Colors.white,
                child: ReorderableListView.builder(
                  itemCount: items.length,
                  onReorder: (oldIndex, newIndex) {
                    setState(() {
                      if (newIndex > oldIndex) {
                        newIndex -= 1;
                      }
                      final item = items.removeAt(oldIndex);
                      items.insert(newIndex, item);
                    });
                  },
                  itemBuilder: (context, index) {
                    final item = items[index];
                    return Container(
                      key: ValueKey(item.id),
                      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.05),
                            blurRadius: 2,
                            offset: const Offset(0, 1),
                          ),
                        ],
                      ),
                      child: ListTile(
                        leading: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            // Drag handle icon
                            const Icon(
                              Icons.drag_handle,
                              color: Color(0xFF1A5F7A),
                              size: 20,
                            ),
                            const SizedBox(width: 8),
                            // Checkbox for completion
                            GestureDetector(
                              onTap: () => toggleItem(item.id),
                              child: Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: item.isCompleted ? const Color(0xFF1A5F7A) : Colors.transparent,
                                  border: Border.all(
                                    color: const Color(0xFF1A5F7A),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: item.isCompleted
                                    ? const Icon(
                                        Icons.check,
                                        color: Colors.white,
                                        size: 14,
                                      )
                                    : null,
                              ),
                            ),
                          ],
                        ),
                        title: Text(
                          item.text,
                          style: TextStyle(
                            color: item.isCompleted ? Colors.grey[600] : Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            decoration: item.isCompleted ? TextDecoration.lineThrough : null,
                          ),
                        ),
                        trailing: GestureDetector(
                          onTap: () => removeItem(item.id),
                          child: const Icon(
                            Icons.delete_outline,
                            color: Colors.red,
                            size: 20,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addItem,
        backgroundColor: const Color(0xFF1A5F7A),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}

class ListItem {
  final int id;
  final String text;
  final bool isCompleted;

  ListItem({
    required this.id,
    required this.text,
    required this.isCompleted,
  });

  ListItem copyWith({
    int? id,
    String? text,
    bool? isCompleted,
  }) {
    return ListItem(
      id: id ?? this.id,
      text: text ?? this.text,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }
}

class DrawingCanvasScreen extends StatefulWidget {
  const DrawingCanvasScreen({super.key});

  @override
  State<DrawingCanvasScreen> createState() => _DrawingCanvasScreenState();
}

class _DrawingCanvasScreenState extends State<DrawingCanvasScreen> {
  List<DrawingPoint?> points = [];
  DrawingMode currentMode = DrawingMode.pen;
  Color currentColor = Colors.black;
  double strokeWidth = 3.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Header bar with dark teal background
            Container(
              width: double.infinity,
              height: 80,
              decoration: const BoxDecoration(
                color: Color(0xFF1A5F7A), // Dark teal color
              ),
              child: Stack(
                children: [
                  // Back button
                  Positioned(
                    left: 20,
                    top: 0,
                    bottom: 0,
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                  // Title
                  const Positioned(
                    left: 0,
                    right: 0,
                    top: 0,
                    bottom: 0,
                    child: Center(
                      child: Text(
                        'Drawing Canvas',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Toolbar
            Container(
              height: 60,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                border: Border(
                  bottom: BorderSide(color: Colors.grey[300]!),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Pen tool
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        currentMode = DrawingMode.pen;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: currentMode == DrawingMode.pen 
                            ? const Color(0xFF1A5F7A) 
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(
                        Icons.edit,
                        color: currentMode == DrawingMode.pen 
                            ? Colors.white 
                            : const Color(0xFF1A5F7A),
                        size: 24,
                      ),
                    ),
                  ),
                  // Eraser tool
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        currentMode = DrawingMode.eraser;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: currentMode == DrawingMode.eraser 
                            ? const Color(0xFF1A5F7A) 
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(
                        Icons.auto_fix_high,
                        color: currentMode == DrawingMode.eraser 
                            ? Colors.white 
                            : const Color(0xFF1A5F7A),
                        size: 24,
                      ),
                    ),
                  ),
                  // Clear all button
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        points.clear();
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.red[100],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(
                        Icons.clear_all,
                        color: Colors.red[700],
                        size: 24,
                      ),
                    ),
                  ),
                  // Color picker
                  GestureDetector(
                    onTap: () {
                      _showColorPicker();
                    },
                    child: Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        color: currentColor,
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Colors.grey[400]!, width: 2),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Drawing canvas
            Expanded(
              child: Container(
                color: Colors.white,
                child: GestureDetector(
                  onPanStart: (details) {
                    setState(() {
                      points.add(DrawingPoint(
                        offset: details.localPosition,
                        paint: Paint()
                          ..color = currentMode == DrawingMode.eraser 
                              ? Colors.white 
                              : currentColor
                          ..strokeWidth = currentMode == DrawingMode.eraser 
                              ? strokeWidth * 2 
                              : strokeWidth
                          ..strokeCap = StrokeCap.round
                          ..strokeJoin = StrokeJoin.round,
                        mode: currentMode,
                      ));
                    });
                  },
                  onPanUpdate: (details) {
                    setState(() {
                      points.add(DrawingPoint(
                        offset: details.localPosition,
                        paint: Paint()
                          ..color = currentMode == DrawingMode.eraser 
                              ? Colors.white 
                              : currentColor
                          ..strokeWidth = currentMode == DrawingMode.eraser 
                              ? strokeWidth * 2 
                              : strokeWidth
                          ..strokeCap = StrokeCap.round
                          ..strokeJoin = StrokeJoin.round,
                        mode: currentMode,
                      ));
                    });
                  },
                  onPanEnd: (details) {
                    setState(() {
                      points.add(null);
                    });
                  },
                  child: CustomPaint(
                    painter: DrawingPainter(points: points),
                    size: Size.infinite,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showColorPicker() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Choose Color'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildColorOption(Colors.black),
                _buildColorOption(Colors.red),
                _buildColorOption(Colors.blue),
                _buildColorOption(Colors.green),
                _buildColorOption(Colors.yellow),
                _buildColorOption(Colors.purple),
                _buildColorOption(Colors.orange),
                _buildColorOption(Colors.pink),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildColorOption(Color color) {
    return GestureDetector(
      onTap: () {
        setState(() {
          currentColor = color;
        });
        Navigator.pop(context);
      },
      child: Container(
        width: double.infinity,
        height: 40,
        margin: const EdgeInsets.symmetric(vertical: 4),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: currentColor == color ? Colors.black : Colors.grey[300]!,
            width: currentColor == color ? 3 : 1,
          ),
        ),
      ),
    );
  }
}

class DrawingPoint {
  final Offset offset;
  final Paint paint;
  final DrawingMode mode;

  DrawingPoint({
    required this.offset,
    required this.paint,
    required this.mode,
  });
}

enum DrawingMode {
  pen,
  eraser,
}

class DrawingPainter extends CustomPainter {
  final List<DrawingPoint?> points;

  DrawingPainter({required this.points});

  @override
  void paint(Canvas canvas, Size size) {
    for (int i = 0; i < points.length - 1; i++) {
      if (points[i] != null && points[i + 1] != null) {
        canvas.drawLine(points[i]!.offset, points[i + 1]!.offset, points[i]!.paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
