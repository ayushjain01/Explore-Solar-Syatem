import SwiftUI

struct UranusLightView: View {
    @StateObject var uranusLightViewModel = UranusLightViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack(alignment: .trailing, spacing: 0) {
                ZStack(alignment: .topTrailing) {
                    Text(StringConstants.kLbl7)
                        .font(FontScheme.kRalewayRomanExtraBold(size: getRelativeHeight(250.0)))
                        .fontWeight(.heavy)
                        .foregroundColor(ColorConstants.Bluegray100)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(137.0), height: getRelativeHeight(250.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(114.39))
                        .padding(.trailing, getRelativeWidth(234.0))
                    Image("img_uranus_1")
                        .resizable()
                        .frame(width: getRelativeWidth(322.0), height: getRelativeHeight(296.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.bottom, getRelativeHeight(67.36))
                        .padding(.leading, getRelativeWidth(49.75))
                    Image("img_vector_orange_303")
                        .resizable()
                        .frame(width: getRelativeWidth(29.0), height: getRelativeHeight(21.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.bottom, getRelativeHeight(343.0))
                        .padding(.trailing, getRelativeWidth(335.65))
                }
                .hideNavigationBar()
                .frame(width: getRelativeWidth(371.0), height: getRelativeHeight(364.0),
                       alignment: .trailing)
            }
            .frame(width: getRelativeWidth(371.0), height: getRelativeHeight(364.0),
                   alignment: .trailing)
            .padding(.leading, getRelativeWidth(10.0))
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kLblUranus2)
                    .font(FontScheme.kRalewayRomanExtraBold(size: getRelativeHeight(34.0)))
                    .fontWeight(.heavy)
                    .foregroundColor(ColorConstants.TealA200)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(140.0), height: getRelativeHeight(34.0),
                           alignment: .topLeading)
                    .padding(.horizontal, getRelativeWidth(13.0))
            }
            .frame(width: getRelativeWidth(371.0), height: getRelativeHeight(34.0),
                   alignment: .trailing)
            .padding(.top, getRelativeHeight(6.0))
            .padding(.leading, getRelativeWidth(10.0))
            VStack {
                Text(StringConstants.kMsgAnIceGiantWi)
                    .font(FontScheme.kRalewayRomanSemiBold(size: getRelativeHeight(14.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.Gray500)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(326.0), height: getRelativeHeight(73.0),
                           alignment: .topLeading)
                    .padding(.horizontal, getRelativeWidth(13.0))
            }
            .frame(width: getRelativeWidth(371.0), height: getRelativeHeight(73.0),
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
                    .padding(.horizontal, getRelativeWidth(13.0))
            }
            .frame(width: getRelativeWidth(371.0), height: getRelativeHeight(16.0),
                   alignment: .trailing)
            .padding(.top, getRelativeHeight(68.0))
            .padding(.leading, getRelativeWidth(10.0))
            VStack(alignment: .trailing, spacing: 0) {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        Image("img_image8")
                            .resizable()
                            .frame(width: getRelativeWidth(180.0), height: getRelativeHeight(140.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .background(RoundedCorners(topLeft: 29.0, topRight: 29.0,
                                                       bottomLeft: 29.0, bottomRight: 29.0))
                        Image("img_rectangle4_12")
                            .resizable()
                            .frame(width: getRelativeWidth(180.0), height: getRelativeHeight(140.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .background(RoundedCorners(topLeft: 29.0, topRight: 29.0,
                                                       bottomLeft: 29.0, bottomRight: 29.0))
                            .padding(.leading, getRelativeWidth(29.0))
                        Image("img_rectangle6_140x180")
                            .resizable()
                            .frame(width: getRelativeWidth(180.0), height: getRelativeHeight(140.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .background(RoundedCorners(topLeft: 29.0, topRight: 29.0,
                                                       bottomLeft: 29.0, bottomRight: 29.0))
                            .padding(.leading, getRelativeWidth(29.0))
                        Image("img_image10_140x180")
                            .resizable()
                            .frame(width: getRelativeWidth(180.0), height: getRelativeHeight(140.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .background(RoundedCorners(topLeft: 29.0, topRight: 29.0,
                                                       bottomLeft: 29.0, bottomRight: 29.0))
                            .padding(.leading, getRelativeWidth(28.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(140.0),
                           alignment: .trailing)
                }
                .padding(.leading)
                .padding(.leading)
            }
            .frame(width: getRelativeWidth(371.0), height: getRelativeHeight(140.0),
                   alignment: .trailing)
            .padding(.top, getRelativeHeight(16.0))
            .padding(.leading, getRelativeWidth(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(LinearGradient(gradient: Gradient(colors: [ColorConstants.LightBlue100,
                                                               ColorConstants.WhiteA700]),
            startPoint: .topLeading, endPoint: .bottomTrailing))
        .hideNavigationBar()
    }
}

struct UranusLightView_Previews: PreviewProvider {
    static var previews: some View {
        UranusLightView()
    }
}
