//
//  Item.swift
//  yasuda-Task16
//
//  Created by yasudamasato on 2021/12/22.
//

import Foundation

struct Items {
  var items: [Item] = [
    Item(name: "りんご", isChecked: false),
    Item(name: "みかん", isChecked: true),
    Item(name: "バナナ", isChecked: false),
    Item(name: "パイナップル", isChecked: true)
  ]
}

struct Item {
  var name: String
  var isChecked: Bool
}
