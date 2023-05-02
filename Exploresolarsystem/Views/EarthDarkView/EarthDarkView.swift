import SwiftUI

struct EarthDarkView: View {
    @StateObject var earthDarkViewModel = EarthDarkViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                ZStack(alignment: .topTrailing) {
                    Text(StringConstants.kLbl3)
                        .font(FontScheme.kRalewayRomanExtraBold(size: getRelativeHeight(250.0)))
                        .fontWeight(.heavy)
                        .foregroundColor(ColorConstants.Bluegray100)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(127.0), height: getRelativeHeight(250.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(118.02))
                        .padding(.trailing, getRelativeWidth(220.0))
                    Image("img_earth")
                        .resizable()
                        .frame(width: getRelativeWidth(260.0), height: getRelativeHeight(280.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.bottom, getRelativeHeight(77.36))
                        .padding(.leading, getRelativeWidth(87.0))
                    Image("img_vector_orange_303")
                        .resizable()
                        .frame(width: getRelativeWidth(29.0), height: getRelativeHeight(21.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.bottom, getRelativeHeight(347.0))
                        .padding(.trailing, getRelativeWidth(310.4))
                }
                .hideNavigationBar()
                .frame(width: getRelativeWidth(347.0), height: getRelativeHeight(368.0),
                       alignment: .center)
                .padding(.trailing, getRelativeWidth(26.0))
            }
            .frame(width: getRelativeWidth(373.0), height: getRelativeHeight(368.0),
                   alignment: .trailing)
            .padding(.leading, getRelativeWidth(10.0))
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kLblEarth2)
                    .font(FontScheme.kRalewayRomanExtraBold(size: getRelativeHeight(34.0)))
                    .fontWeight(.heavy)
                    .foregroundColor(ColorConstants.Indigo400)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(107.0), height: getRelativeHeight(34.0),
                           alignment: .topLeading)
                    .padding(.horizontal, getRelativeWidth(15.0))
            }
            .frame(width: getRelativeWidth(373.0), height: getRelativeHeight(34.0),
                   alignment: .trailing)
            .padding(.leading, getRelativeWidth(10.0))
            VStack {
                Text(StringConstants.kMsgTheOnlyKnown)
                    .font(FontScheme.kRalewayRomanSemiBold(size: getRelativeHeight(14.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.Gray500)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(312.0), height: getRelativeHeight(70.0),
                           alignment: .topLeading)
                    .padding(.horizontal, getRelativeWidth(15.0))
            }
            .frame(width: getRelativeWidth(373.0), height: getRelativeHeight(70.0),
                   alignment: .trailing)
            .padding(.top, getRelativeHeight(21.0))
            .padding(.leading, getRelativeWidth(10.0))
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kLblGallery)
                    .font(FontScheme.kRalewayRomanRegular(size: getRelativeHeight(16.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.Bluegray100)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(72.0), height: getRelativeHeight(16.0),
                           alignment: .topLeading)
                    .padding(.horizontal, getRelativeWidth(15.0))
            }
            .frame(width: getRelativeWidth(373.0), height: getRelativeHeight(16.0),
                   alignment: .trailing)
            .padding(.top, getRelativeHeight(71.0))
            .padding(.leading, getRelativeWidth(10.0))
            VStack(alignment: .trailing, spacing: 0) {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        Image("img_rectangle4_140x180")
                            .resizable()
                            .frame(width: getRelativeWidth(180.0), height: getRelativeHeight(140.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .background(RoundedCorners(topLeft: 29.0, topRight: 29.0,
                                                       bottomLeft: 29.0, bottomRight: 29.0))
                        Image("img_rectangle4_1")
                            .resizable()
                            .frame(width: getRelativeWidth(180.0), height: getRelativeHeight(140.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .background(RoundedCorners(topLeft: 29.0, topRight: 29.0,
                                                       bottomLeft: 29.0, bottomRight: 29.0))
                            .padding(.leading, getRelativeWidth(24.0))
                        Image("img_rectangle5_1")
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
            .frame(width: getRelativeWidth(373.0), height: getRelativeHeight(146.0),
                   alignment: .trailing)
            .padding(.top, getRelativeHeight(14.0))
            .padding(.leading, getRelativeWidth(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(LinearGradient(gradient: Gradient(colors: [ColorConstants.Black900,
                                                               ColorConstants.Gray800]),
            startPoint: .topLeading, endPoint: .bottomTrailing))
        .hideNavigationBar()
    }
}

struct EarthDarkView_Previews: PreviewProvider {
    static var previews: some View {
        EarthDarkView()
    }
}
