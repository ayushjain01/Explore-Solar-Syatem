import SwiftUI

struct MarsLightView: View {
    @StateObject var marsLightViewModel = MarsLightViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                ZStack(alignment: .bottomLeading) {
                    Text(StringConstants.kLblMars2)
                        .font(FontScheme.kRalewayRomanExtraBold(size: getRelativeHeight(34.0)))
                        .fontWeight(.heavy)
                        .foregroundColor(ColorConstants.DeepOrange500)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(92.0), height: getRelativeHeight(22.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(381.87))
                        .padding(.trailing, getRelativeWidth(245.6))
                    Text(StringConstants.kLbl42)
                        .font(FontScheme.kRalewayRomanExtraBold(size: getRelativeHeight(250.0)))
                        .fontWeight(.heavy)
                        .foregroundColor(ColorConstants.Bluegray100)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(130.0), height: getRelativeHeight(238.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(143.14))
                        .padding(.trailing, getRelativeWidth(210.1))
                    Image("img_mars")
                        .resizable()
                        .frame(width: getRelativeWidth(234.0), height: getRelativeWidth(234.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.bottom, getRelativeHeight(148.36))
                        .padding(.leading, getRelativeWidth(111.4))
                    Image("img_vector_orange_303")
                        .resizable()
                        .frame(width: getRelativeWidth(29.0), height: getRelativeHeight(21.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.bottom, getRelativeHeight(383.0))
                        .padding(.trailing, getRelativeWidth(316.0))
                }
                .hideNavigationBar()
                .frame(width: getRelativeWidth(345.0), height: getRelativeHeight(404.0),
                       alignment: .center)
                .padding(.trailing, getRelativeWidth(20.0))
                Text(StringConstants.kMsgTheRedPlanet)
                    .font(FontScheme.kRalewayRomanSemiBold(size: getRelativeHeight(14.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.Gray500)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(326.0), height: getRelativeHeight(90.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(21.0))
                    .padding(.leading, getRelativeWidth(7.0))
                    .padding(.trailing, getRelativeWidth(32.0))
            }
            .frame(width: getRelativeWidth(365.0), height: getRelativeHeight(516.0),
                   alignment: .trailing)
            .padding(.leading, getRelativeWidth(10.0))
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kLblGallery)
                    .font(FontScheme.kRalewayRomanRegular(size: getRelativeHeight(16.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.Gray700)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(72.0), height: getRelativeHeight(16.0),
                           alignment: .topLeading)
                    .padding(.leading, getRelativeWidth(7.0))
                    .padding(.trailing, getRelativeWidth(7.0))
            }
            .frame(width: getRelativeWidth(365.0), height: getRelativeHeight(16.0),
                   alignment: .trailing)
            .padding(.top, getRelativeHeight(51.0))
            .padding(.leading, getRelativeWidth(10.0))
            VStack(alignment: .trailing, spacing: 0) {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        Image("img_image5")
                            .resizable()
                            .frame(width: getRelativeWidth(180.0), height: getRelativeHeight(140.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .background(RoundedCorners(topLeft: 29.0, topRight: 29.0,
                                                       bottomLeft: 29.0, bottomRight: 29.0))
                        Image("img_rectangle4_9")
                            .resizable()
                            .frame(width: getRelativeWidth(180.0), height: getRelativeHeight(140.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .background(RoundedCorners(topLeft: 29.0, topRight: 29.0,
                                                       bottomLeft: 29.0, bottomRight: 29.0))
                            .padding(.leading, getRelativeWidth(24.0))
                        Image("img_rectangle5_8")
                            .resizable()
                            .frame(width: getRelativeWidth(180.0), height: getRelativeHeight(140.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .background(RoundedCorners(topLeft: 29.0, topRight: 29.0,
                                                       bottomLeft: 29.0, bottomRight: 29.0))
                            .padding(.leading, getRelativeWidth(24.0))
                    }
                    .frame(width: getRelativeWidth(358.0), height: getRelativeHeight(146.0),
                           alignment: .leading)
                }
                .padding(.leading)
                .padding(.leading)
            }
            .frame(width: getRelativeWidth(365.0), height: getRelativeHeight(146.0),
                   alignment: .trailing)
            .padding(.top, getRelativeHeight(14.0))
            .padding(.leading, getRelativeWidth(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(LinearGradient(gradient: Gradient(colors: [ColorConstants.LightBlue100,
                                                               ColorConstants.WhiteA700]),
            startPoint: .topLeading, endPoint: .bottomTrailing))
        .hideNavigationBar()
    }
}

struct MarsLightView_Previews: PreviewProvider {
    static var previews: some View {
        MarsLightView()
    }
}
