//
//  liseViewController.swift
//  uniPath
//
//  Created by Tutku Doga Nazli on 7.07.2020.
//  Copyright © 2020 Tutku Doga Nazli. All rights reserved.
//

import UIKit

class liseViewController: UIViewController {
    
    @IBOutlet weak var enterButton: UIButton!
    @IBOutlet weak var seviyeTextField: UITextField!
    @IBOutlet weak var satTextField: UITextField!
    @IBOutlet weak var gpaTextField: UITextField!
    @IBOutlet weak var alanTextField: UITextField!
    @IBOutlet weak var actTextField: UITextField!
    @IBOutlet weak var sıralamaTextField: UITextField!
    @IBOutlet weak var ieltsTextField: UITextField!
    @IBOutlet weak var ülkeTextField: UITextField!
    
    let seviyeler = ["Lise Hazırlık", "9. Sınıf", "10. Sınıf", "11. Sınıf", "12. Sınıf"]
    let satler = ["1500-1600", "1400-1500", "<1400"]
    let gpa = ["93-100", "90-93", "85-90", "<85"]
    let sıralamalar = ["1", "İlk 5", "İlk 10", "İlk 15", "İlk 20", "İlk 30", "İlk 50", "Bilmiyorum"]
    let alanlar = ["Biyoloji ve Kimya", "Topluluk Önünde Konuşma", "Uzay Teknolojisi", "Robotik ve Kodlama", "Hukuk", "Edebiyat, Resim, Sanat", "Matematik", "Ekonomi"]
    let ülkeler = ["ABD", "İngiltere", "Avrupa", "Kanada"]
    let act = ["34-36", "32-33", "30-31", "25-30"]
    let ielts = ["<40", "40-43", "43-45", "IB almıyorum"]
    
    let seviyePicker = UIPickerView()
    let satPicker = UIPickerView()
    let gpaPicker = UIPickerView()
    let sıralamaPicker = UIPickerView()
    let alanPicker = UIPickerView()
    let ülkePicker = UIPickerView()
    let actPicker = UIPickerView()
    let ieltsPicker = UIPickerView()
    
    var seçilenSeviye: String?
    var seçilenSat: String?
    var seçilenGpa: String?
    var seçilenSıralama: String?
    var seçilenAlan: String?
    var seçilenÜlke: String?
    var seçilenAct: String?
    var seçilenIelts: String?
    var currentTextField = UITextField()
    
    func setUpElements(){
        Utilites.styleFilledButton(button: enterButton)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpElements()
        createSeviyePicker()
        createSatPicker()
        createActPicker()
        createGpaPicker()
        createAlanPicker()
        createÜlkePicker()
        createSıralamaPicker()
        createIeltsPicker()
        createToolbar()
    }
    
    func createSeviyePicker(){
        seviyePicker.delegate = self
        seviyeTextField.inputView = seviyePicker
    }
    func createSatPicker(){
        satPicker.delegate = self
        satTextField.inputView = satPicker
    }
    func createGpaPicker(){
        gpaPicker.delegate = self
        gpaTextField.inputView = gpaPicker
    }
    func createSıralamaPicker(){
        sıralamaPicker.delegate = self
        sıralamaTextField.inputView = sıralamaPicker
    }
    func createAlanPicker(){
        alanPicker.delegate = self
        alanTextField.inputView = alanPicker
    }
    func createÜlkePicker(){
        ülkePicker.delegate = self
        ülkeTextField.inputView = ülkePicker
    }
    func createActPicker(){
        actPicker.delegate = self
        actTextField.inputView = actPicker
    }
    func createIeltsPicker(){
        ieltsPicker.delegate = self
        ieltsTextField.inputView = ieltsPicker
    }
    
    func createToolbar(){
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let doneButton = UIBarButtonItem(title: "OK", style: .plain, target: self, action: #selector(liseViewController.dismissKeyboard))
        toolBar.setItems([doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        seviyeTextField.inputAccessoryView = toolBar
        satTextField.inputAccessoryView = toolBar
        gpaTextField.inputAccessoryView = toolBar
        sıralamaTextField.inputAccessoryView = toolBar
        ülkeTextField.inputAccessoryView = toolBar
        ieltsTextField.inputAccessoryView = toolBar
        actTextField.inputAccessoryView = toolBar
        alanTextField.inputAccessoryView = toolBar
    }
    
    @objc func dismissKeyboard(){
        view.endEditing(true)
    }
    
    @IBAction func sayfaDeğiştir(_ sender: Any) {
        if seçilenÜlke == "Avrupa" && (seçilenAlan == "Robotik ve Kodlama" || seçilenAlan == "Uzay Teknolojisi") {
            let vc = storyboard?.instantiateViewController(identifier: "euengineering_vc") as! EUEngineeringViewController
            present(vc, animated: true)
        }
        else if seçilenÜlke == "Avrupa" && seçilenAlan == "Edebiyat, Resim, Sanat" {
            let vc = storyboard?.instantiateViewController(identifier: "euhumanities_vc") as! EUHumanitiesViewController
            present(vc, animated: true)
        }
        else if seçilenÜlke == "Avrupa" && (seçilenAlan == "Biyoloji ve Kimya" || seçilenAlan == "Matematik") {
            let vc = storyboard?.instantiateViewController(identifier: "eunatsci_vc") as! EUNatSciViewController
            present(vc, animated: true)
        }
        else if seçilenÜlke == "Avrupa" && (seçilenAlan == "Topluluk Önünde Konuşma" || seçilenAlan == "Ekonomi" || seçilenAlan == "Hukuk") {
            let vc = storyboard?.instantiateViewController(identifier: "eusocsci_vc") as! EUSocSciViewController
            present(vc, animated: true)
        }
        else if seçilenÜlke == "Kanada" && (seçilenAlan == "Robotik ve Kodlama" || seçilenAlan == "Uzay Teknolojisi"){
            let vc = storyboard?.instantiateViewController(identifier: "cengineering_vc") as! CEngineeringViewController
            present(vc, animated: true)
        }
        else if seçilenÜlke == "Kanada" && seçilenAlan == "Edebiyat, Resim, Sanat" {
            let vc = storyboard?.instantiateViewController(identifier: "chumanities_vc") as! CHumanitiesViewController
            present(vc, animated: true)
        }
        else if seçilenÜlke == "Kanada" && (seçilenAlan == "Biyoloji ve Kimya" || seçilenAlan == "Matematik") {
            let vc = storyboard?.instantiateViewController(identifier: "cnatsci_vc") as! CNatSciViewController
            present(vc, animated: true)
        }
        else if seçilenÜlke == "Kanada" && (seçilenAlan == "Topluluk Önünde Konuşma" || seçilenAlan == "Ekonomi" || seçilenAlan == "Hukuk") {
            let vc = storyboard?.instantiateViewController(identifier: "csocsci_vc") as! CSocSciViewController
            present(vc, animated: true)
        }
        else if seçilenÜlke == "ABD" && (seçilenAlan == "Robotik ve Kodlama" || seçilenAlan == "Uzay Teknolojisi") && (seçilenGpa == "90-93" || seçilenGpa == "93-100") && (seçilenIelts == "43-45" || seçilenIelts == "40-43" || seçilenIelts == "IB almıyorum"){
            let vc = storyboard?.instantiateViewController(identifier: "okullar_vc") as! OkullarViewController
            present(vc, animated: true)
        }
        else if seçilenÜlke == "ABD" && (seçilenAlan == "Robotik ve Kodlama" || seçilenAlan == "Uzay Teknolojisi") && (seçilenGpa == "85-90" || seçilenGpa == "<85"){
            let vc = storyboard?.instantiateViewController(identifier: "engineering_vc") as! EngineeringViewController
            present(vc, animated: true)
        }
        else if seçilenÜlke == "ABD" && (seçilenAlan == "Robotik ve Kodlama" || seçilenAlan == "Uzay Teknolojisi") && (seçilenIelts == "<40"){
            let vc = storyboard?.instantiateViewController(identifier: "engineering_vc") as! EngineeringViewController
            present(vc, animated: true)
        }
        else if seçilenÜlke == "ABD" && (seçilenAlan == "Edebiyat, Resim, Sanat") && (seçilenGpa == "90-93" || seçilenGpa == "93-100") && (seçilenIelts == "43-45" || seçilenIelts == "40-43" || seçilenIelts == "IB almıyorum"){
            let vc = storyboard?.instantiateViewController(identifier: "humanities_vc") as! HumanitiesViewController
            present(vc, animated: true)
        }
        else if seçilenÜlke == "ABD" && (seçilenAlan == "Edebiyat, Resim, Sanat") && (seçilenGpa == "85-90" || seçilenGpa == "<85"){
            let vc = storyboard?.instantiateViewController(identifier: "humanities2_vc") as! Humanities2ViewController
            present(vc, animated: true)
        }
        else if seçilenÜlke == "ABD" && (seçilenAlan == "Edebiyat, Resim, Sanat") && (seçilenIelts == "<40"){
            let vc = storyboard?.instantiateViewController(identifier: "humanities2_vc") as! Humanities2ViewController
            present(vc, animated: true)
        }
        else if seçilenÜlke == "ABD" && (seçilenAlan == "Biyoloji ve Kimya" || seçilenAlan == "Matematik") && (seçilenGpa == "90-93" || seçilenGpa == "93-100") && (seçilenIelts == "43-45" || seçilenIelts == "40-43" || seçilenIelts == "IB almıyorum"){
            let vc = storyboard?.instantiateViewController(identifier: "natsci_vc") as! NatSciViewController
            present(vc, animated: true)
        }
        else if seçilenÜlke == "ABD" && (seçilenAlan == "Biyoloji ve Kimya" || seçilenAlan == "Matematik") && (seçilenGpa == "85-90" || seçilenGpa == "<85"){
            let vc = storyboard?.instantiateViewController(identifier: "natsci2_vc") as! NatSci2ViewController
            present(vc, animated: true)
        }
        else if seçilenÜlke == "ABD" && (seçilenAlan == "Biyoloji ve Kimya" || seçilenAlan == "Matematik") && (seçilenIelts == "<40"){
            let vc = storyboard?.instantiateViewController(identifier: "natsci2_vc") as! NatSci2ViewController
            present(vc, animated: true)
        }
        else if seçilenÜlke == "ABD" && (seçilenAlan == "Topluluk Önünde Konuşma" || seçilenAlan == "Ekonomi" || seçilenAlan == "Hukuk") && (seçilenGpa == "90-93" || seçilenGpa == "93-100") && (seçilenIelts == "43-45" || seçilenIelts == "40-43" || seçilenIelts == "IB almıyorum"){
            let vc = storyboard?.instantiateViewController(identifier: "socsci_vc") as! SocSciViewController
            present(vc, animated: true)
        }
        else if seçilenÜlke == "ABD" && (seçilenAlan == "Topluluk Önünde Konuşma" || seçilenAlan == "Ekonomi" || seçilenAlan == "Hukuk") && (seçilenGpa == "85-90" || seçilenGpa == "<85"){
            let vc = storyboard?.instantiateViewController(identifier: "socsci2_vc") as! SocSci2ViewController
            present(vc, animated: true)
        }
        else if seçilenÜlke == "ABD" && (seçilenAlan == "Topluluk Önünde Konuşma" || seçilenAlan == "Ekonomi" || seçilenAlan == "Hukuk") && (seçilenIelts == "<40"){
            let vc = storyboard?.instantiateViewController(identifier: "socsci2_vc") as! SocSci2ViewController
            present(vc, animated: true)
        }
        else if seçilenÜlke == "İngiltere" && (seçilenAlan == "Robotik ve Kodlama" || seçilenAlan == "Uzay Teknolojisi") && (seçilenGpa == "90-93" || seçilenGpa == "93-100") && (seçilenIelts == "43-45" || seçilenIelts == "40-43" || seçilenIelts == "IB almıyorum"){
            let vc = storyboard?.instantiateViewController(identifier: "ukengineering_vc") as! UKEngineeringViewController
            present(vc, animated: true)
        }
        else if seçilenÜlke == "İngiltere" && (seçilenAlan == "Robotik ve Kodlama" || seçilenAlan == "Uzay Teknolojisi") && (seçilenGpa == "85-90" || seçilenGpa == "<85"){
            let vc = storyboard?.instantiateViewController(identifier: "ukengineering2_vc") as! UKEngineering2ViewController
            present(vc, animated: true)
        }
        else if seçilenÜlke == "İngiltere" && (seçilenAlan == "Robotik ve Kodlama" || seçilenAlan == "Uzay Teknolojisi") && (seçilenIelts == "<40"){
            let vc = storyboard?.instantiateViewController(identifier: "ukengineerin2_vc") as! UKEngineering2ViewController
            present(vc, animated: true)
        }
        else if seçilenÜlke == "İngiltere" && (seçilenAlan == "Edebiyat, Resim, Sanat") && (seçilenGpa == "90-93" || seçilenGpa == "93-100") && (seçilenIelts == "43-45" || seçilenIelts == "40-43" || seçilenIelts == "IB almıyorum"){
            let vc = storyboard?.instantiateViewController(identifier: "ukhumanities_vc") as! UKHumanitiesViewController
            present(vc, animated: true)
        }
        else if seçilenÜlke == "İngiltere" && (seçilenAlan == "Edebiyat, Resim, Sanat") && (seçilenGpa == "85-90" || seçilenGpa == "<85"){
            let vc = storyboard?.instantiateViewController(identifier: "ukhumanities2_vc") as! UKHumanities2ViewController
            present(vc, animated: true)
        }
        else if seçilenÜlke == "İngiltere" && (seçilenAlan == "Edebiyat, Resim, Sanat") && (seçilenIelts == "<40"){
            let vc = storyboard?.instantiateViewController(identifier: "ukhumanities2_vc") as! UKHumanities2ViewController
            present(vc, animated: true)
        }
        else if seçilenÜlke == "İngiltere" && (seçilenAlan == "Biyoloji ve Kimya" || seçilenAlan == "Matematik") && (seçilenGpa == "90-93" || seçilenGpa == "93-100") && (seçilenIelts == "43-45" || seçilenIelts == "40-43" || seçilenIelts == "IB almıyorum"){
            let vc = storyboard?.instantiateViewController(identifier: "uknatsci_vc") as! UKNatSciViewController
            present(vc, animated: true)
        }
        else if seçilenÜlke == "İngiltere" && (seçilenAlan == "Biyoloji ve Kimya" || seçilenAlan == "Matematik") && (seçilenGpa == "85-90" || seçilenGpa == "<85"){
            let vc = storyboard?.instantiateViewController(identifier: "uknatsci2_vc") as! UKNatSci2ViewController
            present(vc, animated: true)
        }
        else if seçilenÜlke == "İngiltere" && (seçilenAlan == "Biyoloji ve Kimya" || seçilenAlan == "Matematik") && (seçilenIelts == "<40"){
            let vc = storyboard?.instantiateViewController(identifier: "uknatsci2_vc") as! UKNatSci2ViewController
            present(vc, animated: true)
        }
        else if seçilenÜlke == "İngiltere" && (seçilenAlan == "Topluluk Önünde Konuşma" || seçilenAlan == "Ekonomi" || seçilenAlan == "Hukuk") && (seçilenGpa == "90-93" || seçilenGpa == "93-100") && (seçilenIelts == "43-45" || seçilenIelts == "40-43" || seçilenIelts == "IB almıyorum"){
            let vc = storyboard?.instantiateViewController(identifier: "uksocsci_vc") as! UKSocSciViewController
            present(vc, animated: true)
        }
        else if seçilenÜlke == "İngiltere" && (seçilenAlan == "Topluluk Önünde Konuşma" || seçilenAlan == "Ekonomi" || seçilenAlan == "Hukuk") && (seçilenGpa == "85-90" || seçilenGpa == "<85"){
            let vc = storyboard?.instantiateViewController(identifier: "uksocsci2_vc") as! UKSocSci2ViewController
            present(vc, animated: true)
        }
        else if seçilenÜlke == "İngiltere" && (seçilenAlan == "Topluluk Önünde Konuşma" || seçilenAlan == "Ekonomi" || seçilenAlan == "Hukuk") && (seçilenIelts == "<40"){
            let vc = storyboard?.instantiateViewController(identifier: "uksocsci2_vc") as! UKSocSci2ViewController
            present(vc, animated: true)
        }
    }
    
}

extension liseViewController: UIPickerViewDelegate, UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == seviyePicker {
            return seviyeler.count
        }
        else if pickerView == satPicker{
            return satler.count
        }
        else if pickerView == gpaPicker{
            return gpa.count
        }
        else if pickerView == ieltsPicker{
                return ielts.count
        }
        else if pickerView == alanPicker{
            return alanlar.count
        }
        else if pickerView == ülkePicker{
            return ülkeler.count
        }
        else if pickerView == sıralamaPicker{
            return sıralamalar.count
        }
        else if pickerView == actPicker{
            return act.count
        }
        else {
            return 0
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == seviyePicker{
            return seviyeler[row]
        }
        else if pickerView == satPicker{
            return satler[row]
        }
        else if pickerView == actPicker{
            return act[row]
        }
        else if pickerView == ieltsPicker{
            return ielts[row]
        }
        else if pickerView == ülkePicker{
            return ülkeler[row]
        }
        else if pickerView == alanPicker{
            return alanlar[row]
        }
        else if pickerView == sıralamaPicker{
            return sıralamalar[row]
        }
        else if pickerView == gpaPicker{
            return gpa[row]
        }
        else{
            return ""
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == seviyePicker{
            seçilenSeviye = seviyeler[row]
            seviyeTextField.text = seçilenSeviye
        }
        else if pickerView == satPicker{
            seçilenSat = satler[row]
            satTextField.text = seçilenSat
        }
        else if pickerView == actPicker{
            seçilenAct = act[row]
            actTextField.text = seçilenAct
        }
        else if pickerView == ieltsPicker{
            seçilenIelts = ielts[row]
            ieltsTextField.text = seçilenIelts
        }
        else if pickerView == gpaPicker{
            seçilenGpa = gpa[row]
            gpaTextField.text = seçilenGpa
        }
        else if pickerView == ülkePicker{
            seçilenÜlke = ülkeler[row]
            ülkeTextField.text = seçilenÜlke
        }
        else if pickerView == alanPicker{
            seçilenAlan = alanlar[row]
            alanTextField.text = seçilenAlan
        }
        else if pickerView == sıralamaPicker{
            seçilenSıralama = sıralamalar[row]
            sıralamaTextField.text = seçilenSıralama
        }
    }
}
