//
//  ButterflyTableViewController.swift
//  MidProject2
//
//  Created by csie on 2018/5/9.
//  Copyright © 2018年 csie. All rights reserved.
//

import UIKit

class ButterflyTableViewController: UITableViewController {
    var number: Int!
    var selectButterfly: Butterfly = Butterfly()
    
    var butterfly1:[Butterfly] = [Butterfly(name:"昇天鳳蝶",scientific:"Pazala eurous",image:"butterfly1",food:"樟科植物",description:"本種幼蟲以樟科植物，如土肉桂等為食，一年一世代，成蟲主要在春季活動。",location:"分布於全島低海拔到中海拔山區。"),Butterfly(name:"青斑鳳蝶",scientific:"Graphium doson",image:"butterfly3",food:"木蘭科植物",description:"本種幼蟲以木蘭科植物，如白玉蘭、含笑花、烏心石等為食，一年多世代，以蛹態越冬。",location:"分布於全島低海拔到中海拔山區。"),Butterfly(name:"紅斑鳳蝶",scientific:"Papilio rumanzovia",image:"butterfly5",food:"芸香科植物",description:"又名紅斑大鳳蝶、基紅鳳蝶、紅斑甌蝶、紅基鳳蝶，為鳳蝶科鳳蝶屬下的一個種。",location:"分布於全島低海拔到中海拔山區。"),Butterfly(name:"斑鳳蝶",scientific:"Papilio clytia",image:"butterfly2",food:"樟科植物",description:"斑鳳蝶的寄主植物為多種樟科植物，如紅楠、樟樹和土肉桂等，成蟲出現後不久，大概就可以開始在這些植物上，觀察到它的幼蟲。",location:"主要分布於金門、中國南部及南亞地區"),Butterfly(name:"大鳳蝶",scientific:"Papilio memnon",image:"butterfly4",food:"芸香科植物",description:"別名長崎鳳蝶、柑鳳蝶、多型藍鳳蝶、多型大鳳蝶。",location:"分布於中國長江以南和四川省，以及南亞次大陸、東南亞、台灣、日本。")]
    
    var butterfly2:[Butterfly] = [Butterfly(name:"墨子黃斑弄蝶",scientific:"Potanthus motzui",image:"butterfly8",food:"樟科",description:"墨子黃斑弄蝶，又名細帶黃斑弄蝶，為弄蝶科黃斑弄蝶屬下的一個種。",location:"分布於臺灣本島低、中海拔地區。"),Butterfly(name:"萬大星褐弄蝶",scientific:"Aeromachus bandaishanus",image:"butterfly9",food:"樟科",description:"又名萬大弧弄蝶、姬狹翅挵蝶、萬大黃星挵蝶，為弄蝶科弧弄蝶屬下的一個種。",location:"分布於臺灣本島中海拔地區。"),Butterfly(name:"埔里黃斑弄蝶",scientific:"Potanthus confucius",image:"butterfly7",food:"樟科",description:"又名黃弄蝶、台灣黃室弄蝶、小黃斑弄蝶、孔子黃斑挵蝶，為弄蝶科黃斑弄蝶屬下的一個種。",location:"在臺灣地區主要分布於臺灣本島低、中海拔地區，離島龜山島、綠島、蘭嶼也有記錄。臺灣以外見於中國大陸南部、中南半島、南亞等地區。"),Butterfly(name:"黑澤星弄蝶",scientific:"Celaenorrhinus kurosawai",image:"butterfly10",food:"樟科",description:"又名姬小黃紋弄蝶、姬黃紋弄蝶、姬星弄蝶、黑澤小星挵蝶，為弄蝶科星弄蝶屬下的一個種。",location:"分布於臺灣本島中海拔地區。"),Butterfly(name:"黃斑弄蝶",scientific:"Potanthus confucius",image:"butterfly6",food:"樟科",description:"又名黃弄蝶、台灣黃室弄蝶、小黃斑弄蝶、孔子黃斑挵蝶，為弄蝶科黃斑弄蝶屬下的一個種。",location:"在臺灣地區分布於臺灣本島中、南部低海拔地區，北部少見。離島龜山島、綠島、蘭嶼亦有分布。臺灣以外分布於東洋區之中國大陸南部、南亞、中南半島、菲律賓與蘇拉威西等地區。")]
    
    var butterfly3:[Butterfly] = [Butterfly(name:"高山粉蝶",scientific:"Aporia agathon",image:"高山粉蝶",food:"小蘗科",description:"又稱流星絹粉蝶，是絹粉蝶屬中的一種蝴蝶。",location:"分布於臺灣本島中、高海拔地區。"),Butterfly(name:"麻斑粉蝶",scientific:"Delias pasithoe",image:"麻斑粉蝶",food:"桑寄生科",description:"又稱條斑豔粉蝶，是艷粉蝶屬中的一種蝴蝶。",location:"分布於臺灣本島中高海拔山區。"),Butterfly(name:"紅點粉蝶",scientific:"Gonepteryx amintha",image:"紅點粉蝶",food:"桶鉤藤",description:"又稱圓翅鉤粉蝶，外型特別，翅膀花紋與高麗菜相似，翅膀正面則雌雄不同，雄蝶前翅為濃黃色，雌蝶則前後翅均為淡綠色。",location:"分布於臺灣本島平地至中高海拔山區。"),Butterfly(name:"北黃蝶",scientific:"Eurema mandarina",image:"北黃蝶",food:"鼠李科、豆科",description:"本種外觀與習性皆與黃蝶十分雷同，藉由分子檢測與食性研究方得以區分。",location:"分布於台灣本島低中海拔山區。"),Butterfly(name:"端黑黃蝶",scientific:"Eurema laeta punctissima",image:"端黑黃蝶",food:"假含羞草",description:"又名草黃粉蝶，軀體黃色，背面有黑褐色紋。前翅外緣很直，與後緣成直角。後翅後緣於M3脈末端呈角狀。",location:"分布於臺灣本島中南部低中海拔山地。")]
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 5
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! ButterflyTableViewCell
        // Configure the cell...
        if number==1{
            selectButterfly = butterfly1[indexPath.row]
            //cell.nameLabel.text = butterfly1[indexPath.row].name
            //cell.ImageView.image = UIImage(named:butterfly1[indexPath.row].image)
            navigationItem.title = "鳳蝶科"
            navigationItem.backBarButtonItem?.title = "鳳蝶科"
        }
        else if number==2{
            selectButterfly = butterfly2[indexPath.row]
            //cell.nameLabel.text = butterfly2[indexPath.row].name
            //cell.ImageView.image = UIImage(named:butterfly2[indexPath.row].image)
            navigationItem.title = "弄蝶科"
            navigationItem.backBarButtonItem?.title = "弄蝶科"
        }
        else {
            selectButterfly = butterfly3[indexPath.row]
            //cell.nameLabel.text = butterfly3[indexPath.row].name
            //cell.ImageView.image = UIImage(named:butterfly3[indexPath.row].image)
            navigationItem.title = "粉蝶科"
            navigationItem.backBarButtonItem?.title = "粉蝶科"
        }
        cell.nameLabel.text = selectButterfly.name
        cell.ImageView.image = UIImage(named:selectButterfly.image)
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showButterflyDetail"{
            if let indexPath = tableView.indexPathForSelectedRow{
                let destinationController = segue.destination as! ButterflyDetailViewController
                if number==1{
                    destinationController.butterfly = butterfly1[indexPath.row]
                }
                else if number==2{
                    destinationController.butterfly = butterfly2[indexPath.row]
                }
                else {
                    destinationController.butterfly = butterfly3[indexPath.row]
                }
            }
        }
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
