//
//  CameraView.swift
//  IgnitionHacks2023
//
//  Created by Lauren Lidhar on 2023-08-26.
//

import SwiftUI
import AVFoundation


struct CameraView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        let view = UIView(frame: CGRect.zero)
        
        let captureSession = AVCaptureSession()
        
        let captureSessionQueue = DispatchQueue(label: "com.myapp.captureSessionQueue")
        captureSessionQueue.async {
            // Perform heavy setup tasks
            
            captureSession.startRunning()
            
            DispatchQueue.main.async {
                // Configure preview layer and add to view
                let previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
                previewLayer.frame = view.layer.bounds
                view.layer.addSublayer(previewLayer)
            }
        }
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        // Handle updates, if needed
    }
}



// struct cameraView: UIViewRepresentable {
//    func makeUIView(context: Context) -> UIView {
//        let view = UIView(frame: CGRect.zero)
//        let captureSession = AVCaptureSession()
//
//        guard let videoCaptureDevice = AVCaptureDevice.default(for: .video),
//              let videoInput = try? AVCaptureDeviceInput(device: videoCaptureDevice) else {
//            return view
//        }
//
//
//        captureSession.addInput(videoInput)
//        captureSession.startRunning()
//
//
//        let previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
//        previewLayer.frame = view.layer.bounds
//        view.layer.addSublayer(previewLayer)
//
//        return view
//    }
//
//    func updateUIView(_ uiView: UIView, context: Context) {
//        // Handle updates, if needed
//    }
//}
