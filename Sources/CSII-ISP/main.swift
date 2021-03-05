import SwiftSoup


func doIt() throws -> String {
    let text: String
    let html = "<html><head><title>First parse</title></head>"
      + "<body><p>Parsed HTML into a doc.</p></body></html>"
    let doc: Document = try SwiftSoup.parse(html)
    text = try doc.text()
    return text
}

print(try doIt())

