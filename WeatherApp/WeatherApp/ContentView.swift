 //
//  ContentView.swift
//  WeatherApp
//
//  Created by Osama Vaince on 11/16/21.
//

import SwiftUI
 
 struct ContentView: View {
    
    @ObservedObject var viewModel: WeatherViewModel
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.white]), startPoint: .leading, endPoint: .trailing)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text(viewModel.cityName)
                    .font(.largeTitle)
                    .padding()
                Text(viewModel.temperature)
                    .font(.system(size: 70))
                    .bold()
                Text(viewModel.weatherIcon)
                    .font(.system(size: 70))
                    .padding()
                Text(viewModel.weatherDescription)
            }.onAppear(perform: viewModel.refresh)
        }
    }
 }
 
 struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: WeatherViewModel(weatherService: WeatherService()))
    }
 }

