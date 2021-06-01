let credentialData = "\(username):\(password)".data(using: String.Encoding.utf8)!
let base64Credentials = credentialData.base64EncodedString(options: [])
let headers = ["Authorization": "Basic \(base64Credentials)"]    
let postParams = [
            "Code": txtCode.text!.trimmingCharacters(in: .whitespacesAndNewlines),
            "UserName": txtUserName.text!.trimmingCharacters(in: .whitespacesAndNewlines),
            "ClientDetails": "",
            "AppVersionNo": "1.0"
        ]

Alamofire.request(
            URL(string:LOGIN_URL)!,
            method: .post,
            parameters: parameter,
            encoding: JSONEncoding.default,
            headers:headers)
            .responseObject {(response:DataResponse<DataModel>) in
                if let value = response.result.value{
                    switch response.result{
                    case .success:
                        completionHandler(value,true)
                    
                    case .failure:
                        completionHandler(value,false)
                    }
                }
        }
