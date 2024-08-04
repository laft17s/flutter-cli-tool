import 'dart:io';

void main(List<String> arguments) {
  final projectName =
      arguments.isNotEmpty ? arguments[0] : 'new_flutter_project';
  final dirs = [
    'lib/core/di',
    'lib/data/datasources',
    'lib/data/models',
    'lib/data/repositories',
    'lib/domain/entities',
    'lib/domain/repositories',
    'lib/domain/usecases',
    'lib/presentation/screens',
    'lib/presentation/viewmodels',
    'lib/presentation/widgets'
  ];

  final projectDir = Directory(projectName);

  if (projectDir.existsSync()) {
    print('El directorio $projectName ya existe.');
    return;
  }

  projectDir.createSync(recursive: true);

  for (var dir in dirs) {
    Directory('$projectName/$dir').createSync(recursive: true);
  }

  print('Estructura de directorios creada en $projectName.');
}
