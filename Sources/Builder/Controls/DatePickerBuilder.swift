//
//  DatePickerViewBuilder.swift
//  DEBuilder
//
//  Created by DaEun Kim on 2020/10/14.
//

import UIKit

public class DatePickerBuilder<Element: UIDatePicker>: ControlBuilder<Element> {

  // MARK: Property

  private var calendar: Calendar?
  private var date: Date = Date()
  private var locale: Locale?
  private var timeZone: TimeZone?
  private var datePickerMode: UIDatePicker.Mode = .dateAndTime
  private var maximumDate: Date?
  private var minimumDate: Date?
  private var minuteInterval: Int = 1
  private var countDownDuration: TimeInterval = 0

  // MARK: BuilderType

  override public func build() -> Element {
    return super.build()
      .with(\.calendar, setTo: calendar)
      .with(\.date, setTo: date)
      .with(\.locale, setTo: locale)
      .with(\.timeZone, setTo: timeZone)
      .with(\.datePickerMode, setTo: datePickerMode)
      .with(\.maximumDate, setTo: maximumDate)
      .with(\.minimumDate, setTo: minimumDate)
      .with(\.minuteInterval, setTo: minuteInterval)
      .with(\.countDownDuration, setTo: countDownDuration)
  }

  // MARK: Builder Method

  public func withCalendar(_ calendar: Calendar?) -> DatePickerBuilder {
    self.calendar = calendar
    return self
  }

  public func withDate(_  date: Date) -> DatePickerBuilder {
    self.date = date
    return self
  }

  public func withLocale(_ locale: Locale?) -> DatePickerBuilder {
    self.locale = locale
    return self
  }

  public func withTimeZone(_ timeZone: TimeZone?) -> DatePickerBuilder {
    self.timeZone = timeZone
    return self
  }

  public func withDatePickerMode(_ datePickerMode: UIDatePicker.Mode) -> DatePickerBuilder {
    self.datePickerMode = datePickerMode
    return self
  }

  public func withMaximumDate(_ maximumDate: Date?) -> DatePickerBuilder {
    self.maximumDate = maximumDate
    return self
  }

  public func withMinimumDate(_ minimumDate: Date?) -> DatePickerBuilder {
    self.minimumDate = minimumDate
    return self
  }

  public func withMinuteInterval(_  minuteInterval: Int) -> DatePickerBuilder {
    self.minuteInterval = minuteInterval
    return self
  }

  public func withCountDownDuration(_ countDownDuration: TimeInterval) -> DatePickerBuilder {
    self.countDownDuration = countDownDuration
    return self
  }
}
