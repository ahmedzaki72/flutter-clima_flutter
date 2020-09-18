import 'package:flutter/material.dart';
import 'location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:clima/services/weather.dart';



class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {


  @override
  void initState() {
    super.initState();
    getLocationData();
    // print('get weather by longitude and latitude');
  }

  // @override
  // void deactivate() {
  //   // TODO: implement deactivate
  //   super.deactivate();
  // }

  void getLocationData() async {

     var weatherData = await WeatherModel().getLocationWeather();

     Navigator.push(context, MaterialPageRoute(builder: (context){
       return LocationScreen(locationWeather: weatherData,);
     }));
  }



  @override
  Widget build(BuildContext context) {

    /// this is try erro not logic
    // String myMargin = 'abc';
    // double myMarginAsDouble;
    //
    // try {
    //   myMarginAsDouble = double.parse(myMargin);
    // } catch (e) {
    //   print(e);
    // }

    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 100.0,
        ),
      ),
    );
  }
}
