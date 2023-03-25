//
//  ViewController.swift
//  lazervisonStoryboard
//
//  Created by Paul Chinnam on 3/24/23.
//

//import UIKit
//import SceneKit
//import ARKit
//
//class ViewController: UIViewController, ARSCNViewDelegate {
//
//    @IBOutlet var sceneView: ARSCNView!
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        let configuration = ARWorldTrackingConfiguration()
//        configuration.sceneReconstruction = .meshWithClassification
//        if ARWorldTrackingConfiguration.supportsSceneReconstruction(.meshWithClassification) {
//            self.sceneView.session.run(configuration)
//        } else {
//            fatalError("Device not compatible with scene reconstruction")
//        }
//
//        // Set the view's delegate
//        sceneView.delegate = self
//
//        // Show statistics such as fps and timing information
//        sceneView.showsStatistics = true
//
//        // Create a new scene
//        let scene = SCNScene()
//
//        // Set the scene to the view
//        sceneView.scene = scene
//    }
//
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//
//    }
//
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//
//        // Pause the view's session
//        sceneView.session.pause()
//    }
//
//    // MARK: - ARSCNViewDelegate
//    func renderer(_ renderer: SCNSceneRenderer, didUpdate node: SCNNode, for anchor: ARAnchor) {
//        guard let frame = self.sceneView.session.currentFrame else { return }
//
//        if let pointCloud = frame.rawFeaturePoints {
//            let points = pointCloud.points.map { SCNVector3($0) }
//
//            let verticesSource = SCNGeometrySource(vertices: points)
//
//            if let geometry = node.geometry as? SCNGeometry {
//                let elements = geometry.elements
//                let indices = [UInt32](repeating: 0, count: pointCloud.points.count)
//                let pointCloudElement = SCNGeometryElement(indices: indices, primitiveType: .point)
//
//                let shaderModifier = """
//                    _geometry.pointSize = 10.0;
//                """
//
//                node.geometry = SCNGeometry(sources: [verticesSource], elements: [pointCloudElement])
//                node.geometry?.firstMaterial?.lightingModel = .constant
//                node.geometry?.firstMaterial?.selfIllumination.contents = UIColor.white
//                node.geometry?.shaderModifiers = [.geometry: shaderModifier]
//            } else {
//                let indices = [UInt32](repeating: 0, count: pointCloud.points.count)
//                let pointCloudElement = SCNGeometryElement(indices: indices, primitiveType: .point)
//
//                let shaderModifier = """
//                    _geometry.pointSize = 10.0;
//                """
//
//                let geometry = SCNGeometry(sources: [verticesSource], elements: [pointCloudElement])
//                geometry.firstMaterial?.lightingModel = .constant
//                geometry.firstMaterial?.selfIllumination.contents = UIColor.white
//                geometry.shaderModifiers = [.geometry: shaderModifier]
//                node.geometry = geometry
//            }
//        }
//    }
//
//
//    func session(_ session: ARSession, didFailWithError error: Error) {
//        // Present an error message to the user
//    }
//
//    func sessionWasInterrupted(_ session: ARSession) {
//        // Inform the user that the session has been interrupted, for example, by presenting an overlay
//    }
//
//    func sessionInterruptionEnded(_ session: ARSession) {
//        // Reset tracking and/or remove existing anchors if consistent tracking is required
//    }
//
//}


//import UIKit
//import SceneKit
//import ARKit
//
//class ViewController: UIViewController, ARSCNViewDelegate {
//
//    @IBOutlet var sceneView: ARSCNView!
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        let configuration = ARWorldTrackingConfiguration()
//        configuration.sceneReconstruction = .meshWithClassification
//        if ARWorldTrackingConfiguration.supportsSceneReconstruction(.meshWithClassification) {
//            self.sceneView.session.run(configuration)
//        } else {
//            fatalError("Device not compatible with scene reconstruction")
//        }
//
//        // Set the view's delegate
//        sceneView.delegate = self
//
//        // Show statistics such as fps and timing information
//        sceneView.showsStatistics = true
//
//        // Create a new scene
//        let scene = SCNScene()
//
//        // Set the scene to the view
//        sceneView.scene = scene
//    }
//
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//
//    }
//
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//
//        // Pause the view's session
//        sceneView.session.pause()
//    }
//
//    // MARK: - ARSCNViewDelegate
//    func renderer(_ renderer: SCNSceneRenderer, didUpdate node: SCNNode, for anchor: ARAnchor) {
//        guard let frame = self.sceneView.session.currentFrame else { return }
//
//        if let pointCloud = frame.rawFeaturePoints {
//            let points = pointCloud.points.map { SCNVector3($0) }
//            print("Number of feature points: \(points.count)") // Added print statement
//
//            let verticesSource = SCNGeometrySource(vertices: points)
//
//            if let geometry = node.geometry as? SCNGeometry {
//                let elements = geometry.elements
//                let indices = [UInt32](repeating: 0, count: pointCloud.points.count)
//                let pointCloudElement = SCNGeometryElement(indices: indices, primitiveType: .point)
//
//                let shaderModifier = """
//                    _geometry.pointSize = 3.0;
//                """
//
//                node.geometry = SCNGeometry(sources: [verticesSource], elements: [pointCloudElement])
//                node.geometry?.firstMaterial?.lightingModel = .constant
//                node.geometry?.firstMaterial?.selfIllumination.contents = UIColor.white
//                node.geometry?.shaderModifiers = [.geometry: shaderModifier]
//            } else {
//                let indices = [UInt32](repeating: 0, count: pointCloud.points.count)
//                let pointCloudElement = SCNGeometryElement(indices: indices, primitiveType: .point)
//
//                let shaderModifier = """
//                    _geometry.pointSize = 3.0;
//                """
//
//                let geometry = SCNGeometry(sources: [verticesSource], elements: [pointCloudElement])
//                geometry.firstMaterial?.lightingModel = .constant
//                geometry.firstMaterial?.selfIllumination.contents = UIColor.white
//                geometry.shaderModifiers = [.geometry: shaderModifier]
//                node.geometry = geometry
//            }
//        }
//    }
//
//
//    func session(_ session: ARSession, didFailWithError error: Error) {
//        // Present an error message to the user
//    }
//
//    func sessionWasInterrupted(_ session: ARSession) {
//        // Inform the user that the session has been interrupted, for example, by presenting an overlay
//    }
//
//    func sessionInterruptionEnded(_ session: ARSession) {
//        // Reset tracking and/or remove existing anchors if consistent tracking is required
//    }
//
//}

import UIKit
import SceneKit
import ARKit

class ViewController: UIViewController, ARSCNViewDelegate {

    @IBOutlet var sceneView: ARSCNView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let configuration = ARWorldTrackingConfiguration()
        configuration.sceneReconstruction = .meshWithClassification
        if ARWorldTrackingConfiguration.supportsSceneReconstruction(.meshWithClassification) {
            self.sceneView.session.run(configuration)
        } else {
            fatalError("Device not compatible with scene reconstruction")
        }

        // Set the view's delegate
        sceneView.delegate = self

        // Show statistics such as fps and timing information
        sceneView.showsStatistics = true

        // Create a new scene
        let scene = SCNScene()

        // Set the scene to the view
        sceneView.scene = scene
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        // Pause the view's session
        sceneView.session.pause()
    }

    // MARK: - ARSCNViewDelegate
    func renderer(_ renderer: SCNSceneRenderer, didUpdate node: SCNNode, for anchor: ARAnchor) {
        print("Renderer function called")
        guard let frame = self.sceneView.session.currentFrame else { return }
                
        if let pointCloud = frame.rawFeaturePoints {
            let points = pointCloud.points.map { SCNVector3($0) }
            print("Number of feature points: \(points.count)") // Added print statement
            
            let verticesSource = SCNGeometrySource(vertices: points)
            
            if let geometry = node.geometry as? SCNGeometry {
                let elements = geometry.elements
                let indices = [UInt32](repeating: 0, count: pointCloud.points.count)
                let pointCloudElement = SCNGeometryElement(indices: indices, primitiveType: .point)
                
                let shaderModifier = """
                    _geometry.pointSize = 3.0;
                """
                
                node.geometry = SCNGeometry(sources: [verticesSource], elements: [pointCloudElement])
                node.geometry?.firstMaterial?.lightingModel = .constant
                node.geometry?.firstMaterial?.selfIllumination.contents = UIColor.white
                node.geometry?.shaderModifiers = [.geometry: shaderModifier]
            } else {
                let indices = [UInt32](repeating: 0, count: pointCloud.points.count)
                let pointCloudElement = SCNGeometryElement(indices: indices, primitiveType: .point)
                
                let shaderModifier = """
                    _geometry.pointSize = 3.0;
                """
                
                let geometry = SCNGeometry(sources: [verticesSource], elements: [pointCloudElement])
                geometry.firstMaterial?.lightingModel = .constant
                geometry.firstMaterial?.selfIllumination.contents = UIColor.white
                geometry.shaderModifiers = [.geometry: shaderModifier]
                node.geometry = geometry
            }
        }
    }


    func session(_ session: ARSession, didFailWithError error: Error) {
        // Present an error message to the user
    }

    func sessionWasInterrupted(_ session: ARSession) {
        // Inform the user that the session has been interrupted, for example, by presenting an overlay
    }

    func sessionInterruptionEnded(_ session: ARSession) {
        // Reset tracking and/or remove existing anchors if consistent tracking is required
    }

}
