//
//  AnchorConstraint.swift
//  
//
//  Created by Jorge Bustamante on 4/04/21.
//

import UIKit

public enum AnchorConstraint {
  case top(NSLayoutYAxisAnchor, padding: CGFloat = 0)
  case bottom(NSLayoutYAxisAnchor, padding: CGFloat = 0)
  case leading(NSLayoutXAxisAnchor, padding: CGFloat = 0)
  case trailing(NSLayoutXAxisAnchor, padding: CGFloat = 0)
  case centerX(NSLayoutXAxisAnchor, padding: CGFloat = 0)
  case centerY(NSLayoutYAxisAnchor, padding: CGFloat = 0)
  case height(CGFloat)
  case width(CGFloat)
}
