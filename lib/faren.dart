import 'dart:math';

class Game{
  double answer = 0;

  double celsiustofahrenheit(double num){
    answer = (num*9/5)+32;
    return answer;
  }
  double celsiustokelvin(double num){
    answer = num+273.15;
    return answer;
  }
  double fahrenheittocelsius(double num){
    answer = (num-32)*5/9;
    return answer;
  }
  double fahrenheittokelvin(double num){
    answer = (num-32)*5/9+273.15;
    return answer;
  }
  double kelvintocelsius(double num){
    answer = num-273.15;
    return answer;
  }
  double kelvintofahrenheit(double num){
    answer = (num-273.15)*9/5+32;
    return answer;
  }
}