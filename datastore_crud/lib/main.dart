import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter/material.dart';
import 'package:amplify_api/amplify_api.dart';
import 'amplifyconfiguration.dart';
import 'models/ModelProvider.dart';
import 'models/Object.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _objId = "objId";

  @override
  void initState() {
    super.initState();
    _configureAmplify();
    // Amplify.DataStore.query(Object.classType);
  }

  void _configureAmplify() async {
    if (!mounted) return;
    final dataStorePlugin = AmplifyDataStore(modelProvider: ModelProvider.instance);
    Amplify.addPlugin(dataStorePlugin);

    Amplify.addPlugin(AmplifyAPI());
    try {
      await Amplify.configure(amplifyconfig);
    } on AmplifyAlreadyConfiguredException {
      print("Amplify was already configured. Was the app restarted?");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Amplify CRUD',
      theme: ThemeData(visualDensity: VisualDensity.adaptivePlatformDensity),
      home: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // CREATE
          FlatButton(onPressed: () => create(), child: Text('Create'), color: Colors.green, textColor: Colors.white),

          // READ ALL
          FlatButton(onPressed: () => readAll(), child: Text('Read ALL'), color: Colors.blue, textColor: Colors.white),

          // READ BY ID
          FlatButton(
              onPressed: () => readById(), child: Text('Read BY ID'), color: Colors.cyan, textColor: Colors.white),

          // UPDATE
          FlatButton(onPressed: () => update(), child: Text('Update'), color: Colors.orange, textColor: Colors.white),

          // DELETE
          FlatButton(onPressed: () => delete(), child: Text('Delete'), color: Colors.red, textColor: Colors.white),
        ],
      ),
    );
  }

  void create() async {
    final object = Object(id: _objId, value: "Don't you wish your object was hot like me?");
    try {
      await Amplify.DataStore.save(object);
      await Amplify.DataStore.query(Object.classType);
      print('Saved ${object.toString()}');
    } catch (e) {
      print(e);
    }
  }

  void readAll() async {
    try {
      final objects = await Amplify.DataStore.query(Object.classType);
      print(objects.toString());
    } catch (e) {
      print(e);
    }
  }

  Future<Object> readById() async {
    try {
      final objects = await Amplify.DataStore.query(Object.classType, where: Object.ID.eq(_objId));
      if (objects.isEmpty) {
        print('No objects with ID: $_objId');
        return null;
      }
      final object = objects.first;
      print(objects.toString());

      return object;
    } catch (e) {
      print(e);
      throw e;
    }
  }

  void update() async {
    try {
      final object = await readById();
      final updatedObject = object.copyWith(value: object.value + '[UPDATED]');

      await Amplify.DataStore.save(updatedObject);
      print('Updated object to ${updatedObject.toString()}');
    } catch (e) {
      print(e);
    }
  }

  void delete() async {
    try {
      final myObject = await readById();
      await Amplify.DataStore.delete(myObject);

      print('Deleted object with ID: ${myObject.id}');
    } catch (e) {
      print(e);
    }
  }
}
