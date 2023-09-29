
# ind_utils

ind_utils package use this package for SizedBox and also Padding. No Need to write long code for these`

## Installation

1. Add the latest version of package to your pubspec.yaml (and run`dart pub get`):
```yaml
dependencies:
  ind_utils: ^0.0.1
```
2. Import the package and use it in your Flutter App.
```dart
import 'package:ind_utils/ind_utils.dart';
```

## Example
Use for SizedBox and Padding Widget

-  SizedBox
- Padding

<hr>

<table>
<tr>
<td>

```dart

class INDWidgets extends StatelessWidget {
  const INDWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          /// don't use like this
          ///  Padding(
          ///  padding:  EdgeInsets.symmetric(vertical: 8.0 , horizontal: 10),
          ///  child: const Text("Welcome"),
          /// )
          /// User Like this
          const Text("Welcome").pSym(v: 10, h: 20),

          /// don't use like this
          ///    Padding(
          ///        padding: const EdgeInsets.only(left: 8.0 , right: 0 , bottom: 9 , top: 4),
          ///        child: Text("Welcome"),
          ///     )
          /// use like this
          const Text("Welcome").pOnly(b: 10, l: 10, r: 10, t: 10),

          ///  Don't use like this
          ///   Padding(
          /// padding: EdgeInsets.all(10),
          ///      child: const Text("Welcome"),
          /// )
          ///  Use Like This
          const Text("Welcome").pAll(a: 10),

          ///  Don't use like this
          ///  Padding(
          ///  padding: EdgeInsets.zero,
          ///    child: const Text("Welcome"),
          /// )
          /// use like this
          const Text("Welcome").pZ(),

          /// Don't use like this if you wanna space between two widgets
          /// SizedBox(
          ///   height: 50,
          /// )
          /// Use like this
          50.hBox,

          /// Don't use like this if you wanna space between two widgets
          /// SizedBox(
          ///   width: 50,
          /// )
          /// Use like this
          50.wBox,
        ],
      ),
    );
  }
}
```

</td>
<td>
</td>
</tr>
</table>

## Next Goals

- [x] Add Toast Message.

- [x] We will Explore more widget what ever need every time 

- [ ] Add more ind_utils to the package.
