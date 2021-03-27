import SwiftSoup
import Foundation


/*
guard let url = URL(string: "https://na.op.gg/summoner/userName=Puffont") else {
    fatalError("Failed to create URL")
}
*/
//openURL(https://na.op.gg/summoner/userName=Puffont)

//let link = openURL

//needs library UIKit
// code obtained from https://www.youtube.com/watch?v=z2Z90aJUXhg&t=532s
  class ViewController: UIViewController { 
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    //do statement from swiftSoup
    do {
        
        // imput html within "", this is for parsing HTML, we need to use the webkit inside of swift in order to pull html from websites
        let html = ""

        // Swift Soup needs to work document type, we need to change html to doc type

        let doc: Document = try SwiftSoup.parse(html)

        // this is printing parts of the html that is type p <p> words <p>
        let p: Element = try doc.select("p").first()!
        print(try p.text)

        // .text method only prints within the type (<p>) so if if I want to print <p> hello <p> with .text, hello will only be printed

        let a: element = try doc.select("a").first()!
        let link: String = try a.attr("href")
        let text: String = try a.text()
        let className: String = try a.className()
        let idName: String = try a.id()

        print(link)
        print(text)
        print(className)
        print(idName)
        
        //looking for an attribute within a html, for example, href:"url" so if i want to take an href from type <a> I'll use .attr


        //What if there is a list with a certain type ex
        /*
         <i> name <i>
         <i> name 1 <i>
         <i> name 2 <i>
         */

        let listItems: [Elements] = try doc.select("i").array()
        // converts all list items into an array of elements
        let listName : String = try listItems[1].text()
        print(listItems[1])
        print(listName)
        // will print index 1 of the item list
        

        
        
    } catch Exception.Error(type: let type, Message: let message)  // catch is for printing out errors
    {
        print(type)
        print(message)
    } catch {
        print("")
    }
 }






/*
func doIt() throws -> String {
    let text: String
    let html = "<html><head><title>First parse</title></head>"
      + "<body><p>Parsed HTML into a doc.</p></body></html>"
    let doc: Document = try SwiftSoup.parse(html)
    text = try doc.text()
    return text
}

print(try doIt())

*/
