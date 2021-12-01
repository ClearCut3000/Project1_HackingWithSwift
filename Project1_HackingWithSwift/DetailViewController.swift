//
//  DetailViewController.swift
//  Project1_HackingWithSwift
//
//  Created by Николай Никитин on 01.12.2021.
//

import UIKit

class DetailViewController: UIViewController {


  //MARK: - Properties
  @IBOutlet var imageView: UIImageView!
  var selectedImage: String?
  
  //MARK: - ViewController LifeCicle
  override func viewDidLoad() {
    super.viewDidLoad()
    title = selectedImage
    navigationItem.largeTitleDisplayMode = .never
    if let imageToLoad = selectedImage {
      imageView.image = UIImage(named: imageToLoad)
    }
  }

  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    navigationController?.hidesBarsOnTap = true
  }

  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    navigationController?.hidesBarsOnTap = false
  }

}
