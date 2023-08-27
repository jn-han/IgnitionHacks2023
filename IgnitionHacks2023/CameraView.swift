//
//  CameraView.swift
//  IgnitionHacks2023
//
//  Created by Lauren Lidhar on 2023-08-26.
//

import SwiftUI
import AVFoundation
import UIKit


struct CameraView: UIViewRepresentable {
//
//    @State private var navigationLinkIsActive = false
    
    func makeUIView(context: Context) -> UIView {
        let view = UIView(frame: CGRect.zero)
        let captureSession = AVCaptureSession()
        
        guard let videoCaptureDevice = AVCaptureDevice.default(for: .video),
              let videoInput = try? AVCaptureDeviceInput(device: videoCaptureDevice) else {
            return view
        }
        
        
        captureSession.addInput(videoInput)
        captureSession.startRunning()
        
        DispatchQueue.main.async {
            let previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
            previewLayer.frame = view.layer.bounds
            view.layer.addSublayer(previewLayer)
            
            let imageView = UIImageView(frame: CGRect(x: 150, y: 20, width: 100, height: 25))
            imageView.image = UIImage(named: "inteflow")
            
            let imageView2 = UIImageView(frame: CGRect(x: 0, y: 610, width: 390, height: 95))
            imageView2.image = UIImage(named: "Capture")
            
//            Image(uiImage: UIImage(named: "Capture")!)
//                .frame(width: 390, height: 95)
//                .onTapGesture {
//                    // Navigate to the Chat view
//                    NavigationLink(destination: Chat()) {
//                                Image(uiImage: UIImage(named: "Capture")!)
//                                    .frame(width: 390, height: 95)
//                            }
//                }
            
            
//            let tapGesture = UITapGestureRecognizer(target: context.coordinator, action: #selector(Coordinator.imageTapped))
//            imageView.isUserInteractionEnabled = true
//            imageView.addGestureRecognizer(tapGesture)
//            NavigationLink("", destination: Chat(), isActive: $navigationLinkIsActive)
            
            view.addSubview(imageView)
            view.addSubview(imageView2)
            
            
        }
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        
    }
//    func makeCoordinator() -> Coordinator {
//        Coordinator(self)
//    }
//
//    class Coordinator: NSObject {
//        var parent: CameraView
//
//        init(_ parent: CameraView) {
//            self.parent = parent
//        }
//
//        @objc func imageTapped() {
//            // Perform navigation here
//            parent.navigationLinkIsActive = true
//        }
        
    //}
}

//struct CameraPreview: View {
//    var body: some View {
//        ZStack{
//            CameraView()
//            Image("inteflow")
//        }
//    }
//}
