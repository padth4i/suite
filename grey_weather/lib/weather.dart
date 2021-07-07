import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'constants/constants.dart';

class WeatherApp extends StatefulWidget {
  WeatherApp({Key key}) : super(key: key);

  @override
  _WeatherAppState createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  bool isLoaded = false;
  Duration detailsLoadTime = Duration(milliseconds: 500);

  bool isCelsius = true;

  final now = DateTime.now();

  void loadDetails() {
    setState(() {
      isLoaded = true;
    });
  }

  @override
  void initState() {
    super.initState();
    Future<void>.delayed(Duration(seconds: 1), () {
      loadDetails();
    });
  }

  @override
  Widget build(BuildContext context) {
    // Call from API
    final weather = "rain";
    final temperatureC = 65;
    final temperatureF = 1.8 * temperatureC + 32;

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Container(
        child: AnimatedContainer(
          duration: detailsLoadTime,
          padding: isLoaded ? EdgeInsets.only(top: 0, left: 20) : EdgeInsets.only(top: 50, left: 20),
          child: AnimatedOpacity(
            duration: detailsLoadTime,
            opacity: isLoaded ? 1 : 0,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  left: MediaQuery.of(context).size.width / 3.5,
                  child: Icon(
                    now.hour >= 18 ? nightWeatherIcons[weather] : dayWeatherIcons[weather],
                    size: 326,
                    color: Theme.of(context).accentColor,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Main Street, Anyplace',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    Text(
                      DateFormat('EEEE, MMM d').format(now),
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isCelsius = !isCelsius;
                        });
                      },
                      child: Text(isCelsius ? '${temperatureC.toInt()}°C' : '${temperatureF.toInt()}°F', style: Theme.of(context).textTheme.bodyText2),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
