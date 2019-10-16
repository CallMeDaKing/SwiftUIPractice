/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view that clips an image to a circle and adds a stroke and shadow.
*/

import SwiftUI

struct CircleImage: View {
//    var body: some View {
//        Image("turtlerock")
//            .clipShape(Circle())
//            .overlay(
//                Circle().stroke(Color.white, lineWidth: 4))
//            .shadow(radius: 10)
//    }
    var body: some View {
        VStack {
            MapView()
                .edgesIgnoringSafeArea(.top)
                .frame(height:300)
            CircleImages()
                .offset(y:-130)
                .padding(.bottom,-130)
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack(alignment: .top) {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
                .padding()
                
                Spacer()
            }
        }
    }
    
    struct CircleImage_Previews: PreviewProvider {
        //    static var previews: some View {
        //        CircleImage()
        //    }
        
        static var previews: some View {
            CircleImage()
            }
    }
}

