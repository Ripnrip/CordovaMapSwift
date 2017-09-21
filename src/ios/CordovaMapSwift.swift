//
//  CordovaMapSwift.swift
//
//  Created by Admin on 9/21/17.
//
import MapKit
import UIKit

@objc(CordovaMapSwift) class CordovaMapSwift : CDVPlugin {
    
    let map = MKMapView(frame: CGRect(x: 0, y: 30, width: 300, height: 300))
    
    
    @objc(echo:)
    func echo(command: CDVInvokedUrlCommand) {
        var pluginResult = CDVPluginResult(
            status: CDVCommandStatus_ERROR
        )
        let msg = command.arguments[0] as? String ?? ""
        
        if msg.characters.count > 0 {
            let toastController: UIAlertController =
                UIAlertController(
                    title: "",
                    message: msg,
                    preferredStyle: .alert
            )
            self.viewController?.present(
                toastController,
                animated: true,
                completion: nil
            )
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                toastController.dismiss(
                    animated: true,
                    completion: nil
                )
            }
            pluginResult = CDVPluginResult(
                status: CDVCommandStatus_OK,
                messageAs: msg
            )
        }
        
        self.commandDelegate!.send(
            pluginResult,
            callbackId: command.callbackId
        )
    }
    
    @objc(showMap:)
    func showMap(command: CDVInvokedUrlCommand){
        // add mapview to webview --> webView.addSubView(map)
        var pluginResult = CDVPluginResult(
            status: CDVCommandStatus_ERROR
        )
        let msg = command.arguments[0] as? String ?? ""
        
        webView.addSubview(map)
        pluginResult = CDVPluginResult(
            status: CDVCommandStatus_OK,
            messageAs: msg
        )
        self.commandDelegate!.send(
            pluginResult,
            callbackId: command.callbackId
        )
        
    }
    
    @objc(hideMap:)
    func hideMap(command: CDVInvokedUrlCommand){
        // hide mapview to webview --> map.removeFromSuperView()
        var pluginResult = CDVPluginResult(
            status: CDVCommandStatus_ERROR
        )
        let msg = command.arguments[0] as? String ?? ""
        
        map.removeFromSuperview()
        
        pluginResult = CDVPluginResult(
            status: CDVCommandStatus_OK,
            messageAs: msg
        )
        
        self.commandDelegate!.send(
            pluginResult,
            callbackId: command.callbackId
        )
        
    }
    
    
}

