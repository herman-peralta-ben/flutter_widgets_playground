# flutter_widgets_playground

A Playground project to play around with Flutter Widgets.

## Getting started

This project uses `FVM` (Flutter Version Management). When using terminal, make sure to prefix `flutter` and `dart` commands with `fvm`, e.g. `fvm flutter pub get`.

## FVM

* Files and Dirs
    - `.fvmrc`: Indicates Flutter version
    - `.fvm`: Ignored in git, contains symlinks to the local Flutter installations on FVM.
    - `.vscode/settings.json`: Includes `"dart.flutterSdkPath": ".fvm/versions/stable"` which tells VSCode to use the local Flutter version.
        - To confirm the Flutter version used on VSCode, run `>Flutter: Run Flutter Doctor` from the command pallete `Cmd+Shift+P`, and should see a line like `Flutter version 3.41.1 on channel stable at /Users/herman.peralta/fvm/versions/stable`

* Set the last stable Flutter version
```bash
fvm use stable
```
* Update the dependencies
```bash
fvm flutter pub get
```
