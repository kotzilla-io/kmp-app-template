import Foundation
import SwiftUI
import Shared
import KMMViewModelSwiftUI
import KMPNativeCoroutinesAsync

struct DetailView: View {
    @StateViewModel
    var viewModel = DetailViewModel(
        //TODO inject museumRepository from KMP/Koin
        //see KoinDependencies
    )

    let objectId: Int32

    var body: some View {
        VStack {
            if let obj = viewModel.museumObject {
                ObjectDetails(obj: obj)
            }
        }
        .onAppear {
            viewModel.setId(objectId: objectId)
        }
    }
}

struct ObjectDetails: View {
    var obj: MuseumObject

    var body: some View {
        ScrollView {

            //TODO Inspire yourself from DetailScreen.kt in Android Compose app

            VStack {
                // Async load an image with AsyncImage from obj.primaryImageSmall url

                // BUild Vstack to show all MuseumObject properties (see obj: MuseumObject)

            }
        }
    }
}

struct LabeledInfo: View {
    var label: String
    var data: String

    var body: some View {
        Spacer()
        Text("**\(label):** \(data)")
    }
}
