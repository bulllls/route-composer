//
// Created by Eugene Kazaev on 25/02/2018.
//

import Foundation
import UIKit

public final class ImageDetailsViewController: UIViewController {

    @IBOutlet private var imageView: UIImageView!

    public weak var delegate: ImageDetailsControllerDelegate?

    public var imageFetcher: ImageDetailsFetcher?

    public var imageID: String? {
        didSet {
            reloadData()
        }
    }

    public override func viewDidLoad() {
        super.viewDidLoad()
        reloadData()
    }

    private func reloadData() {
        guard isViewLoaded, let imageID = imageID else {
            return
        }
        self.view.accessibilityIdentifier = "image\(imageID)ViewController"

        imageFetcher?.details(for: imageID) { image in
            self.imageView.image = image
        }
    }

    @IBAction func doneTapped() {
        delegate?.dismiss(imageDetails: self)
    }

}
