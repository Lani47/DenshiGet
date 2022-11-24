//
//  MapView.swift
//  DenshiGet
//
//  Created by cmStudent on 2022/05/13.
//



import SwiftUI
import MapKit
//ここで動きを再現する
struct MapView: UIViewRepresentable {
    @State var startUp = true
    //検索ワードの入れ物
    let searchKey:String
    //マップ種類
    let mapType: MKMapType
    
    //表示するviewを作成すると実行
    func makeUIView(context: Context) -> MKMapView{
        //MKMapViewのインスタンス生成
        MKMapView()
    }
    //表示したviewが更新するたびに実
    func updateUIView(_ uiView: MKMapView, context: Context) {
        //確認のため出力
        print(searchKey)
        //マップの種類の設定
        uiView.mapType = mapType
        
        //CLGeocoderインスタンスを取得
        let geocoder = CLGeocoder()
        
        geocoder.geocodeAddressString(searchKey , completionHandler: {
            //その場所があるのかないのか
            (placemarks,error) in
            //リクエストの結果が存在したら、1件目の情報から位置情報を取り出す
            if let unwrapPlacemarks = placemarks ,
               let firstPlacemark = unwrapPlacemarks.first ,
               let location = firstPlacemark.location {
                //位置情報から緯度経度をtargettCoordinateに送り出す
                let targettCoordinate = location.coordinate
                
                print(targettCoordinate)
                //ピンのインスタンス
                let pin = MKPointAnnotation()
                //ピンの置く場所に緯度経度を指定
                pin.coordinate = targettCoordinate
                //ピンのタイトルを設定
                pin.title = searchKey
                //ピンをマップにさす
                uiView.addAnnotation(pin)
                //緯度経度を中心にして半径500mの範囲を指定して表示
                uiView.region = MKCoordinateRegion(
                    center: targettCoordinate,
                    latitudinalMeters: 500.0,
                    longitudinalMeters: 500.0)
                
                
                
            }
            
            
        })//geocoderここまで
    }
}


//最初にプレビュー作って
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(searchKey: "東京タワー",mapType: .standard)
    }
}
