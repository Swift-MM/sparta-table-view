//
//  TableViewController.swift
//  TableViewApp
//
//  Created by Work on 2016/09/05.
//  Copyright © 2016年 sparta-asano.jp. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    // 画面内に表示する名前を入れています。
    var names: [String] = [
        "麻生",
        "蒲田",
        "佐藤",
        "田中",
        "中村",
        "萩原",
        "松本",
        "矢田",
        "楽山",
        "渡部"
    ]

    // この画面をアプリが読み込み、画面表示される直前に実行されます。
    // 今回は使用しません。
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    // この記述は特に使いません。削除しても問題ありません。
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    // TableViewに表示するセクションの数を指定します。
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    // TableViewに表示するセクションごとのセルの数を指定します。
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        // 今回はセクションは1つのみなので、namesの要素数をそのまま使います。
        // "変数名.count"で要素数を取得できます。
        return names.count
    }

    // 各行のセルを表示する際に呼ばれる処理です。
    // この中で表示内容を設定するプログラムを記述します。
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // セルのオブジェクトを作成します。
        // "NameCell" の部分はStoryboardでセルに設定したIdentifierを指定しています。
        let cell = tableView.dequeueReusableCell(withIdentifier: "NameCell", for: indexPath)

        // namesから該当する行の文字列を取得してセルに設定します。
        // indexPath.rowで何行目かわかります。
        cell.textLabel?.text = names[indexPath.row]

        return cell
    }
}
