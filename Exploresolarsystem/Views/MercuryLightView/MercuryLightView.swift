import SwiftUI

struct MercuryLightView: View {
    @StateObject var mercuryLightViewModel = MercuryLightViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            VStack(alignment: .leading, spacing: 0) {
                Image("img_vector_orange_303")
                    .resizable()
                    .frame(width: getRelativeWidth(29.0), height: getRelativeHeight(21.0),
                           alignment: .center)
                    .scaledToFit()
                    .clipped()
                    .padding(.trailing)
            }
            .frame(width: getRelativeWidth(368.0), height: getRelativeHeight(21.0),
                   alignment: .trailing)
            .padding(.leading, getRelativeWidth(10.0))
            VStack(alignment: .trailing, spacing: 0) {
                ScrollView(.horizontal, showsIndicators: false) {
                    VStack {
                        HStack {
                            Text(StringConstants.kLbl1)
                                .font(FontScheme
                                    .kRalewayRomanExtraBold(size: getRelativeHeight(250.0)))
                                .fontWeight(.heavy)
                                .foregroundColor(ColorConstants.Bluegray100)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(113.0),
                                       height: getRelativeHeight(250.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(62.0))
                            Image("img_mercury")
                                .resizable()
                                .frame(width: getRelativeWidth(200.0),
                                       height: getRelativeHeight(187.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.bottom, getRelativeHeight(125.0))
                                .padding(.leading, getRelativeWidth(23.0))
                        }
                        .frame(width: getRelativeWidth(336.0), height: getRelativeHeight(312.0),
                               alignment: .leading)
                        .padding(.trailing, getRelativeWidth(10.0))
                        Text(StringConstants.kLblMercury2)
                            .font(FontScheme.kRalewayRomanExtraBold(size: getRelativeHeight(34.0)))
                            .fontWeight(.heavy)
                            .foregroundColor(ColorConstants.Orange300)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(161.0), height: getRelativeHeight(34.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(20.0))
                            .padding(.horizontal, getRelativeWidth(10.0))
                        Text(StringConstants.kMsgTheSmallestPl)
                            .font(FontScheme.kRalewayRomanMedium(size: getRelativeHeight(16.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Gray600)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(319.0), height: getRelativeHeight(99.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(21.0))
                            .padding(.horizontal, getRelativeWidth(10.0))
                        Text(StringConstants.kLblGallery)
                            .font(FontScheme.kRalewayRomanRegular(size: getRelativeHeight(16.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Gray700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(72.0), height: getRelativeHeight(16.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(42.0))
                            .padding(.horizontal, getRelativeWidth(10.0))
                        HStack {
                            Spacer()
                            Image("img_image1")
                                .resizable()
                                .frame(width: getRelativeWidth(180.0),
                                       height: getRelativeHeight(140.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .background(RoundedCorners(topLeft: 29.0, topRight: 29.0,
                                                           bottomLeft: 29.0, bottomRight: 29.0))
                                .padding(.top, getRelativeHeight(6.0))
                            Image("img_image2_140x180")
                                .resizable()
                                .frame(width: getRelativeWidth(180.0),
                                       height: getRelativeHeight(140.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .background(RoundedCorners(topLeft: 29.0, topRight: 29.0,
                                                           bottomLeft: 29.0, bottomRight: 29.0))
                                .padding(.vertical, getRelativeHeight(5.0))
                                .padding(.leading, getRelativeWidth(21.0))
                            Image("img_rectangle5_5")
                                .resizable()
                                .frame(width: getRelativeWidth(180.0),
                                       height: getRelativeHeight(140.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .background(RoundedCorners(topLeft: 29.0, topRight: 29.0,
                                                           bottomLeft: 29.0, bottomRight: 29.0))
                                .padding(.vertical, getRelativeHeight(5.0))
                                .padding(.leading, getRelativeWidth(29.0))
                                .padding(.trailing, getRelativeWidth(202.0))
                        }
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(146.0),
                               alignment: .trailing)
                        .padding(.top, getRelativeHeight(14.0))
                    }
                    .frame(width: getRelativeWidth(368.0), alignment: .topLeading)
                }
            }
            .frame(width: getRelativeWidth(368.0), height: getRelativeHeight(707.0),
                   alignment: .trailing)
            .padding(.top, getRelativeHeight(15.0))
            .padding(.leading, getRelativeWidth(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(LinearGradient(gradient: Gradient(colors: [ColorConstants.LightBlue100,
                                                               ColorConstants.WhiteA700]),
            startPoint: .topLeading, endPoint: .bottomTrailing))
        .hideNavigationBar()
    }
}

struct MercuryLightView_Previews: PreviewProvider {
    static var previews: some View {
        MercuryLightView()
    }
}
