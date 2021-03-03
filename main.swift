import Foundation
import FoundationNetworking
let baseUrl = "http://www.instagram.com/"
let username = "martin_lasek"
let url = URL(string: baseUrl + username)!
let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
    guard let data = data else {
        print("data was nil")
        return
    }
    guard let htmlString = String(data: data, encoding: .utf8) else {
        print("couldn't cast data into String")
        return
    }
    print(htmlString)
}
