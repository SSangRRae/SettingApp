//
//  ContentView.swift
//  SettingApp
//
//  Created by SangRae Kim on 2023/11/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Section {
                    NavigationLink {
                        Text("프로필 화면")
                    } label: {
                        HStack {
                            Text("SR")
                                .font(.system(size: 25))
                                .fontWeight(.bold)
                                .frame(width: 60, height: 60)
                                .background(.gray)
                                .foregroundColor(.white)
                                .cornerRadius(30)
                            VStack(alignment: .leading, spacing: 4) {
                                Text("SSang RRae")
                                    .font(.system(size: 22))
                                    .fontWeight(.regular)
                                Text("Apple ID, iCloud, 미디어 및 구입")
                                    .font(.system(size: 11))
                            }.padding(.leading, 5)
                        }
                        .padding(.vertical, 5)
                    }
                }
                Section {
                    HStack {
                        Image(systemName: "airplane")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.all, 4)
                            .background(.yellow)
                            .foregroundColor(.white)
                            .cornerRadius(5)
                        NavigationLink("에어플레인 모드") {
                            Text("에어플레인 화면")
                        }
                    }
                    HStack {
                        Image(systemName: "wifi")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.all, 4)
                            .background(.blue)
                            .foregroundColor(.white)
                            .cornerRadius(5)
                        NavigationLink("Wi-Fi") {
                            Text("Wi-Fi 화면")
                        }
                    }
                    HStack {
                        Image(systemName: "chart.bar.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.all, 4)
                            .background(.blue)
                            .foregroundColor(.white)
                            .cornerRadius(5)
                        NavigationLink("Bluetooth") {
                            Text("Bluetooth 화면")
                        }
                    }
                    HStack {
                        Image(systemName: "antenna.radiowaves.left.and.right")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.all, 4)
                            .background(.green)
                            .foregroundColor(.white)
                            .cornerRadius(5)
                        NavigationLink("셀룰러") {
                            Text("셀룰러 화면")
                        }
                    }
                    HStack {
                        Image(systemName: "personalhotspot")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.all, 4)
                            .background(.green)
                            .foregroundColor(.white)
                            .cornerRadius(5)
                        NavigationLink("개인용 핫스팟") {
                            Text("개인용 핫스팟 화면")
                        }
                    }
                }
                Section {
                    HStack {
                        Image(systemName: "bell.badge.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.all, 4)
                            .background(.red)
                            .foregroundColor(.white)
                            .cornerRadius(5)
                        NavigationLink("알림") {
                            Text("알림 화면")
                        }
                    }
                    HStack {
                        Image(systemName: "speaker.wave.3.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.all, 4)
                            .background(.red)
                            .foregroundColor(.white)
                            .cornerRadius(5)
                        NavigationLink("사운드 및 햅틱") {
                            Text("사운드 및 햅틱 화면")
                        }
                    }
                    HStack {
                        Image(systemName: "moon.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.all, 4)
                            .background(.indigo)
                            .foregroundColor(.white)
                            .cornerRadius(5)
                        NavigationLink("집중 모드") {
                            Text("집중 모드 화면")
                        }
                    }
                    HStack {
                        Image(systemName: "hourglass")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.all, 4)
                            .background(.indigo)
                            .foregroundColor(.white)
                            .cornerRadius(5)
                        NavigationLink("스크린 타임") {
                            Text("스크린 타임 화면")
                        }
                    }
                }
                Section {
                    HStack {
                        Image(systemName: "gear")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.all, 4)
                            .background(.gray)
                            .foregroundColor(.white)
                            .cornerRadius(5)
                        NavigationLink("일반") {
                            Text("일반 화면")
                        }
                    }
                    HStack {
                        Image(systemName: "accessibility")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.all, 4)
                            .background(.blue)
                            .foregroundColor(.white)
                            .cornerRadius(5)
                        NavigationLink("손쉬운 사용") {
                            Text("손쉬운 사용 화면")
                        }
                    }
                    HStack {
                        Image(systemName: "hand.raised.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.all, 4)
                            .background(.blue)
                            .foregroundColor(.white)
                            .cornerRadius(5)
                        NavigationLink("개인 정보 보호") {
                            Text("개인 정보 보호 화면")
                        }
                    }
                }
            }
            .navigationTitle(Text("설정"))
        }
    }
}

#Preview {
    ContentView()
}
