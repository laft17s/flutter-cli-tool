# CLI TOOLS

## Test

To test the project execute this command on your terminal:

```
dart run bin/cli_tool.dart nombre_del_proyecto
```

## Package as global executable

### 1. Install the CLI globally using dart pub global activate

First, you need to install your CLI globally on your system. Make sure you are in the root directory of the CLI project, then run:

```
dart pub global activate --source path /path/to/cli_tool
```
### Add the Dart executables directory to the PATH

Dart places global executables in a specific directory. In order to run your CLI globally, make sure the Dart executables directory is in your PATH environment variable. Open your shell configuration file (for example, ~/.zshrc, ~/.bashrc, or ~/.bash_profile), and add the following line:

```
export PATH="$PATH":"$HOME/.pub-cache/bin"
```

then,

```
source ~/.zshrc   # O el archivo de configuración correspondiente
```
 Finally, run as global:

 ```
 cli_tool nombre_del_proyecto
 ```