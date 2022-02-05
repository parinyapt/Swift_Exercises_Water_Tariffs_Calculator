//Create Date 03-02-2022
//64130010049 ปริญญา เติมกสิพาณิชย์

import Foundation
//input
var type:Int = 0
var volume:Float = 0.0
//process & output
var rate:Float = 0.0
var subtotal:Float = 0.0
var vat:Float = 0.0
var total:Float = 0.0
//input Type
repeat {
  print("""
  Type 1 : Residence
  Type 2 : Commerce, Government Agency, State Enterprise and Industry
  Enter Type (1 or 2) : 
  """, terminator: "")
  type = Int(readLine()!)!
} while type != 1 && type != 2
//input Volume
repeat {
  print("Enter Volume (cu.m.) : ", terminator: "")
  volume = Float(readLine()!)!
} while volume < 0
//Rate Check
if(type == 1){
  if(volume > 200){
    rate = 14.45
  }else if(volume >= 161){
    rate = 13.80
  }else if(volume >= 121){
    rate = 13.47
  }else if(volume >= 101){
    rate = 13.15
  }else if(volume >= 91){
    rate = 12.82
  }else if(volume >= 81){
    rate = 12.50
  }else if(volume >= 71){
    rate = 11.33
  }else if(volume >= 61){
    rate = 11.00
  }else if(volume >= 51){
    rate = 10.68
  }else if(volume >= 41){
    rate = 10.35
  }else if(volume >= 31){
    rate = 10.03
  }else{
    rate = 8.50
  }
}else{
  if(volume > 200){
    rate = 15.81
  }else if(volume >= 161){
    rate = 15.49
  }else if(volume >= 121){
    rate = 15.16
  }else if(volume >= 101){
    rate = 14.84
  }else if(volume >= 81){
    rate = 14.51
  }else if(volume >= 61){
    rate = 14.19
  }else if(volume >= 51){
    rate = 13.86
  }else if(volume >= 41){
    rate = 13.54
  }else if(volume >= 31){
    rate = 13.21
  }else if(volume >= 21){
    rate = 10.95
  }else if(volume >= 11){
    rate = 10.70
  }else{
    rate = 9.50
  }
}
//Calculate
subtotal = volume * rate
subtotal = type == 2 && subtotal < 90 ? 90 : subtotal
vat = subtotal * 0.07
total = subtotal + vat

print("""
-------------WATER TARIFFS-------------
Type : \(type)
Volume : \(volume) cu.m.
Rate : \(rate) Baht/cu.m.
---------------------------------------
Subtotal (Vat not included) : \(subtotal) Baht
Vat 7% : \(vat) Baht
Total (Vat included) : \(total) Baht
""")