//
//  MoMoConfig.swift
//  SampleApp-Swift
//
//  Created by Luu Lanh on 4/24/17.
//  Copyright © 2017 LuuLanh. All rights reserved.
//

import UIKit

let APP_MERCHANT_BUNDLE_ID_KEY = "APP_MERCHANT_BUNDLE_ID_KEY"
let MOMO_PAY_CLIENT_MERCHANT_CODE_KEY = "merchantcode"
let MOMO_PAY_CLIENT_MERCHANT_NAME_KEY = "merchantname"
let MOMO_PAY_CLIENT_MERCHANT_NAME_LABEL_KEY = "merchantnamelabel"
let MOMO_PAY_CLIENT_IP_ADDRESS_KEY = "ipaddress"
let MOMO_PAY_CLIENT_PUBLIC_KEY_KEY = "accesskey"
let MOMO_PAY_SDK_VERSION_KEY = "sdkversion"
let MOMO_PAY_CLIENT_OS_KEY = "clientos"
let MOMO_PAY_CLIENT_APP_SOURCE_KEY = "appSource"
let MOMO_PAY_CLIENT_MERCHANT_TRANS_ID = "merchanttransId"
let MOMO_PAY_CLIENT_AMOUNT_TRANSFER = "amount"
let MOMO_PAY_CLIENT_FEE_TRANSFER = "fee"
let MOMO_PAY_CLIENT_TRANSFER_DESCRIPTION = "description"
let MOMO_PAY_CLIENT_USERNAME = "username"
let MOMO_PAY_CLIENT_ACTION = "action"
let MOMO_NOTIFICATION_CENTER_TOKEN_RECEIVED = "NoficationCenterTokenReceived"
/*
 Sanbox bundleId "com.momo.appv2.ios"
 Production bundleId "com.mservice.com.vn.momotransfer"
 */
let MOMO_APP_BUNDLE_ID = "com.momo.appv2.ios"//"com.mservice.com.vn.momotransfer"
let MOMO_PAY_SDK_VERSION = "2.0"
let MOMO_APP_ITUNES_DOWNLOAD_PATH = "itms-apps://itunes.apple.com/us/app/momo-chuyen-nhan-tien/id918751511"

let APP_MERCHANT_ACTION_KEY = "APP_MERCHANT_ACTION_KEY"
let MOMO_PAY_SDK_ACTION_GETTOKEN = "gettoken"
let MOMO_PAY_SDK_ACTION_MAPPING = "mapping"
let MOMO_TOKEN_RESPONSE_SUCCESS = "0"
let MOMO_TOKEN_RESPONSE_REGISTER_PHONE_NUMBER_REQUIRE = "1"
let MOMO_TOKEN_RESPONSE_LOGIN_REQUIRE = "2"
let MOMO_TOKEN_RESPONSE_NO_WALLET = "3"
let MOMO_HTTP = "http://"
let MOMO_HTTPS = "https://"
/*
 Sanbox API http://  apptest2.momo.vn:8091/paygamebill
 Production API http:// app.momo.vn:8082/paygamebill
 
 */
let MOMO_REQUEST_PATH = "apptest2.momo.vn:8091/paygamebill"

let MOMO_PAYMENT_URL = "\(MOMO_HTTP)\(MOMO_REQUEST_PATH)"

class MoMoConfig {
    
    class func setAppBundleId(bundleId: String) {
        Foundation.UserDefaults.standard.setValue(bundleId, forKey: APP_MERCHANT_BUNDLE_ID_KEY)
        Foundation.UserDefaults.standard.synchronize()
        //print("<MoMoPay> Can not set bundleId. This value is not null")
    }
    
    class func getAppBundleId() -> String {
        return Foundation.UserDefaults.standard.object(forKey:APP_MERCHANT_BUNDLE_ID_KEY) as! String
    }
    
    class func setMerchantcode(merchantCode: String) {
        Foundation.UserDefaults.standard.setValue(merchantCode, forKey: MOMO_PAY_CLIENT_MERCHANT_CODE_KEY)
        
        if !merchantCode .isEmpty {
            
        }
        else {
            print("<MoMoPay> Can not set merchantCode. This value is not null")
        }
    }
    
    class func getMerchantcode() -> String {
        return Foundation.UserDefaults.standard.object(forKey:MOMO_PAY_CLIENT_MERCHANT_CODE_KEY) as! String
    }
    
    class func getAction() -> String {
        //
        //        if Foundation.UserDefaults.standard.object(forKey:APP_MERCHANT_ACTION_KEY)! {
        //            return Foundation.UserDefaults.standard.object(forKey:APP_MERCHANT_ACTION_KEY) as? [String]
        //        }
        return "gettoken"
    }
    
    class func setAction(action: String) {
        Foundation.UserDefaults.standard.setValue(action, forKey: APP_MERCHANT_ACTION_KEY)
        //print("<MoMoPay> Can not set action. This value is not null")
    }
    
    class func setMerchantname(merchantName: String) {
        Foundation.UserDefaults.standard.setValue(merchantName, forKey: MOMO_PAY_CLIENT_MERCHANT_NAME_KEY)
        //print("<MoMoPay> Can not set merchantName. This value is not null")
    }
    
    class func getMerchantname() -> String {
        return Foundation.UserDefaults.standard.object(forKey:MOMO_PAY_CLIENT_MERCHANT_NAME_KEY) as! String
    }
    
    class func setMerchantnameLabel(merchantnameLabel: String) {
        Foundation.UserDefaults.standard.setValue(merchantnameLabel, forKey: MOMO_PAY_CLIENT_MERCHANT_NAME_LABEL_KEY)
        //print("<MoMoPay> Can not set merchantnameLabel. This value is not null")
    }
    
    class func getMerchantnameLabel() -> String {
        return Foundation.UserDefaults.standard.object(forKey:MOMO_PAY_CLIENT_MERCHANT_NAME_LABEL_KEY) as! String
    }
    
    class func setPublickey(merchantpublickey: String) {
        Foundation.UserDefaults.standard.setValue(merchantpublickey, forKey: MOMO_PAY_CLIENT_PUBLIC_KEY_KEY)
        //print("<MoMoPay> Can not set merchantipaddress. This value is not null")
    }
    
    class func getPublickey() -> String {
        
        return UserDefaults.standard.object(forKey:MOMO_PAY_CLIENT_PUBLIC_KEY_KEY) as! String
    }
    
    
    class func getIPAddress() -> String {
        
        return "10.10.100.100"
    }
    
    
    class func getDeviceInfoString() -> String {
        let aDevice = UIDevice.current //UIDevice.currentDevice()
        let deviceInfoString = "\(aDevice.localizedModel) \(aDevice.systemName) \(aDevice.systemVersion)"
        return deviceInfoString
    }
}