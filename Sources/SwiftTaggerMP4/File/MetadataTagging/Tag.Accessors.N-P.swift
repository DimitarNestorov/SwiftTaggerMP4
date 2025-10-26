//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 9/2/20.
//

import Foundation
import iTunesGenreID

extension Tag {
    public var narrator: String? {
        get {
            if let atom = metadataAtoms[.narrator] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .narrator, stringValue: new, isMOV: isMOV)
                    metadataAtoms[.narrator] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.narrator)")
                }
            } else {
                metadataAtoms[.narrator] = nil
            }
        }
    }
    
    public var originalArtist: String? {
        get {
            if let atom = metadataAtoms[.originalArtist] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .originalArtist, stringValue: new, isMOV: isMOV)
                    metadataAtoms[.originalArtist] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.originalArtist)")
                }
            } else {
                metadataAtoms[.originalArtist] = nil
            }
        }
    }
    
    public var owner: String? {
        get {
            if let atom = metadataAtoms[.owner] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .owner, stringValue: new, isMOV: isMOV)
                    metadataAtoms[.owner] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.owner)")
                }
            } else {
                metadataAtoms[.owner] = nil
            }
        }
    }

    public var performers: [String]? {
        get {
            if let atom = metadataAtoms[.performers] as? StringMetadataAtom {
                return atom.stringValue.toArray
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .performers, stringValue: new.toString, isMOV: isMOV)
                    metadataAtoms[.performers] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.performers)")
                }
            } else {
                metadataAtoms[.performers] = nil
            }
        }
    }
    
    public var playlistID: Int? {
        get {
            if let atom = metadataAtoms[.playlistID] as? IntegerMetadataAtom {
                return atom.intValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try IntegerMetadataAtom(identifier: .playlistID, intValue: new, isMOV: isMOV)
                    metadataAtoms[.playlistID] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(IntegerMetadataIdentifier.playlistID)")
                }
            } else {
                metadataAtoms[.playlistID] = nil
            }
        }
    }
    
    public var podcast: Bool? {
        get {
            if let atom = metadataAtoms[.podcast] as? IntegerMetadataAtom {
                if atom.intValue == 1 {
                    return true
                } else {
                    return false
                }
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    if new == true {
                        let atom = try IntegerMetadataAtom(identifier: .podcast, intValue: 1, isMOV: isMOV)
                        metadataAtoms[.podcast] = atom
                    } else {
                        let atom = try IntegerMetadataAtom(identifier: .podcast, intValue: 0, isMOV: isMOV)
                        metadataAtoms[.podcast] = atom
                    }
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(IntegerMetadataIdentifier.podcast)")
                }
            } else {
                metadataAtoms[.podcast] = nil
            }
        }
    }
    
    public var podcastID: String? {
        get {
            if let atom = metadataAtoms[.podcastID] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .podcastID, stringValue: new, isMOV: isMOV)
                    metadataAtoms[.podcastID] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.podcastID)")
                }
            } else {
                metadataAtoms[.podcastID] = nil
            }
        }
    }

    public var podcastFeed: String? {
        get {
            if let atom = metadataAtoms[.podcastUrl] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .podcastUrl, stringValue: new, isMOV: isMOV)
                    metadataAtoms[.podcastUrl] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.podcastUrl)")
                }
            } else {
                metadataAtoms[.podcastUrl] = nil
            }
        }
    }

    /// Stores the genre as a string value
    public var predefinedGenre: Genre? {
        get {
            if let atom = metadataAtoms[.predefinedGenre] as? StringMetadataAtom {
                return Genre(stringValue: atom.stringValue)
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .predefinedGenre, stringValue: new.stringValue, isMOV: isMOV)
                    metadataAtoms[.predefinedGenre] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.predefinedGenre)")
                }
            } else {
                metadataAtoms[.predefinedGenre] = nil
            }
        }
    }

    public var producer: String? {
        get {
            if let atom = metadataAtoms[.producer] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .producer, stringValue: new, isMOV: isMOV)
                    metadataAtoms[.producer] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.producer)")
                }
            } else {
                metadataAtoms[.producer] = nil
            }
        }
    }

    public var producerKeywords: [String]? {
        get {
            if let atom = metadataAtoms[.producerKeywords] as? StringMetadataAtom {
                return atom.stringValue.toArray
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .producerKeywords, stringValue: new.toString, isMOV: isMOV)
                    metadataAtoms[.producerKeywords] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.producerKeywords)")
                }
            } else {
                metadataAtoms[.producerKeywords] = nil
            }
        }
    }
    
    public var publisher: String? {
        get {
            if let atom = metadataAtoms[.publisher] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .publisher, stringValue: new, isMOV: isMOV)
                    metadataAtoms[.publisher] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.publisher)")
                }
            } else {
                metadataAtoms[.publisher] = nil
            }
        }
    }
    
    @available(OSX 10.12, iOS 12.0, *)
    public var purchaseDate: Date? {
        get {
            if let atom = metadataAtoms[.purchaseDate] as? StringMetadataAtom {
                let string = atom.stringValue
                if let date = string.attemptDateFromString() {
                    return date
                } else {
                    return nil
                }
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                let formatter = ISO8601DateFormatter()
                let timeZone = TimeZone(secondsFromGMT: 0) ?? .current
                formatter.formatOptions = .withInternetDateTime
                formatter.timeZone = timeZone
                do {
                    let atom = try StringMetadataAtom(identifier: .purchaseDate, stringValue: formatter.string(from: new), isMOV: isMOV)
                    metadataAtoms[.purchaseDate] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.purchaseDate)")
                }
            } else {
                metadataAtoms[.purchaseDate] = nil
            }
        }
    }
}
