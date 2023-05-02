import SwiftUI

struct SplashView: View {
    @StateObject var splashViewModel = SplashViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    ZStack(alignment: .topTrailing) {
                        Image("img_mercury")
                            .resizable()
                            .frame(width: getRelativeWidth(115.0), height: getRelativeHeight(96.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.bottom, getRelativeHeight(381.0))
                            .padding(.trailing, getRelativeWidth(241.0))
                        Image("img_venus")
                            .resizable()
                            .frame(width: getRelativeWidth(145.0), height: getRelativeHeight(139.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.bottom, getRelativeHeight(521.0))
                            .padding(.leading, getRelativeWidth(211.0))
                        ZStack(alignment: .bottomTrailing) {
                            Image("img_earth")
                                .resizable()
                                .frame(width: getRelativeWidth(164.0),
                                       height: getRelativeHeight(144.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(532.0))
                                .padding(.trailing, getRelativeWidth(179.0))
                            VStack {
                                Image("img_mars")
                                    .resizable()
                                    .frame(width: getRelativeWidth(133.0),
                                           height: getRelativeHeight(112.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.leading, getRelativeWidth(32.0))
                                    .padding(.trailing, getRelativeWidth(7.0))
                                Image("img_neptune")
                                    .resizable()
                                    .frame(width: getRelativeWidth(172.0),
                                           height: getRelativeHeight(209.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                            }
                            .frame(width: getRelativeWidth(172.0), height: getRelativeHeight(321.0),
                                   alignment: .bottomTrailing)
                            .padding(.top, getRelativeHeight(346.0))
                            .padding(.leading, getRelativeWidth(191.0))
                            Image("img_jupiter")
                                .resizable()
                                .frame(width: getRelativeWidth(182.0),
                                       height: getRelativeHeight(229.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(317.0))
                                .padding(.trailing, getRelativeWidth(172.0))
                            Image("img_saturn")
                                .resizable()
                                .frame(width: getRelativeWidth(234.0),
                                       height: getRelativeHeight(181.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.bottom, getRelativeHeight(340.0))
                                .padding(.leading, getRelativeWidth(122.0))
                            Image("img_uranus")
                                .resizable()
                                .frame(width: getRelativeWidth(201.0),
                                       height: getRelativeHeight(177.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.bottom, getRelativeHeight(499.0))
                                .padding(.trailing, getRelativeWidth(162.0))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(676.0),
                               alignment: .leading)
                    }
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(676.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(14.0))
                    .padding(.leading, getRelativeWidth(7.0))
                    .padding(.trailing, getRelativeWidth(20.0))
                    Button(action: {
                        splashViewModel.nextScreen = "ExploreScreenDarkView"
                    }, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblStartExploring)
                                .font(FontScheme
                                    .kRalewayRomanExtraBold(size: getRelativeHeight(20.0)))
                                .fontWeight(.heavy)
                                .padding(.horizontal, getRelativeWidth(17.0))
                                .padding(.vertical, getRelativeHeight(16.0))
                                .foregroundColor(ColorConstants.Orange300)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(210.0),
                                       height: getRelativeHeight(52.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 21.0, topRight: 21.0,
                                                           bottomLeft: 21.0, bottomRight: 21.0)
                                        .fill(ColorConstants.Gray900))
                                .padding(.vertical, getRelativeHeight(43.0))
                                .padding(.horizontal, getRelativeWidth(90.0))
                        }
                    })
                    .frame(width: getRelativeWidth(210.0), height: getRelativeHeight(52.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 21.0, topRight: 21.0, bottomLeft: 21.0,
                                               bottomRight: 21.0)
                            .fill(ColorConstants.Gray900))
                    .padding(.vertical, getRelativeHeight(43.0))
                    .padding(.horizontal, getRelativeWidth(90.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: ExploreScreenLightView(),
                                   tag: "ExploreScreenLightView",
                                   selection: $splashViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: ExploreScreenDarkView(),
                                   tag: "ExploreScreenDarkView",
                                   selection: $splashViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.WhiteA700)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
        .onAppear {
            splashViewModel.nextScreen = "ExploreScreenLightView"
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
