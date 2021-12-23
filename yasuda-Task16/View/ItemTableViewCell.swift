//
//  ItemCell.swift
//  yasuda-Task16
//
//  Created by yasudamasato on 2021/12/22.
//

import UIKit

final class ItemTableViewCell: UITableViewCell {

  static var className: String { String(describing: ItemTableViewCell.self) }

  @IBOutlet private weak var checkImageView: UIImageView!
  @IBOutlet private weak var itemNameLabel: UILabel!

  override func prepareForReuse() {
    super.prepareForReuse()
    checkImageView.image = nil
    itemNameLabel.text = nil
  }

  func configure(item: Item) {
    checkImageView.image = item.isChecked ? UIImage(systemName: "checkmark") : nil
    itemNameLabel.text = item.name
  }
}
