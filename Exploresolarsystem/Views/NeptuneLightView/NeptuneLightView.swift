import SwiftUI

struct NeptuneLightView: View {
    @StateObject var neptuneLightViewModel = NeptuneLightViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack(alignment: .trailing, spacing: 0) {
                ZStack(alignment: .topTrailing) {
                    Text(StringConstants.kLbl8)
                        .font(FontScheme.kRalewayRomanExtraBold(size: getRelativeHeight(250.0)))
                        .fontWeight(.heavy)
                        .foregroundColor(ColorConstants.Bluegray100)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(131.0), height: getRelativeHeight(250.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(111.38))
                        .padding(.trailing, getRelativeWidth(223.35))
                    Image("img_neptune")
                        .resizable()
                        .frame(width: getRelativeWidth(283.0), height: getRelativeHeight(305.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.bottom, getRelativeHeight(56.0))
                        .padding(.leading, getRelativeWidth(82.4))
                    Image("img_vector_orange_303")
                        .resizable()
                        .frame(width: getRelativeWidth(29.0), height: getRelativeHeight(21.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.bottom, getRelativeHeight(339.64))
                        .padding(.trailing, getRelativeWidth(336.0))
                }
                .hideNavigationBar()
                .frame(width: getRelativeWidth(365.0), height: getRelativeHeight(361.0),
                       alignment: .trailing)
            }
            .frame(width: getRelativeWidth(365.0), height: getRelativeHeight(361.0),
                   alignment: .trailing)
            .padding(.leading, getRelativeWidth(10.0))
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kLblNeptune2)
                    .font(FontScheme.kRalewayRomanExtraBold(size: getRelativeHeight(34.0)))
                    .fontWeight(.heavy)
                    .foregroundColor(ColorConstants.DeepPurpleA200)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(156.0), height: getRelativeHeight(34.0),
                           alignment: .topLeading)
                    .padding(.leading, getRelativeWidth(7.0))
                    .padding(.trailing, getRelativeWidth(7.0))
            }
            .frame(width: getRelativeWidth(365.0), height: getRelativeHeight(34.0),
                   alignment: .trailing)
            .padding(.top, getRelativeHeight(9.0))
            .padding(.leading, getRelativeWidth(10.0))
            VStack {
                Text(StringConstants.kMsgTheMostDistan)
                    .font(FontScheme.kRalewayRomanSemiBold(size: getRelativeHeight(14.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.Gray500)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(313.0), height: getRelativeHeight(94.0),
                           alignment: .topLeading)
                    .padding(.leading, getRelativeWidth(7.0))
                    .padding(.trailing, getRelativeWidth(44.0))
            }
            .frame(width: getRelativeWidth(365.0), height: getRelativeHeight(94.0),
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
            .padding(.top, getRelativeHeight(47.0))
            .padding(.leading, getRelativeWidth(10.0))
            VStack(alignment: .trailing, spacing: 0) {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        Image("img_image11_140x180")
                            .resizable()
                            .frame(width: getRelativeWidth(180.0), height: getRelativeHeight(140.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .background(RoundedCorners(topLeft: 29.0, topRight: 29.0,
                                                       bottomLeft: 29.0, bottomRight: 29.0))
                        Image("img_image12_140x180")
                            .resizable()
                            .frame(width: getRelativeWidth(180.0), height: getRelativeHeight(140.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .background(RoundedCorners(topLeft: 29.0, topRight: 29.0,
                                                       bottomLeft: 29.0, bottomRight: 29.0))
                            .padding(.leading, getRelativeWidth(24.0))
                        Image("img_rectangle5_10")
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

struct NeptuneLightView_Previews: PreviewProvider {
    static var previews: some View {
        NeptuneLightView()
    }
}
