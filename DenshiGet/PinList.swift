//
//  PinList.swift
//  DenshiGet
//
//  Created by cmStudent on 2022/05/13.
//

import SwiftUI
import MapKit

struct Annotation {
    let address: String?
    let title: String?
    let subtitle: String?
    init(address :String, title :String, subtitle :String) {
        self.title = title
        self.address = address
        self.subtitle = subtitle
    }
}

var annotation: [Annotation] = []

private func setAnnotation(){
    //if num == 0 {
        // a が 0 以上のときだけ実行
        annotation.append(Annotation(address: "神奈川県横浜市青葉区青葉台1-7-3", title: "青葉台駅です", subtitle: "田園都市線はいつも激混み"))
        annotation.append(Annotation(address: "東京都新宿区新宿3-35−8", title: "タイトーステーション 新宿南口ゲームワールド店", subtitle: "最近の自粛ムードで人は客が少ない時でも、喫煙目的で地下を利用する人も多いです。"))
        annotation.append(Annotation(address: "東京都新宿区西新宿1-12−5", title: "クラブ セガ 新宿西口", subtitle: "ヨドバシカメラの本店の横にあり、居酒屋の下。"))
        annotation.append(Annotation(address: "東京都新宿区歌舞伎町1-20−1", title: "新宿プレイランド カーニバル", subtitle: "なんともいえないレトロなゲーセン。新宿で映画のチケット買って待ってる間によく行きます。"))
        annotation.append(Annotation(address: "東京都新宿区新宿3-22", title: "新宿スポラン", subtitle: "ガンダムの大規模大会が定期的に行われます"))
    //} else {
        //self.loadView()
       
      // a が 0 より小さい (負の値) ときだけ実行
        //annotation.append(Annotation(address: "東京都新宿区新宿3-22", title: "新宿スポラン", subtitle: "ガンダムの大規模大会が定期的に行われます"))
    }

//ここからテスト　これを全部作る?
let coordinate1 = CLLocationCoordinate2DMake(40.0, 135.0)
// 今回は現在地ではないのでコメントアウト
//let coordinate = map.userLocation.coordinate
// ピンを生成
let pin1 = MKPointAnnotation()
// ピンのタイトル・サブタイトルをセット
pin1.title = "テストタイトル"
pin1.subtitle = "テストサブタイトル"
// ピンに一番上で作った位置情報をセット
pin1.coordinate = coordinate1
// mapにピンを表示する
uiView.addAnnotation(pin1)
//ピンを消す
uiView.removeAnnotation(pin1)
