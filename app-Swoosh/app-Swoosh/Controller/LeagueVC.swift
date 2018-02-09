//
//  LeagueVC.swift
//  app-Swoosh
//
//  Created by Jyotik Mayur on 09/02/18.
//  Copyright © 2018 Jyotik Mayur. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    var player : Player!

    @IBOutlet weak var nextBtn: BorderButton!
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "SkillVCSegue", sender: self)
    }
    @IBAction func onMensTapped(_ sender: Any) {
        sctLeague(leagueType: "mens")
    }
    @IBAction func whenWomensTapped(_ sender: Any) {
        sctLeague(leagueType: "womens")
    }
    @IBAction func coed(_ sender: Any) {
        sctLeague(leagueType: "coed")
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
        
    }
    
    func sctLeague(leagueType: String){
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC{
            skillVC.player = player
        }
    }

}
