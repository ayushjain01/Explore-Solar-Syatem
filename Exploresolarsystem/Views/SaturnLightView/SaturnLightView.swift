import SwiftUI

struct SaturnLightView: View {
    @StateObject var saturnLightViewModel = SaturnLightViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack(alignment: .trailing, spacing: 0) {
                ZStack(alignment: .topTrailing) {
                    Text(StringConstants.kLbl6)
                        .font(FontScheme.kRalewayRomanExtraBold(size: getRelativeHeight(250.0)))
                        .fontWeight(.heavy)
                        .foregroundColor(ColorConstants.Bluegray100)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(131.0), height: getRelativeHeight(250.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(110.75))
                        .padding(.trailing, getRelativeWidth(220.85))
                    Image("img_saturn")
                        .resizable()
                        .frame(width: getRelativeWidth(315.0), height: getRelativeHeight(271.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.bottom, getRelativeHeight(89.0))
                        .padding(.leading, getRelativeWidth(48.4))
                    Image("img_vector_orange_303")
                        .resizable()
                        .frame(width: getRelativeWidth(29.0), height: getRelativeHeight(21.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.bottom, getRelativeHeight(338.64))
                        .padding(.trailing, getRelativeWidth(334.0))
                }
                .hideNavigationBar()
                .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(360.0),
                       alignment: .trailing)
            }
            .frame(width: getRelativeWidth(365.0), height: getRelativeHeight(360.0),
                   alignment: .trailing)
            .padding(.leading, getRelativeWidth(10.0))
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kLblSaturn2)
                    .font(FontScheme.kRalewayRomanExtraBold(size: getRelativeHeight(34.0)))
                    .fontWeight(.heavy)
                    .foregroundColor(ColorConstants.DeepPurpleA201)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(130.0), height: getRelativeHeight(34.0),
                           alignment: .topLeading)
                    .padding(.leading, getRelativeWidth(7.0))
                    .padding(.trailing, getRelativeWidth(7.0))
            }
            .frame(width: getRelativeWidth(365.0), height: getRelativeHeight(34.0),
                   alignment: .trailing)
            .padding(.top, getRelativeHeight(10.0))
            .padding(.leading, getRelativeWidth(10.0))
            VStack {
                Text(StringConstants.kMsgAGasGiantWit)
                    .font(FontScheme.kRalewayRomanSemiBold(size: getRelativeHeight(14.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.Gray500)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(326.0), height: getRelativeHeight(73.0),
                           alignment: .topLeading)
                    .padding(.leading, getRelativeWidth(7.0))
                    .padding(.trailing, getRelativeWidth(32.0))
            }
            .frame(width: getRelativeWidth(365.0), height: getRelativeHeight(73.0),
                   alignment: .trailing)
            .padding(.top, getRelativeHeight(21.0))
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
            .padding(.top, getRelativeHeight(68.0))
            .padding(.leading, getRelativeWidth(10.0))
            VStack(alignment: .trailing, spacing: 0) {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        Image("img_rectangle4_4")
                            .resizable()
                            .frame(width: getRelativeWidth(180.0), height: getRelativeHeight(140.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .background(RoundedCorners(topLeft: 29.0, topRight: 29.0,
                                                       bottomLeft: 29.0, bottomRight: 29.0))
                        Image("img_rectangle4_11")
                            .resizable()
                            .frame(width: getRelativeWidth(180.0), height: getRelativeHeight(140.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .background(RoundedCorners(topLeft: 29.0, topRight: 29.0,
                                                       bottomLeft: 29.0, bottomRight: 29.0))
                            .padding(.leading, getRelativeWidth(24.0))
                        Image("img_rectangle5_9")
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
            .padding(.top, getRelativeHeight(9.0))
            .padding(.leading, getRelativeWidth(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(LinearGradient(gradient: Gradient(colors: [ColorConstants.LightBlue100,
                                                               ColorConstants.WhiteA700]),
            startPoint: .topLeading, endPoint: .bottomTrailing))
        .hideNavigationBar()
    }
}

struct SaturnLightView_Previews: PreviewProvider {
    static var previews: some View {
        SaturnLightView()
    }
}
