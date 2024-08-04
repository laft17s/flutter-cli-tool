import 'dart:io';

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('Por favor, proporciona el nombre del proyecto.');
    return;
  }

  final projectName = arguments[0];
  final libDir = Directory('$projectName/lib');
  final dirs = [
    'core/di',
    'data/datasources',
    'data/models',
    'data/repositories',
    'domain/entities',
    'domain/repositories',
    'domain/usecases',
    'presentation/screens',
    'presentation/viewmodels',
    'presentation/widgets'
  ];

  final projectDir = Directory(projectName);

  if (projectDir.existsSync()) {
    print('El directorio $projectName ya existe.');

    if (libDir.existsSync()) {
      print('La carpeta lib ya existe.');
      for (var dir in dirs) {
        Directory('$projectName/lib/$dir').createSync(recursive: true);
      }
      print('Se han creado los subdirectorios en lib.');
    } else {
      print('La carpeta lib no existe. Creando...');
      libDir.createSync();
      for (var dir in dirs) {
        Directory('$projectName/lib/$dir').createSync(recursive: true);
      }
      File('$projectName/lib/main.dart').writeAsStringSync(
          '//TODO: If you thought about it, you can develop it!!');
      print(
          'La estructura de directorios y el archivo main.dart se han creado en lib.');
    }
  } else {
    projectDir.createSync(recursive: true);
    print('Se creó el directorio $projectName.');

    libDir.createSync();
    print('Se creó la carpeta lib.');

    for (var dir in dirs) {
      Directory('$projectName/lib/$dir').createSync(recursive: true);
    }

    File('$projectName/lib/main.dart').writeAsStringSync(
        '//TODO: If you thought about it, you can develop it!!');
    print(
        'La estructura de directorios y el archivo main.dart se han creado en lib.');
  }
}
