//
//  ViewController.swift
//  Datackle
//
//  Created by Francisco Donadio on 27/05/2022.
//

import UIKit
import Popover

class ViewController: UIViewController {

  //MARK: - Ataque
    
    @IBOutlet weak var lineAtaqueL: UILabel!
    @IBOutlet weak var lineAtaqueV: UILabel!
    
    var numLineAtaqueL = 0
    var numLineAtaqueV = 0
    
    @IBAction func stepperLineAtaqueL(_ sender: UIStepper) {
        lineAtaqueL.text = String(format: "%.f", sender.value)
        numLineAtaqueL = Int(sender.value)
        }
    
    @IBAction func stepperLineAtaqueV(_ sender: UIStepper) {
        lineAtaqueV.text = String(format: "%.f", sender.value)
        numLineAtaqueV = Int(sender.value)
    }
    
    @IBOutlet weak var scrumAtaqueL: UILabel!
    @IBOutlet weak var scrumAtaqueV: UILabel!
    
    var numScrumAtaqueL = 0
    var numScrumAtaqueV = 0
    
    @IBAction func stepperScrumAtaqueL(_ sender: UIStepper) {
        scrumAtaqueL.text = String(format: "%.f", sender.value)
        numScrumAtaqueL = Int(sender.value)
    }
    
    @IBAction func stepperScrumAtaqueV(_ sender: UIStepper) {
        scrumAtaqueV.text = String(format: "%.f", sender.value)
        numScrumAtaqueV = Int(sender.value)
    }
    
    //MARK: - Defensa
    
    @IBOutlet weak var lineDefensaL: UILabel!
    @IBOutlet weak var lineDefensaV: UILabel!
    
    var numLinesDefensaL = 0
    var numLinesDefensaV = 0
    
    @IBAction func stepperLineDefensaL(_ sender: UIStepper) {
        lineDefensaL.text = String(format: "%.f", sender.value)
        numLinesDefensaL = Int(sender.value)
    }
    
    @IBAction func stepperLineDefensaV(_ sender: UIStepper) {
        lineDefensaV.text = String(format: "%.f", sender.value)
        numLinesDefensaV = Int(sender.value)
    }
    
    @IBOutlet weak var scrumDefensaL: UILabel!
    @IBOutlet weak var scrumDefensaV: UILabel!
    
    var numScrumDefensaL = 0
    var numScrumDefensaV = 0
    
    @IBAction func stepperScrumDefensaL(_ sender: UIStepper) {
        scrumDefensaL.text = String(format: "%.f", sender.value)
        numScrumDefensaL = Int(sender.value)
    }
    
    @IBAction func stepperScrumDefensaV(_ sender: UIStepper) {
        scrumDefensaV.text = String(format: "%.f", sender.value)
        numScrumDefensaV = Int(sender.value)
    }
    
    @IBOutlet weak var tackleL: UILabel!
    @IBOutlet weak var tackleV: UILabel!
    
    var numTacklesL = 0
    var numTacklesV = 0
    
    @IBAction func stepperTackleL(_ sender: UIStepper) {
        tackleL.text = String(format: "%.f", sender.value)
        numTacklesL = Int(sender.value)
    }
    
    @IBAction func stepperTackleV(_ sender: UIStepper) {
        tackleV.text = String(format: "%.f", sender.value)
        numTacklesV = Int(sender.value)
    }
    
    //MARK: - Acciones
        
    @IBOutlet weak var scoreLocal: UILabel!
    @IBOutlet weak var scoreVisitante: UILabel!
    
    var scoreL = 0
    var scoreV = 0
    
    @IBAction func tryLocal(_ sender: UIButton) {
        scoreL += 5
        triesL += 1
        scoreLocal.text = "\(scoreL)"
    }
    
    @IBAction func tryVisitante(_ sender: UIButton) {
        scoreV += 5
        triesV += 1
        scoreVisitante.text = "\(scoreV)"
    }
    
    @IBAction func conversionL(_ sender: UIButton) {
        scoreL += 2
        conversionesL += 1
        scoreLocal.text = "\(scoreL)"
    }
    
    @IBAction func conversionV(_ sender: UIButton) {
        scoreV += 2
        conversionesV += 1
        scoreVisitante.text = "\(scoreV)"
    }
    
    @IBAction func tryPenalL(_ sender: UIButton) {
        scoreL += 7
        triesL += 1
        scoreLocal.text = "\(scoreL)"
    }
    
    @IBAction func tryPenalV(_ sender: UIButton) {
        scoreV += 7
        triesV += 1
        scoreVisitante.text = "\(scoreV)"
    }
    
    @IBAction func penalL(_ sender: UIButton) {
        scoreL += 3
        penalesL += 1
        scoreLocal.text = "\(scoreL)"
    }
    
    @IBAction func penalV(_ sender: UIButton) {
        scoreV += 3
        penalesV += 1
        scoreVisitante.text = "\(scoreV)"
    }
    
    @IBAction func dropL(_ sender: UIButton) {
        scoreL += 3
        dropsL += 1
        scoreLocal.text = "\(scoreL)"
    }
    
    @IBAction func dropV(_ sender: UIButton) {
        scoreV += 3
        dropsV += 1
        scoreVisitante.text = "\(scoreV)"
    }
    
    @IBOutlet weak var tiempoTarjetaL: UIProgressView!
    
    var tiempoTarjetaLocal = Timer()
    var tiempoTarjetaVisit = Timer()
    var secondsPassedL = 0
    var secondsPassedV = 0
    var totalTime = 600
    
    @IBAction func tarjetaAmarillaL(_ sender: UIButton) {
        amarillasL += 1
        tiempoTarjetaLocal.invalidate()
        tiempoTarjetaL.progress = 0.0
        secondsPassedL = 0
        
        tiempoTarjetaLocal = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimerL), userInfo: nil, repeats: true)
    }
    @objc func updateTimerL() {
        if secondsPassedL < totalTime {
            secondsPassedL += 1
            tiempoTarjetaL.progress = Float(secondsPassedL) / Float(totalTime)
            print(Float(secondsPassedL) / Float(totalTime))
        } else {
            tiempoTarjetaLocal.invalidate()
            tiempoTarjetaL.progress = 0.0
        }
    }
    
    @IBOutlet weak var tiempoTarjetaV: UIProgressView!
    @IBAction func tarjetaAmarillaV(_ sender: UIButton) {
        amarillasV += 1
        tiempoTarjetaVisit.invalidate()
        tiempoTarjetaV.progress = 0.0
        secondsPassedV = 0
        
        tiempoTarjetaVisit = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimerV), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimerV() {
        if secondsPassedV < totalTime {
            secondsPassedV += 1
            tiempoTarjetaV.progress = Float(secondsPassedV) / Float(totalTime)
            print(Float(secondsPassedV) / Float(totalTime))
        } else {
            tiempoTarjetaVisit.invalidate()
            tiempoTarjetaV.progress = 0.0
        }
    }
    
    
    //MARK: - Timer
    
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var startStopButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    var timer:Timer = Timer()
    var count:Int = 0
    var timerCounting:Bool = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scoreLocal.text = "\(scoreL)"
        scoreVisitante.text = "\(scoreV)"
        startStopButton.setTitleColor(UIColor.green, for: .normal)
    }

    @IBAction func startTapped(_ sender: UIButton) {
        
        if (timerCounting){
            timerCounting = false
            timer.invalidate()
            startStopButton.setTitle("START", for: .normal)
            startStopButton.setTitleColor(UIColor.green, for: .normal)
        } else {
            timerCounting = true
            startStopButton.setTitle("STOP", for: .normal)
            startStopButton.setTitleColor(UIColor.red, for: .normal)
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerCounter), userInfo: nil, repeats: true)
        }
    }
    
    @objc func timerCounter() -> Void {
        count = count + 1
        let time = secondsToHoursMinutesSeconds(seconds: count)
        let timeString = makeTimeString(hours: time.0, minutes: time.1, seconds: time.2)
        timerLabel.text = timeString
    }
    
    func secondsToHoursMinutesSeconds(seconds: Int) -> (Int, Int,Int) {
        return ((seconds / 3600),((seconds % 3600) / 60),((seconds % 3600) % 60))
    }
    
    func makeTimeString(hours: Int,minutes: Int, seconds: Int) -> String {
        var timeString = ""
//         timeString += String(format: "%02d", hours)
//        timeString += " : "
        timeString += String(format: "%02d", minutes)
        timeString += " : "
        timeString += String(format: "%02d", seconds)
        return timeString
    }
    
    @IBAction func resetTapped(_ sender: UIButton) {
        let alert = UIAlertController(title: "Reiniciar Timer", message: "Esta seguro?", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "CANCEL", style: .cancel, handler: { (_) in
            //do nothing
        }))
        
        alert.addAction(UIAlertAction(title: "YES", style: .default, handler: { (_) in
            self.count = 0
            self.timer.invalidate()
            self.timerLabel.text = self.makeTimeString(hours: 0,minutes: 0, seconds: 0)
            self.startStopButton.setTitle("START", for: .normal)
            self.startStopButton.setTitleColor(UIColor.green, for: .normal)
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    //MARK: - Estadisticas
    
    var triesL = 0
    var triesV = 0
    var conversionesL = 0
    var conversionesV = 0
    var penalesL = 0
    var penalesV = 0
    var dropsL = 0
    var dropsV = 0
    var amarillasL = 0
    var amarillasV = 0
    
    @IBAction func estadisticasPressed(_ sender: UIButton) {
        
        let originPoint = CGPoint(x: sender.frame.midX, y: sender.frame.maxY)
        let popoverView = UIView(frame: CGRect.init(x: 32, y: sender.bounds.maxY + 20, width: self.view.bounds.width - 764, height: 350))
        
        let header = UILabel(frame: CGRect(x: 0, y: 25, width: popoverView.bounds.width, height: 40))
        header.text = "Local                                         Visitante"
        header.textAlignment = .center
        popoverView.addSubview(header)
        
        let tries = UILabel(frame: CGRect(x: 0, y: 80, width: popoverView.bounds.width, height: 40))
        tries.text = "\(triesL)             Tries             \(triesV)"
        tries.textAlignment = .center
        popoverView.addSubview(tries)
        
        let conversiones = UILabel(frame: CGRect(x: 0, y: 110, width: popoverView.bounds.width, height: 40))
        conversiones.text = "\(conversionesL)     Conversiones     \(conversionesV) "
        conversiones.textAlignment = .center
        popoverView.addSubview(conversiones)
        
        let penales = UILabel(frame: CGRect(x: 0, y: 140, width: popoverView.bounds.width, height: 40))
        penales.text = "\(penalesL)           Penales          \(penalesV)"
        penales.textAlignment = .center
        popoverView.addSubview(penales)
        
        let drops = UILabel(frame: CGRect(x: 0, y: 170, width: popoverView.bounds.width, height: 40))
        drops.text = "\(dropsL)            Drops            \(dropsV)"
        drops.textAlignment = .center
        popoverView.addSubview(drops)
        
        let amarillas = UILabel(frame: CGRect(x: 0, y: 200, width: popoverView.bounds.width, height: 40))
        amarillas.text = "\(amarillasL)          Amarillas         \(amarillasV)"
        amarillas.textAlignment = .center
        popoverView.addSubview(amarillas)
        
        let lines = UILabel(frame: CGRect(x: 0, y: 230, width: popoverView.bounds.width, height: 40))
        lines.text = "\(numLineAtaqueL)/\(numLineAtaqueV)          Lines          \(numLinesDefensaV)/\(numLinesDefensaL)"
        lines.textAlignment = .center
        popoverView.addSubview(lines)
        
        let scrums = UILabel(frame: CGRect(x: 0, y: 260, width: popoverView.bounds.width, height: 40))
        scrums.text = "\(numScrumAtaqueL)/\(numScrumAtaqueV)         Scrums         \(numScrumDefensaV)/\(numScrumDefensaL)"
        scrums.textAlignment = .center
        popoverView.addSubview(scrums)
        
        let tackles = UILabel(frame: CGRect(x: 0, y: 290, width: popoverView.bounds.width, height: 40))
        tackles.text = "\(numTacklesL)          Tackles         \(numTacklesV)"
        tackles.textAlignment = .center
        popoverView.addSubview(tackles)
        
        let popover = Popover()
        popover.show(popoverView, point: originPoint)
    }
    
    
    
    

}

