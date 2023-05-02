import SwiftUI

struct VenusLightView: View {
    @StateObject var venusLightViewModel = VenusLightViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack(alignment: .trailing, spacing: 0) {
                ZStack(alignment: .bottomLeading) {
                    Text(StringConstants.kLblVenus2)
                        .font(FontScheme.kRalewayRomanExtraBold(size: getRelativeHeight(34.0)))
                        .fontWeight(.heavy)
                        .foregroundColor(ColorConstants.YellowA700)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(111.0), height: getRelativeHeight(34.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(370.61))
                        .padding(.trailing, getRelativeWidth(246.7))
                    Text(StringConstants.kLbl2)
                        .font(FontScheme.kRalewayRomanExtraBold(size: getRelativeHeight(250.0)))
                        .fontWeight(.heavy)
                        .foregroundColor(ColorConstants.Bluegray100)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(125.0), height: getRelativeHeight(250.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(126.02))
                        .padding(.trailing, getRelativeWidth(230.85))
                    Image("img_venus_1")
                        .resizable()
                        .frame(width: getRelativeWidth(268.0), height: getRelativeHeight(278.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.bottom, getRelativeHeight(125.36))
                        .padding(.leading, getRelativeWidth(97.4))
                    Image("img_vector_orange_303")
                        .resizable()
                        .frame(width: getRelativeWidth(29.0), height: getRelativeHeight(21.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.bottom, getRelativeHeight(383.0))
                        .padding(.trailing, getRelativeWidth(336.0))
                }
                .hideNavigationBar()
                .frame(width: getRelativeWidth(365.0), height: getRelativeHeight(404.0),
                       alignment: .leading)
                Text(StringConstants.kMsgTheHottestPla)
                    .font(FontScheme.kRalewayRomanSemiBold(size: getRelativeHeight(14.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.Gray500)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(314.0), height: getRelativeHeight(94.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(21.0))
                    .padding(.leading, getRelativeWidth(7.0))
                    .padding(.trailing, getRelativeWidth(43.0))
                Text(StringConstants.kLblGallery)
                    .font(FontScheme.kRalewayRomanRegular(size: getRelativeHeight(16.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.Gray700)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(72.0), height: getRelativeHeight(16.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(47.0))
                    .padding(.leading, getRelativeWidth(7.0))
                    .padding(.trailing, getRelativeWidth(286.0))
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        Image("img_image4")
                            .resizable()
                            .frame(width: getRelativeWidth(180.0), height: getRelativeHeight(140.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .background(RoundedCorners(topLeft: 29.0, topRight: 29.0,
                                                       bottomLeft: 29.0, bottomRight: 29.0))
                        Image("img_rectangle4_7")
                            .resizable()
                            .frame(width: getRelativeWidth(180.0), height: getRelativeHeight(140.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .background(RoundedCorners(topLeft: 29.0, topRight: 29.0,
                                                       bottomLeft: 29.0, bottomRight: 29.0))
                            .padding(.leading, getRelativeWidth(24.0))
                        Image("img_rectangle5_6")
                            .resizable()
                            .frame(width: getRelativeWidth(180.0), height: getRelativeHeight(140.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .background(RoundedCorners(topLeft: 29.0, topRight: 29.0,
                                                       bottomLeft: 29.0, bottomRight: 29.0))
                            .padding(.leading, getRelativeWidth(24.0))
                    }
                    .frame(width: getRelativeWidth(358.0), height: UIScreen.main.bounds.height,
                           alignment: .topLeading)
                }
                .padding(.leading, getRelativeWidth(7.0))
            }
            .frame(width: getRelativeWidth(365.0), height: UIScreen.main.bounds.height,
                   alignment: .topLeading)
            .background(LinearGradient(gradient: Gradient(colors: [ColorConstants.LightBlue100,
                                                                   ColorConstants.WhiteA700]),
                startPoint: .topLeading, endPoint: .bottomTrailing))
        }
        .frame(width: getRelativeWidth(365.0), height: UIScreen.main.bounds.height)
        .background(LinearGradient(gradient: Gradient(colors: [ColorConstants.LightBlue100,
                                                               ColorConstants.WhiteA700]),
            startPoint: .topLeading, endPoint: .bottomTrailing))
        .hideNavigationBar()
    }
}

struct VenusLightView_Previews: PreviewProvider {
    static var previews: some View {
        VenusLightView()
    }
}
