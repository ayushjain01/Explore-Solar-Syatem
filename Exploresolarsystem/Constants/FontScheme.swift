import Foundation
import SwiftUI

class FontScheme: NSObject {
    static func kRalewayRomanExtraBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kRalewayRomanExtraBold, size: size)
    }

    static func kRalewayRomanMedium(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kRalewayRomanMedium, size: size)
    }

    static func kRalewayItalicMedium(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kRalewayItalicMedium, size: size)
    }

    static func kRalewayRomanRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kRalewayRomanRegular, size: size)
    }

    static func kRalewayRomanSemiBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kRalewayRomanSemiBold, size: size)
    }

    static func fontFromConstant(fontName: String, size: CGFloat) -> Font {
        var result = Font.system(size: size)

        switch fontName {
        case "kRalewayRomanExtraBold":
            result = self.kRalewayRomanExtraBold(size: size)
        case "kRalewayRomanMedium":
            result = self.kRalewayRomanMedium(size: size)
        case "kRalewayItalicMedium":
            result = self.kRalewayItalicMedium(size: size)
        case "kRalewayRomanRegular":
            result = self.kRalewayRomanRegular(size: size)
        case "kRalewayRomanSemiBold":
            result = self.kRalewayRomanSemiBold(size: size)
        default:
            result = self.kRalewayRomanExtraBold(size: size)
        }
        return result
    }

    enum FontConstant {
        /**
         * Please Add this fonts Manually
         */
        static let kRalewayRomanExtraBold: String = "RalewayRoman-ExtraBold"
        /**
         * Please Add this fonts Manually
         */
        static let kRalewayRomanMedium: String = "RalewayRoman-Medium"
        /**
         * Please Add this fonts Manually
         */
        static let kRalewayItalicMedium: String = "RalewayItalic-Medium"
        /**
         * Please Add this fonts Manually
         */
        static let kRalewayRomanRegular: String = "RalewayRoman-Regular"
        /**
         * Please Add this fonts Manually
         */
        static let kRalewayRomanSemiBold: String = "RalewayRoman-SemiBold"
    }
}
