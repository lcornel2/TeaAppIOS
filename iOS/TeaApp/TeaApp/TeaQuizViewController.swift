//
//  TeaQuizViewController.swift
//  TeaApp
//
//  Created by Lily Cornell on 3/15/21.
//

import UIKit

class TeaQuizViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var label: UILabel!
    @IBOutlet var table: UITableView!
    
    var quizquestions = [Question]()
    var currentQueston: Question?

    override func viewDidLoad() {
        super.viewDidLoad()

        setupQuestions()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        configureUI(question: quizquestions.first!)
    }
    
    private func configureUI(question: Question) {
        label.text = question.text
        
        currentQueston = question
         
        table.delegate = self
        table.dataSource = self
    }
    
    private func blacktea(answer: Answer, question: Question) -> Bool {
        return question.answer.contains(where: { $0.text == answer.text && answer.black})
    }
    private func greentea(answer: Answer, question: Question) -> Bool {
        return question.answer.contains(where: { $0.text == answer.text && answer.green})
    }
    private func herbaltea(answer: Answer, question: Question) -> Bool {
        return question.answer.contains(where: { $0.text == answer.text && answer.herbal})
    }
    private func oolongtea(answer: Answer, question: Question) -> Bool {
        return question.answer.contains(where: { $0.text == answer.text && answer.oolong})
    }
    private func whitetea(answer: Answer, question: Question) -> Bool {
        return question.answer.contains(where: { $0.text == answer.text && answer.white})
    }
    private func yellowtea(answer: Answer, question: Question) -> Bool {
        return question.answer.contains(where: { $0.text == answer.text && answer.yellow})
    }
    
    private func setupQuestions() {
        quizquestions.append(Question(text: "What flavor profile sounds best?", answer: [
            Answer(text: "Strong and bold", black: true, green: false, herbal: false, oolong: false, white: false, yellow: false),
            Answer(text: "Nutty and earthy", black: false, green: true, herbal: false, oolong: false, white: false, yellow: false),
            Answer(text: "Floral and sweet", black: false, green: false, herbal: true, oolong: false, white: false, yellow: false),
            Answer(text: "Woodsy and rich", black: false, green: false, herbal: false, oolong: true, white: false, yellow: false),
            Answer(text: "Light and sweet", black: false, green: false, herbal: false, oolong: false, white: true, yellow: false),
            Answer(text: "Fruity and floral", black: false, green: false, herbal: false, oolong: false, white: false, yellow: true),
        ]))
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection: Int) -> Int {
        return currentQueston?.answer.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = currentQueston?.answer[indexPath.row].text
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        guard let question = currentQueston else {
            return
        }
        
        let answer = question.answer[indexPath.row]
        
        if blacktea(answer: answer, question: question) {
            let vc = storyboard?.instantiateViewController(identifier: "blacktea") as! BlackTeaViewController
            vc.modalPresentationStyle = .automatic
            present(vc, animated: true)
        }
        if greentea(answer: answer, question: question){
            let vc = storyboard?.instantiateViewController(identifier: "greentea") as! GreenTeaViewController
            vc.modalPresentationStyle = .automatic
            present(vc, animated: true)
        }
        if herbaltea(answer: answer, question: question) {
            let vc = storyboard?.instantiateViewController(identifier: "herbaltea") as! HerbalTeaViewController
            vc.modalPresentationStyle = .automatic
            present(vc, animated: true)
        }
        if oolongtea(answer: answer, question: question) {
            let vc = storyboard?.instantiateViewController(identifier: "oolongtea") as! OolongTeaViewController
            vc.modalPresentationStyle = .automatic
            present(vc, animated: true)
        }
        if whitetea(answer: answer, question: question) {
            let vc = storyboard?.instantiateViewController(identifier: "whitetea") as! WhiteTeaViewController
            vc.modalPresentationStyle = .automatic
            present(vc, animated: true)
        }
        if yellowtea(answer: answer, question: question) {
            let vc = storyboard?.instantiateViewController(identifier: "yellowtea") as! YellowTeaViewController
            vc.modalPresentationStyle = .automatic
            present(vc, animated: true)
        }
    }

}

struct Question {
    let text: String
    let answer: [Answer]
}

struct Answer {
    let text: String
    let black: Bool
    let green: Bool
    let herbal: Bool
    let oolong: Bool
    let white: Bool
    let yellow: Bool
}
