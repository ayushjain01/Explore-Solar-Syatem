import SwiftUI

struct Card1Cell: View {
    var body: some View {
        ZStack(alignment: .center) {
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kLblExplore)
                    .font(FontScheme.kRalewayRomanExtraBold(size: getRelativeHeight(35.0)))
                    .fontWeight(.heavy)
                    .foregroundColor(ColorConstants.Orange301)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(129.0), height: getRelativeHeight(35.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(79.0))
                    .padding(.horizontal, getRelativeWidth(29.0))
                Text(StringConstants.kLblMercury)
                    .font(FontScheme.kRalewayItalicMedium(size: getRelativeHeight(25.0)))
                    .fontWeight(.medium)
                    .foregroundColor(ColorConstants.Orange300)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(90.0), height: getRelativeHeight(25.0),
                           alignment: .leading)
                    .padding(.horizontal, getRelativeWidth(29.0))
                ZStack(alignment: .trailing) {
                    Text(StringConstants.kMsgTheSmallestAn)
                        .font(FontScheme.kRalewayRomanMedium(size: getRelativeHeight(16.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.WhiteA700)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(208.0), height: getRelativeHeight(58.0),
                               alignment: .leading)
                        .padding(.bottom, getRelativeHeight(49.63))
                        .padding(.trailing, getRelativeWidth(49.0))
                    Text(StringConstants.kLbl1)
                        .font(FontScheme.kRalewayRomanExtraBold(size: getRelativeHeight(200.0)))
                        .fontWeight(.heavy)
                        .foregroundColor(ColorConstants.Bluegray10070)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(88.0), height: getRelativeHeight(124.0),
                               alignment: .leading)
                        .padding(.leading, getRelativeWidth(169.4))
                }
                .hideNavigationBar()
                .frame(width: getRelativeWidth(257.0), height: getRelativeHeight(124.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(9.0))
                .padding(.bottom, getRelativeHeight(12.0))
                .padding(.horizontal, getRelativeWidth(11.0))
            }
            .frame(width: getRelativeWidth(298.0), height: getRelativeHeight(290.0),
                   alignment: .leading)
            .background(RoundedCorners(topLeft: 30.0, topRight: 30.0, bottomLeft: 30.0,
                                       bottomRight: 30.0)
                    .fill(ColorConstants.Gray902))
            .padding(.top, getRelativeHeight(157.0))
            VStack {
                Image("img_mercury")
                    .resizable()
                    .frame(width: getRelativeWidth(261.0), height: getRelativeHeight(250.0),
                           alignment: .leading)
                    .scaledToFit()
                VStack {
                    Button(action: {}, label: {
                        Image("img_gobutton_gray_902")
                    })
                    .frame(width: getRelativeWidth(58.0), height: getRelativeWidth(60.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 30.0, topRight: 30.0, bottomLeft: 30.0,
                                               bottomRight: 30.0)
                            .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                        .Amber600,
                                    ColorConstants
                                        .YellowA400B2]),
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing)))
                    .padding(.all, getRelativeWidth(10.0))
                    .padding(.vertical, getRelativeHeight(10.0))
                    .padding(.horizontal, getRelativeWidth(10.0))
                }
                .frame(width: getRelativeWidth(78.0), height: getRelativeWidth(80.0),
                       alignment: .leading)
                .background(RoundedCorners(topLeft: 40.0, topRight: 40.0, bottomLeft: 40.0,
                                           bottomRight: 40.0)
                        .fill(ColorConstants.Gray902))
                .padding(.top, getRelativeHeight(157.0))
                .padding(.horizontal, getRelativeWidth(92.0))
            }
            .frame(width: getRelativeWidth(261.0), height: getRelativeHeight(487.0),
                   alignment: .leading)
            .padding(.horizontal, getRelativeWidth(18.0))
        }
        .hideNavigationBar()
        .frame(width: getRelativeWidth(298.0), alignment: .leading)
    }
}

/* struct Card1Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Card1Cell()
 }
 } */
