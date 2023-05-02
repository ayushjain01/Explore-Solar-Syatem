import SwiftUI

struct ExploreScreenDarkView: View {
    @StateObject var exploreScreenDarkViewModel = ExploreScreenDarkViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    HStack {
                        HStack {
                            ZStack(alignment: .bottomLeading) {
                                Text(StringConstants.kLblSolarSystem)
                                    .font(FontScheme
                                        .kRalewayRomanMedium(size: getRelativeHeight(20.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(130.0),
                                           height: getRelativeHeight(20.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(39.95))
                                    .padding(.trailing, getRelativeWidth(54.0))
                                Text(StringConstants.kLblExploreThe)
                                    .font(FontScheme
                                        .kRalewayRomanExtraBold(size: getRelativeHeight(30.0)))
                                    .fontWeight(.heavy)
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(184.0),
                                           height: getRelativeHeight(40.0), alignment: .topLeading)
                                    .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 0)
                                    .padding(.top, getRelativeHeight(29.97))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(184.0), height: getRelativeHeight(70.0),
                                   alignment: .center)
                            Spacer()
                            Image("img_vector")
                                .resizable()
                                .frame(width: getRelativeWidth(28.0),
                                       height: getRelativeWidth(28.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(4.0))
                        }
                        .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(70.0),
                               alignment: .leading)
                    }
                    .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(70.0),
                           alignment: .leading)
                    .padding(.trailing, getRelativeWidth(2245.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(70.0),
                       alignment: .trailing)
                VStack(alignment: .trailing, spacing: 0) {
                    HStack(spacing: 0) {
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHStack {
                                ForEach(0 ... 7, id: \.self) { index in
                                    CardCell(columnexploreClick: {
                                        exploreScreenDarkViewModel.nextScreen = "MercuryDarkView"
                                    }, merkuroneClick: {
                                        exploreScreenDarkViewModel.nextScreen = "MercuryDarkView"
                                    }, gobuttonClick: {
                                        exploreScreenDarkViewModel.nextScreen = "SplashView"
                                    })
                                    .onTapGesture {
                                        exploreScreenDarkViewModel.nextScreen = "SaturnDarkView"
                                    }
                                }
                            }
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width, alignment: .trailing)
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(487.0),
                       alignment: .trailing)
                .padding(.top, getRelativeHeight(24.0))
                Group {
                    NavigationLink(destination: SplashView(),
                                   tag: "SplashView",
                                   selection: $exploreScreenDarkViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: MercuryDarkView(),
                                   tag: "MercuryDarkView",
                                   selection: $exploreScreenDarkViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: SaturnDarkView(),
                                   tag: "SaturnDarkView",
                                   selection: $exploreScreenDarkViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: UranusDarkView(),
                                   tag: "UranusDarkView",
                                   selection: $exploreScreenDarkViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: NeptuneDarkView(),
                                   tag: "NeptuneDarkView",
                                   selection: $exploreScreenDarkViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: EarthDarkView(),
                                   tag: "EarthDarkView",
                                   selection: $exploreScreenDarkViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: VenusDarkView(),
                                   tag: "VenusDarkView",
                                   selection: $exploreScreenDarkViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: MarsDarkView(),
                                   tag: "MarsDarkView",
                                   selection: $exploreScreenDarkViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: JupiterDarkView(),
                                   tag: "JupiterDarkView",
                                   selection: $exploreScreenDarkViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(LinearGradient(gradient: Gradient(colors: [ColorConstants.Black900,
                                                                   ColorConstants.Gray800]),
                startPoint: .topLeading, endPoint: .bottomTrailing))
            .shadow(radius: 5)
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct ExploreScreenDarkView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreScreenDarkView()
    }
}
