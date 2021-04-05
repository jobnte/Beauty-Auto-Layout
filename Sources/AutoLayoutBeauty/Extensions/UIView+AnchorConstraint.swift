//
//  UIView+AnchorConstraint.swift
//  
//
//  Created by Jorge Bustamante on 4/04/21.
//

import UIKit

public extension UIView {

  /// Set any constraint in a clean way.
  ///
  /// - Parameter anchorConstraints: A list of `AanchorConstraint` enum.
  func constraints(_ anchorConstraints: AnchorConstraint...) {
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
