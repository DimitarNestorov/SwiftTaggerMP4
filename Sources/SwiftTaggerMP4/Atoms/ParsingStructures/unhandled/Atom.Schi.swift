/*
 Schi.swift
 SwiftTaggerMP4
 
 Created by Nolaine Crusher on 8/4/20.
 */

import Foundation

/// A class representing a `schi` atom in an `Mp4File`'s atom structure
///
/// **Not currently implemented**
class Schi: Atom {
    
    override init(identifier: String, size: Int, payload: Data, isMOV: Bool) throws {
        var data = payload
        
        var children = [Atom]()
        while !data.isEmpty {
            if let child = try data.extractAndParseToAtom(isMOV: isMOV) {
                children.append(child)
            }
        }
        try super.init(identifier: identifier, size: size, isMOV: isMOV, children: children)
    }
    
   /// Converts the atom's contents to Data when encoding the atom to write to file.
   override var contentData: Data {
        var data = Data()
        for child in children {
            data.append(child.encode)
        }
        return data
    }
}
