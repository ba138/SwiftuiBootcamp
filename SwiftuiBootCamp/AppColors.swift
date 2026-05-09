import SwiftUI

public extension Color {
    init(hex: String) {
        var hexString = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        if hexString.count == 3 {
            let chars = Array(hexString)
            hexString = String([chars[0], chars[0], chars[1], chars[1], chars[2], chars[2]])
        }
        var int: UInt64 = 0
        Scanner(string: hexString).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hexString.count {
        case 8:
            (a, r, g, b) = ((int >> 24) & 0xff, (int >> 16) & 0xff, (int >> 8) & 0xff, int & 0xff)
        case 6:
            (a, r, g, b) = (255, (int >> 16) & 0xff, (int >> 8) & 0xff, int & 0xff)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        self.init(.sRGB,
                  red: Double(r) / 255,
                  green: Double(g) / 255,
                  blue: Double(b) / 255,
                  opacity: Double(a) / 255)
    }

    init(argb: UInt32) {
        let a = Double((argb >> 24) & 0xFF) / 255.0
        let r = Double((argb >> 16) & 0xFF) / 255.0
        let g = Double((argb >> 8) & 0xFF) / 255.0
        let b = Double(argb & 0xFF) / 255.0
        self.init(.sRGB, red: r, green: g, blue: b, opacity: a)
    }

    init(_ argb: UInt32) {
        self.init(argb: argb)
    }
}

public enum AppColors {
    public static let primary = Color(0xFF1E88E5)
    public static let button = Color(0xFF34C759)
    public static let background = Color(0xFFF2F2F7)
    public static let textPrimary = Color(0xFF111111)
    public static let textSecondary = Color(0xFF6D6D72)
    public static let favorite = Color(0xFFFF4D6D)
}
