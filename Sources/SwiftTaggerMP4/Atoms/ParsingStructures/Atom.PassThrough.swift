/*
  PassThrough.swift


  Created by Nolaine Crusher on 6/30/20.
*/

import Foundation

/// A class representing atoms that are untouched in chaptering or metadata manipulation
public class PassThrough: Atom {
    
    public var payload: Data
    /// Initialize an atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data, isMOV: Bool) throws {
        self.payload = payload
        try super.init(identifier: identifier, size: size, payload: payload, isMOV: isMOV)
    }
    
   /// Converts the atom's contents to Data when encoding the atom to write to file.
   public override var contentData: Data {
        return self.payload
   }
}
