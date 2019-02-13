//
//  korgLowPassFilter.swift
//  AudioKit
//
//  Autogenerated by scripts by Aurelius Prochazka. Do not edit directly.
//  Copyright © 2018 AudioKit. All rights reserved.
//

extension AKComputedParameter {

    /// Analogue model of the Korg 35 Lowpass Filter
    ///
    /// - returns: AKOperation
    /// - parameter input: Input audio signal
    /// - parameter cutoffFrequency: Filter cutoff (Default: 1000.0, Minimum: 0.0, Maximum: 22050.0)
    /// - parameter resonance: Filter resonance (should be between 0-2) (Default: 1.0, Minimum: 0.0, Maximum: 2.0)
    /// - parameter saturation: Filter saturation. (Default: 0.0, Minimum: 0.0, Maximum: 10.0)
    ///
    public func korgLowPassFilter(
        cutoffFrequency: AKParameter = 1_000.0,
        resonance: AKParameter = 1.0,
        saturation: AKParameter = 0.0
        ) -> AKOperation {
        return AKOperation(module: "wpkorg35",
                           inputs: toMono(), cutoffFrequency, resonance, saturation)
    }
}

