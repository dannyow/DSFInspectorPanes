//
//  MainViewController.swift
//  DSFInspectorPanes_Demo
//
//  Created by Darren Ford on 11/6/19.
//  Copyright © 2019 Darren Ford. All rights reserved.
//

import Cocoa
import DSFInspectorPanes

class MainViewController: NSViewController {

	let shortDescription = ShortDescriptionViewController()
	let longDescription = LongDescriptionViewController()
	let imageItem = ImageViewController()

	private var panes: DSFInspectorPanesView {
		return self.view as! DSFInspectorPanesView
	}

	override func viewDidLoad() {
        super.viewDidLoad()

		self.setup()
    }

	func setup() {
		panes.add(title: "Short Description",
				  view: shortDescription.view)
		panes.add(title: "Long Description",
				  view: longDescription.view)
		panes.add(title: "Image", view: imageItem.view, headerAccessoryView: imageItem.headerView, canHide: true, expanded: false)
	}
}
