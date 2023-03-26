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

/*import UIKit
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

}*/

import UIKit
import Metal
import MetalKit
import ARKit

class ViewController: UIViewController, MTKViewDelegate, ARSessionDelegate {

    var session: ARSession!
    var device: MTLDevice!
    var commandQueue: MTLCommandQueue!
    var pipelineState: MTLRenderPipelineState!
    var pointCloudVertexBuffer: MTLBuffer?
    var pointCloudVertexCount: Int = 0

    @IBOutlet var metalView: MTKView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Configure Metal view
        metalView.device = MTLCreateSystemDefaultDevice()
        metalView.delegate = self
        metalView.clearColor = MTLClearColorMake(0, 0, 0, 1)
        metalView.colorPixelFormat = .bgra8Unorm
        metalView.depthStencilPixelFormat = .depth32Float

        // Configure AR session
        session = ARSession()
        session.delegate = self
        let configuration = ARWorldTrackingConfiguration()
        session.run(configuration)

        // Set up Metal objects
        device = metalView.device!
        commandQueue = device.makeCommandQueue()!
        let library = device.makeDefaultLibrary()!
        let vertexFunction = library.makeFunction(name: "pointCloudVertexShader")
        let fragmentFunction = library.makeFunction(name: "pointCloudFragmentShader")
        let pipelineDescriptor = MTLRenderPipelineDescriptor()
        pipelineDescriptor.vertexFunction = vertexFunction
        pipelineDescriptor.fragmentFunction = fragmentFunction
        pipelineDescriptor.colorAttachments[0].pixelFormat = .bgra8Unorm
        pipelineDescriptor.depthAttachmentPixelFormat = .depth32Float
        pipelineState = try! device.makeRenderPipelineState(descriptor: pipelineDescriptor)
    }

    // MARK: - MTKViewDelegate

    func draw(in view: MTKView) {
        // Get Metal objects
        guard let drawable = view.currentDrawable,
              let renderPassDescriptor = view.currentRenderPassDescriptor,
              let commandBuffer = commandQueue.makeCommandBuffer(),
              let renderEncoder = commandBuffer.makeRenderCommandEncoder(descriptor: renderPassDescriptor) else { return }

        // Set render state
        renderEncoder.setRenderPipelineState(pipelineState)
        renderEncoder.setVertexBuffer(pointCloudVertexBuffer, offset: 0, index: 0)

        // Draw point cloud
        renderEncoder.drawPrimitives(type: .point, vertexStart: 0, vertexCount: pointCloudVertexCount)

        // End rendering
        renderEncoder.endEncoding()
        commandBuffer.present(drawable)
        commandBuffer.commit()
    }

    func mtkView(_ view: MTKView, drawableSizeWillChange size: CGSize) {
        // Not needed
    }

    // MARK: - ARSessionDelegate

    func session(_ session: ARSession, didUpdate frame: ARFrame) {
        // Get point cloud data
        guard let pointCloud = frame.rawFeaturePoints else { return }
        let pointCloudPoints = pointCloud.points

        // Update point cloud buffer
        pointCloudVertexCount = pointCloudPoints.count
        pointCloudVertexBuffer = device.makeBuffer(bytes: pointCloudPoints, length: MemoryLayout<simd_float3>.stride * pointCloudVertexCount, options: [])

        // Redraw Metal view
        metalView.draw()
    }

    func session(_ session: ARSession, didFailWithError error: Error) {
        // Handle error
    }

    func sessionWasInterrupted(_ session: ARSession) {
        // Handle interruption
    }

    func sessionInterruptionEnded(_ session: ARSession) {
        // Handle interruption end
    }

}

