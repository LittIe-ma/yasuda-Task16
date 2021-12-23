//
//  ItemListViewController.swift
//  yasuda-Task16
//
//  Created by yasudamasato on 2021/12/22.
//

import UIKit

final class ItemListViewController: UIViewController {

  @IBOutlet private weak var itemListTableView: UITableView! {
    didSet {
      itemListTableView.register(UINib.init(nibName: ItemTableViewCell.className, bundle: nil), forCellReuseIdentifier: ItemTableViewCell.className)
      itemListTableView.delegate = self
      itemListTableView.dataSource = self
    }
  }

  private var items = Items().items

  override func viewDidLoad() {
      super.viewDidLoad()
  }
}

extension ItemListViewController: UITableViewDelegate {
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    items[indexPath.row].isChecked.toggle()
    itemListTableView.reloadRows(at: [indexPath], with: .automatic)
  }
  func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
    print(indexPath.row)
  }
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    45
  }
}

extension ItemListViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    items.count
  }
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = itemListTableView.dequeueReusableCell(withIdentifier: ItemTableViewCell.className) as? ItemTableViewCell else {
      fatalError()
    }
    let item = items[indexPath.row]
    cell.configure(item: item)
    return cell
  }
  func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
    if editingStyle == .delete {
      items.remove(at: indexPath.row)
      itemListTableView.deleteRows(at: [indexPath], with: .automatic)
    }
  }
}
