# Flutter Provider

## Depend on it

>   dependencies:
>
>>      provider: ^4.0.4

## Install it

> $ flutter pub get

## Import it

> import 'package:provider/provider.dart';


## Create provider directory

> create provider file
>
> extend your class like this => class MyClass with ChangeNotifier
>
>> Create getter and setter for this class. In the setter, add this line => notifyListeners();
>

## Single Provider Instance | On Main function

> Import provider package with => import 'package:provider/provider.dart';
>
> In Main() file, wrap MaterialApp() widget with => ChangeNotifierProvider()
>
>> Add this atribute to the widget => create: (context) => MyClass(),
>
>> Import the class => import 'package:flutterapp/src/providers/MyClass.dart';


## Multiple Provider Instances | On Main function

> Don't use ChangeNotifierProvider. Use instead MultiProvider().
>
>> Change 'create' or 'builder' to ' providers: [] ' and then you add 'ChangeNotifierProvider(create: (context) => MyClass()); '

### With Context - On Pages | Routes

> You could add a line like this to update something => final myclass = Provider.of<MyClass>(context);
>
>> Import the class => import 'package:flutterapp/src/providers/MyClass.dart';
>
> Now you can access the setter or getter function inside this route | page like this => myclass.mysetterfunction
>
> Important: if you have any other page widget that you want to manage state, you must import the provider file (MyClass) and provider package!

### Without context - On Pages | Routes

> Wrap the widget with Consumer<MyClass> and his builder
>
>> Consumer<MyClass>(
          builder: (context, myClassAccessor , _) => WidgetToUpdate(attr : myClass.attr) );

