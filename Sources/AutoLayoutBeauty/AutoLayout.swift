//
//  AutoLayout.swift
//  
//
//  Created by Jorge Bustamante on 4/04/21.
//

import UIKit

/// A `property wrapper` to create views without
/// the needed of put `translateAutoresizingMaskIntoConstraint` every time.
@propertyWrapper
public struct AutoLayout<T: UIView> {

  public var wrappedValue: T {
    didSet {
      wrappedValue.translatesAutoresizingMaskIntoConstraints = false
    }
  }

  public init(wrappedValue: T) {
    self.wrappedValue = wrappedValue
    wrappedValue.translatesAutoresizingMaskIntoConstraints = false
  }
}

/*

 import UIKit

 public extension UIView {

     /// Set any constraint in a clean way.
     ///
     /// - Parameter anchorConstraints: A list of `AanchorConstraint` enum.
     func constraint(_ anchorConstraints: AnchorConstraint...) {
         anchorConstraints.forEach { anchorConstraint in
             switch anchorConstraint {
             case .top(let anchor, let padding):
                 topAnchor.constraint(equalTo: anchor, constant: padding).isActive = true
             case .bottom(let anchor, let padding):
                 bottomAnchor.constraint(equalTo: anchor, constant: padding).isActive = true
             case .centerX(let anchor, let padding):
                 centerXAnchor.constraint(equalTo: anchor, constant: padding).isActive = true
             case .centerY(let anchor, let padding):
                 centerYAnchor.constraint(equalTo: anchor, constant: padding).isActive = true
             case .leading(let anchor, let padding):
                 leadingAnchor.constraint(equalTo: anchor, constant: padding).isActive = true
             case .trailing(let anchor, let padding):
                 trailingAnchor.constraint(equalTo: anchor, constant: padding).isActive = true
             case .height(let height):
                 heightAnchor.constraint(equalToConstant: height).isActive = true
             case .width(let width):
                 widthAnchor.constraint(equalToConstant: width).isActive = true
             }
         }
     }

 }

 public enum AnchorConstraint {
     case top(NSLayoutYAxisAnchor, CGFloat)
     case bottom(NSLayoutYAxisAnchor, CGFloat)
     case leading(NSLayoutXAxisAnchor, CGFloat)
     case trailing(NSLayoutXAxisAnchor, CGFloat)
     case centerX(NSLayoutXAxisAnchor, CGFloat)
     case centerY(NSLayoutYAxisAnchor, CGFloat)
     case height(CGFloat)
     case width(CGFloat)
 }
 */
