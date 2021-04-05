import XCTest
@testable import AutoLayoutBeauty

final class AutoLayoutBeautyTests: XCTestCase {

  func testNumberOfConstraints() {
    // Create label view
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false

    // Create container view
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false

    // Append to parent view
    view.addSubview(label)

    // Set 4 constraints
    label.constraints(.top(view.topAnchor),
                      .leading(view.leadingAnchor),
                      .trailing(view.trailingAnchor),
                      .bottom(view.bottomAnchor))

    XCTAssertEqual(label.constraints.count, 4)
  }

  static var allTests = [
    ("testNumberOfConstraints", testNumberOfConstraints),
  ]
}
