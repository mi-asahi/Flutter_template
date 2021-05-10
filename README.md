

### Setup

```shell script
$ make setup
$ export PATH="$PATH":"$HOME/.pub-cache/bin" # Add your run-commands (.zshrc, .bashrc, etc)
$ make dependencies
$ make build-runner
```

**And set your Android Studio for FVM path.**  
<img height="180px" src="https://github.com/wasabeef/art/raw/master/flutter-architecture-blueprints/fvm-intellij-env.png"/>

<br/>


**And set your VS Code for FVM path.**  
add this to `{project}/.vscode/settings.json`
```json
{
    "dart.flutterSdkPath": "../fvm/flutter_sdk"
}
```

### About Flavor

This project use [flutter_flavorizr](https://pub.dev/packages/flutter_flavorizr) to generate flavors of both android and iOS .

> ## NOTICE
>
> NOTICE: Android applicationId must follow the [naming rules](https://developer.android.com/studio/build/application-id)
>
> NOTICE: run generate command will rewrite app.dart

### MVVM
<img height="520px" src="https://github.com/wasabeef/art/raw/master/flutter-architecture-blueprints/MVVM.jpg" />

