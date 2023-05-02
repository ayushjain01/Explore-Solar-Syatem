import SwiftUI

struct ExploreScreenLightView: View {
    @StateObject var exploreScreenLightViewModel = ExploreScreenLightViewModel()
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
                                    .foregroundColor(ColorConstants.Gray900)
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
                                    .foregroundColor(ColorConstants.Gray900)
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
                            Image("img_svgrepoiconcar")
                                .resizable()
                                .frame(width: getRelativeWidth(26.0),
                                       height: getRelativeWidth(26.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(4.0))
                        }
                        .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(70.0),
                               alignment: .leading)
                    }
                    .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(70.0),
                           alignment: .leading)
                    .padding(.trailing, getRelativeWidth(2244.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(70.0),
                       alignment: .trailing)
                VStack(alignment: .trailing, spacing: 0) {
                    HStack(spacing: 0) {
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHStack {
                                ForEach(0 ... 7, id: \.self) { index in
                                    Card1Cell()
                                        .onTapGesture {
                                            exploreScreenLightViewModel.nextScreen = "MarsLightView"
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
                    NavigationLink(destination: MarsLightView(),
                                   tag: "MarsLightView",
                                   selection: $exploreScreenLightViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: JupiterLightView(),
                                   tag: "JupiterLightView",
                                   selection: $exploreScreenLightViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: SaturnLightView(),
                                   tag: "SaturnLightView",
                                   selection: $exploreScreenLightViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: UranusLightView(),
                                   tag: "UranusLightView",
                                   selection: $exploreScreenLightViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: NeptuneLightView(),
                                   tag: "NeptuneLightView",
                                   selection: $exploreScreenLightViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: MercuryLightView(),
                                   tag: "MercuryLightView",
                                   selection: $exploreScreenLightViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: EarthLightView(),
                                   tag: "EarthLightView",
                                   selection: $exploreScreenLightViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: VenusLightView(),
                                   tag: "VenusLightView",
                                   selection: $exploreScreenLightViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(LinearGradient(gradient: Gradient(colors: [ColorConstants.LightBlue100,
                                                                   ColorConstants.WhiteA700]),
                startPoint: .topLeading, endPoint: .bottomTrailing))
            .shadow(radius: 5)
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct ExploreScreenLightView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreScreenLightView()
    }
}
