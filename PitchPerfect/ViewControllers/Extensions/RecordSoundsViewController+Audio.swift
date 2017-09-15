//
//  RecordSoundsViewController+Audio.swift
//  PitchPerfect
//
//  Created by Antonio da Silva on 15/09/2017.
//  Copyright © 2017 TNTStudios. All rights reserved.
//

import UIKit
import AVFoundation

extension RecordSoundsViewController: AVAudioRecorderDelegate {
    
    // MARK: - AVAudioRecorderDelegate
    
    func audioRecorderDidFinishRecording(_ recorder: AVAudioRecorder, successfully flag: Bool) {
        if flag {
            performSegue(withIdentifier: "stopRecording", sender: audioRecorder.url)
        }  else {
            showAlert(Alerts.AudioRecordingError, message: Alerts.RecordingFailedMessage)
        }
    }
    
    func audioRecorderEncodeErrorDidOccur(_ recorder: AVAudioRecorder, error: Error?) {
        showAlert(Alerts.AudioRecorderError, message: String(describing: error))
    }
    
}

