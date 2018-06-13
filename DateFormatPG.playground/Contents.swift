//: Playground - noun: a place where people can play

import UIKit

let dateComp = DateComponents()
let day = dateComp.day
let month = dateComp.month
let currentDate = Date()
let dateFormatter = DateFormatter()
dateFormatter.locale = Locale.current
dateFormatter.locale = Locale(identifier: "en_EN")
dateFormatter.dateStyle = .long //Long
var convertDate = dateFormatter.string(from: currentDate)

var dateAsString = "21-05-2018 04:02"
dateFormatter.dateFormat = "dd-MM-yyyy HH:mm"
var newDate = dateFormatter.date(from: dateAsString)

//Complex Date with Timezone
dateAsString = "Thu, 21 May 2018 04:04:23 GMT"
dateFormatter.dateFormat = "EEE, dd MM yyy HH:mm:ss zzz"
newDate = dateFormatter.date(from: dateAsString)

//Breakdown components
let calendar = Calendar.current
print(calendar)

/*let dateComponents = calendar.components([NSCalendar.Unit.Day, NSCalendar.Unit.Month, NSCalendar.Unit.Year, NSCalendar.Unit.WeekOfYear, NSCalendar.Unit.Hour, NSCalendar.Unit.Minute, NSCalendar.Unit.Second, NSCalendar.Unit.Nanosecond], fromDate: currentDate)

print("day = \(dateComponents.day)", "month = \(dateComponents.month)", "year = \(dateComponents.year)", "week of year = \(dateComponents.weekOfYear)", "hour = \(dateComponents.hour)", "minute = \(dateComponents.minute)", "second = \(dateComponents.second)", "nanosecond = \(dateComponents.nanosecond)" , separator: ", ", terminator: "")
 */
var components = DateComponents()
components.day = 5
components.month = 01
components.year = 2018
components.hour = 04
components.minute = 15
newDate = calendar.date(from: components)

