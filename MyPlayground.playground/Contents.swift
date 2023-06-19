import UIKit
import Foundation

var greeting = "Hello, playground"


let mainBundle = Bundle.main
let bundleURL = mainBundle.bundleURL
let bundlePath = mainBundle.bundlePath
let fileURL = mainBundle.url(forResource: "test", withExtension: "mp3")
let filePaht = mainBundle.path(forResource: "test", ofType: "pcm")
let identifier = mainBundle.bundleIdentifier
let info = mainBundle.infoDictionary
let bundleId = mainBundle.object(forInfoDictionaryKey: "CFBundleName")
