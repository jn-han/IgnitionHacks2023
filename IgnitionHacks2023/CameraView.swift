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
             view.addSubview(imageView)
                 
             
         }
      
         return view
     }
         
         func updateUIView(_ uiView: UIView, context: Context) {
             
         }

}

//struct CameraPreview: View {
//    var body: some View {
//        ZStack{
//            CameraView()
//            Image("inteflow")
//        }
//    }
//}
