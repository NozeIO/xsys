import XCTest
@testable import xsys

final class xsysTests: XCTestCase {
  
  func testTimevalT() {
    let now = timeval.now
    XCTAssertTrue(now.tv_sec > 1636382560)
  }
  
  func testTimevalTComponents() {
    let value = timeval(seconds: 1636382560)
    XCTAssertEqual(value.tv_sec,  1636382560)
    XCTAssertEqual(value.tv_usec, 0)
    XCTAssertEqual(value.seconds, 1636382560)
    XCTAssertEqual(value.milliseconds, 1_636_382_560_000)

    let components = value.componentsInUTC
    XCTAssertEqual(components.tm_sec,   40)
    XCTAssertEqual(components.tm_min,   42)
    XCTAssertEqual(components.tm_hour,  14)
    XCTAssertEqual(components.tm_mday,   8)
    XCTAssertEqual(components.tm_mon,   10)
    XCTAssertEqual(components.tm_year, 121)
    XCTAssertEqual(components.tm_wday,   1)
    XCTAssertEqual(components.tm_yday, 311)
    XCTAssertEqual(components.tm_isdst,  0)
    XCTAssertEqual(components.tm_gmtoff, 0)

    let localComponents = value.componentsInLocalTime
    XCTAssertEqual(localComponents.tm_mday,   8) // could be different
    XCTAssertEqual(localComponents.tm_mon,   10)
    XCTAssertEqual(localComponents.tm_year, 121)
    XCTAssertEqual(localComponents.tm_wday,   1)
    XCTAssertEqual(localComponents.tm_yday, 311)
    XCTAssertEqual(localComponents.tm_isdst,  0)
  }
  
  static var allTests = [
    ( "testTimevalT"           , testTimevalT           ),
    ( "testTimevalTComponents" , testTimevalTComponents )
  ]
}
