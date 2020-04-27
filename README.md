# nepninja
Reuse the beautiful animated widgets with less effort

## Sample
![](https://github.com/khadkarajesh/nepninja/blob/master/assets/images/circular_animated_button.gif)

## Usage

```dart

 CircularProgressButton(
            height: 55,
            width: 200,
            borderRadius: 30,
            backgroundColor: Colors.lightBlueAccent,
            fadeDurationInMilliSecond: 400,
            text: "Sign In",
            fontSize: 30,
            progressIndicatorColor: Colors.pinkAccent,
            onTap: (reset) {
              makeRequest(reset);
            },
          )

 # reset state once validation error or network fails
 void makeRequest(Function reset) {
    Future.delayed(Duration(seconds: 3), () {
      reset();
    });
  }

```

## Article
You can read further more detail about implementation over this [article](https://medium.com/@rajesh_khadka/flutter-animation-challenge-1-5ce9bed65161).
