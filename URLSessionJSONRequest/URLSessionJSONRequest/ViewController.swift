

import UIKit

class ViewController: UIViewController {

    @IBAction func onGetTapped(_ sender: Any) {
    
        guard let url = URL( string: "https://jsonplaceholder.typicode.com/users" ) else {
            return
        }
        
        let session = URLSession.shared
        session.dataTask(with: url) { (data, response , error ) in
            if let response = response{
                print(response)
                
            }
            if let data = data{
                print(data)
                do {
                    let json = try JSONSerialization.jsonObject(with: data, options: [])
                    print(json)
                } catch{
                    print(error)
                }
        }
    }.resume()
        
}
    @IBAction func onPostTapped(_ sender: Any) {
    
        let parameters = ["username" : "shobha" , "tweet" : "helloworld"]
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts")else{
            return
            }
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        guard let httpBody = try? JSONSerialization.data(withJSONObject: parameters, options: []) else {return}
        request.httpBody = httpBody
        
        let session = URLSession.shared
        session.dataTask(with: request){ (data, response, error) in
            if let response = response{
            print(response)
        }
            if let data = data {
                do{
                    let json =  try JSONSerialization.jsonObject(with: data, options: [])
                    print(json)
                } catch {
                    print(error)
                }
        }
        }.resume()
    
    }
    
}



