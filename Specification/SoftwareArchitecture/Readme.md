# Software Architecture isn't ready (Draft 1)

some info:
IoC container Android:
https://developer.android.com/training/dependency-injection
https://developer.android.com/training/dependency-injection/hilt-android

IoC container Flutter:

lightweight:
https://docs.flutter.dev/development/data-and-backend/state-mgmt/simple

heavyweight but fundamrntsl and scalable:
https://www.mitrais.com/news-updates/getting-started-with-flutter-bloc-pattern/

other:
injector
- похоже больше на service locator чем на DI
   https://pub.dev/packages/injector
- https://github.com/google/inject.dart



SOLID:
https://youtube.com/playlist?list=PLmqFxxywkatQNWLG1IZYUhKoQrnuZHqaK

MVC, MVP, MVVM:
https://habr.com/ru/company/mobileup/blog/313538/?_ga=2.84742493.539951051.1666797625-951758729.1664898225
https://medium.com/@ankit.sinhal/mvc-mvp-and-mvvm-design-pattern-6e169567bbad
![Image](https://user-images.githubusercontent.com/45210795/198054831-6a0b492a-f74c-4fc6-88c6-e3488402e63f.png)


draw.io link:
https://app.diagrams.net/#G17zhYh2qk37QgLhyynme0vzYZO9Z538Fd


<br>
<br>
<br>
<br>
<br>

#### Scenarios
1. Developer story. [TODO: issue reference]()<br>
**On device button event scenario**.<br>
When **on device button event scenario** is launched - then the storage of the log should be updated,<br>
and if it is **Active state** of the app - then the view of the log should be updated regarding the **filter text input** content.<br>
2. User story. [TODO: issue reference]()<br>
**Clear log scenario**.<br>
As a user, I want to have an option to clear the log.<br>
When **clear log scenario** is launched - it opens the **clear log confirmation window**.<br>
4. User story. [TODO: issue reference]()<br>
**On filter text changed scenario**.<br>
5. Product Owner story. [TODO: issue reference]()<br>
**Show About scenario**.<br>
When **show About scenario** is launched - it **About app screen** opens.<br>
6. User story. [TODO: issue reference]()<br>
**Quit app scenario**.<br>
As a user, I want to have an option to quit tha app.<br>
When a **quit app scenario** is launched - then the app closes.<br>
<br>

#### Events
1. Developer story. [TODO: issue reference]()<br>
**On device button event**.<br>
When some device physical button was pressed - the **on device button event scenario** should be launched.
2. Developer story. [TODO: issue reference]()<br>
**On paused**.<br>
...
3. Developer story. [TODO: issue reference]()<br>
**On actived**.<br>
...
4. Developer story. [TODO: issue reference]()<br>
**On opened**.<br>
...
<br>

#### States
**Closed state** - the app is closed.<br>
**Active state** - the app is application visible on the screen.<br>
**Paused state** - the app is not in **active state** and not in **closed state**.<br>
1. Developer story. [TODO: issue reference]()<br>
**Closed state**.<br>
If the app is not running, there should be background process<br>
to be able to handle **on device button event**.
<br>
