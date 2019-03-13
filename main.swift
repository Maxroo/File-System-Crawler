//
//  main.swift
//  SwitftThing
//
//  Created by admin on 2019-03-06.
//  Copyright © 2019 admin. All rights reserved.
//

import Foundation


//print(evaluate(expr: "((2+2)+2)"))
var numberOfDir = 0
var numberOfFile = 0

func fileCrawl(_ url : URL, _ prefix: String = "", _ shit: Bool = true){
    if shit {
        print(prefix + url.lastPathComponent)
    }
    let fileManager = FileManager.default
    var newPrefix = prefix
    do {
        let fileURLs = try fileManager.contentsOfDirectory(at: url, includingPropertiesForKeys: nil)
        // process files
        for files in fileURLs{
            if let lastFile = fileURLs.last{
                if lastFile == files {
                    newPrefix = prefix + " └─ "
                } else{
                    newPrefix = prefix + " ├─ "
                }
            }
            print(newPrefix + files.lastPathComponent)
            if files.hasDirectoryPath{
                numberOfDir += 1
                if let lastFile = fileURLs.last{
                    if lastFile == files {
                        newPrefix = prefix + "    "
                    } else {
                        newPrefix = prefix + " │  "
                    }
                }
                fileCrawl(files, newPrefix, false)
            }else{
                numberOfFile += 1
            }
        }
        
    } catch {
        print("Error while enumerating files \(url): \(error.localizedDescription)")
    }
}


fileCrawl(URL.init(string: "/Users/admin/Desktop/Swift/" )!)
print("Number of Files: " + String(numberOfFile))
print("Number of Directory: " + String(numberOfDir))
