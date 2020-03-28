//
//  ModelDataHandling.swift
//  ImageClassification
//
//  Created by Ivan Cheung on 3/28/20.
//  Copyright © 2020 Y Media Labs. All rights reserved.
//

import CoreImage

/// A result from invoking the `Interpreter`.
struct Result<Inference> {
  let inferenceTime: Double
  let inferences: Inference
}

/// Information about a model file or labels file.
typealias FileInfo = (name: String, extension: String)

protocol ModelDataHandling {
    associatedtype Inference
    func runModel(onFrame pixelBuffer: CVPixelBuffer) -> Result<Inference>?
}
