import Foundation

var width: Float = 3.4
var height: Float = 2.1

var bucketsOfPaint: Int {
    get {
        let area = width * height
        let areaCoveredPerBucket: Float = 1.5
        let numberOfBuckets = area / areaCoveredPerBucket
        let ceiledBuckets = ceil(numberOfBuckets)
        return Int(ceiledBuckets)
    }
    set {
        let areaCanCover = Double(newValue) * 1.5
        print("This amount of paint can cover of \(areaCanCover)")
    }
}

print(bucketsOfPaint)
print(width * height)

bucketsOfPaint = 8
