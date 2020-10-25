//
//  ProgressViewBuilder.swift
//  DEBuilder
//
//  Created by DaEun Kim on 2020/10/14.
//

import UIKit

public class ProgressViewBuilder<Element: UIProgressView>: ViewBuilder<Element> {

  // MARK: Propereties

  private var progress: Float = 0
  private var observedProgress: Progress?
  private var progressViewStyle: UIProgressView.Style = .default
  private var progressTintColor: UIColor?
  private var progressImage: UIImage?
  private var trackTintColor: UIColor?
  private var trackImage: UIImage?

  // MARK: BuilderType

  override public func build() -> Element {
    return super.build()
      .with(\.progress, setTo: progress)
      .with(\.observedProgress, setTo: observedProgress)
      .with(\.progressViewStyle, setTo: progressViewStyle)
      .with(\.progressTintColor, setTo: progressTintColor)
      .with(\.progressImage, setTo: progressImage)
      .with(\.trackTintColor, setTo: trackTintColor)
      .with(\.trackImage, setTo: trackImage)
  }

  // MARK: Builder Method

  public func withProgress(_ progress: Float) -> ProgressViewBuilder {
    self.progress = progress
    return self
  }

  public func withObservedProgress(_ observedProgress: Progress?) -> ProgressViewBuilder {
    self.observedProgress = observedProgress
    return self
  }

  public func withProgressViewStyle(
    _ progressViewStyle: UIProgressView.Style
  ) -> ProgressViewBuilder {
    self.progressViewStyle = progressViewStyle
    return self
  }

  public func withProgressTintColor(_ progressTintColor: UIColor?) -> ProgressViewBuilder {
    self.progressTintColor = progressTintColor
    return self
  }

  public func withProgressImage(_ progressImage: UIImage?) -> ProgressViewBuilder {
    self.progressImage = progressImage
    return self
  }

  public func withTrackTintColor(_ trackTintColor: UIColor?) -> ProgressViewBuilder {
    self.trackTintColor = trackTintColor
    return self
  }

  public func withTrackImage(_ trackImage: UIImage?) -> ProgressViewBuilder {
    self.trackImage = trackImage
    return self
  }
}
