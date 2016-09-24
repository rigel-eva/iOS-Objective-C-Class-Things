//
//  tempConvert.cpp
//  2592 - Temprature
//
//  Created by student on 9/14/16.
//  Copyright © 2016 sir_rigel. All rights reserved.
//

#include "tempConvert.hpp"
float farToCel(float farenheight){
    return(farenheight-32)*5/9;
}
float celToFar(float celcius){
    return celcius*9/5+32;
}
float celToKel(float celcius){
    return celcius+273.15;
}
float kelToCel(float kelvin){
    return kelvin -273.15;
}