//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
      setupViews()
    }
    
//    настройка представлений сцены
    private func setupViews() {
        self.view = getRootView()
        let redView = getRedView()
        self.view.addSubview(redView)
        redView.addSubview(getGreenView())
    }
    
//    создание корневого представления
    private func getRootView() -> UIView {
        let view = UIView()
        view.backgroundColor = .gray
        return view
    }
    
//    создание красного представления
    private func getRedView() -> UIView {
        let viewFrame: CGRect = CGRect(x: 50, y: 50, width: 200, height: 200)
        let view = UIView(frame: viewFrame)
        view.backgroundColor = .red
//        обрезка дочерних элементов в соответствии с границами родителя
        view.clipsToBounds = true
        return view
    }
    
//    создание зеленого представления
    private func getGreenView() -> UIView {
        let viewFrame: CGRect = CGRect(x: 100, y: 100, width: 180, height: 180)
        let view = UIView(frame: viewFrame)
        view.backgroundColor = .green
        return view
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
