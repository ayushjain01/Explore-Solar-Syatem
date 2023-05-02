import SwiftUI

struct JupiterLightView: View {
    @StateObject var jupiterLightViewModel = JupiterLightViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack(alignment: .trailing, spacing: 0) {
                ZStack(alignment: .topTrailing) {
                    Text(StringConstants.kLbl5)
                        .font(FontScheme.kRalewayRomanExtraBold(size: getRelativeHeight(250.0)))
                        .fontWeight(.heavy)
                        .foregroundColor(ColorConstants.Bluegray100)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(125.0), height: getRelativeHeight(250.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(125.25))
                        .padding(.trailing, getRelativeWidth(247.0))
                    Image("img_jupiter_1")
                        .resizable()
                        .frame(width: getRelativeWidth(315.0), height: getRelativeHeight(330.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.bottom, getRelativeHeight(45.0))
                        .padding(.leading, getRelativeWidth(57.25))
                    Image("img_vector_orange_303")
                        .resizable()
                        .frame(width: getRelativeWidth(29.0), height: getRelativeHeight(21.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.bottom, getRelativeHeight(347.64))
                        .padding(.trailing, getRelativeWidth(336.15))
                }
                .hideNavigationBar()
                .frame(width: getRelativeWidth(372.0), height: getRelativeHeight(375.0),
                       alignment: .trailing)
            }
            .frame(width: getRelativeWidth(372.0), height: getRelativeHeight(375.0),
                   alignment: .trailing)
            .padding(.leading, getRelativeWidth(10.0))
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kLblJupiter2)
                    .font(FontScheme.kRalewayRomanExtraBold(size: getRelativeHeight(34.0)))
                    .fontWeight(.heavy)
                    .foregroundColor(ColorConstants.Orange302)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(134.0), height: getRelativeHeight(34.0),
                           alignment: .topLeading)
                    .padding(.horizontal, getRelativeWidth(14.0))
            }
            .frame(width: getRelativeWidth(372.0), height: getRelativeHeight(34.0),
                   alignment: .trailing)
            .padding(.leading, getRelativeWidth(10.0))
            VStack {
                Text(StringConstants.kMsgTheLargestPla2)
                    .font(FontScheme.kRalewayRomanSemiBold(size: getRelativeHeight(14.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.Gray500)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(326.0), height: getRelativeHeight(94.0),
                           alignment: .topLeading)
                    .padding(.horizontal, getRelativeWidth(14.0))
            }
            .frame(width: getRelativeWidth(372.0), height: getRelativeHeight(94.0),
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
                    .padding(.horizontal, getRelativeWidth(14.0))
            }
            .frame(width: getRelativeWidth(372.0), height: getRelativeHeight(16.0),
                   alignment: .trailing)
            .padding(.top, getRelativeHeight(47.0))
            .padding(.leading, getRelativeWidth(10.0))
            VStack(alignment: .trailing, spacing: 0) {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        Image("img_image6")
                            .resizable()
                            .frame(width: getRelativeWidth(180.0), height: getRelativeHeight(140.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .background(RoundedCorners(topLeft: 29.0, topRight: 29.0,
                                                       bottomLeft: 29.0, bottomRight: 29.0))
                        Image("img_rectangle4_10")
                            .resizable()
                            .frame(width: getRelativeWidth(180.0), height: getRelativeHeight(140.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .background(RoundedCorners(topLeft: 29.0, topRight: 29.0,
                                                       bottomLeft: 29.0, bottomRight: 29.0))
                            .padding(.leading, getRelativeWidth(24.0))
                        Image("img_image7_140x180")
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
            .frame(width: getRelativeWidth(372.0), height: getRelativeHeight(146.0),
                   alignment: .trailing)
            .padding(.top, getRelativeHeight(11.0))
            .padding(.leading, getRelativeWidth(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(LinearGradient(gradient: Gradient(colors: [ColorConstants.LightBlue100,
                                                               ColorConstants.WhiteA700]),
            startPoint: .topLeading, endPoint: .bottomTrailing))
        .hideNavigationBar()
    }
}

struct JupiterLightView_Previews: PreviewProvider {
    static var previews: some View {
        JupiterLightView()
    }
}
