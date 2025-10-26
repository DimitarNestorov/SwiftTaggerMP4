/*
  AtomIdentifier.Parsing.swift
  

  Created by Nolaine Crusher on 8/30/20.
*/

import Foundation
extension AtomIdentifier {
    /// Parses atom from parent atom content data. If the atom's identifier is not listed here, it's handled as a `PassThrough` atom whose contents are not handled by SwiftTaggerMP4
	func parse(size: Int, payload: Data, isMOV: Bool) throws -> Atom {
		switch self {
		case .chpl: return try Chpl(identifier: self.rawValue, size: size, payload: payload, isMOV: isMOV)
		case .co64: return try ChunkOffsetAtom(identifier: self.rawValue, size: size, payload: payload, isMOV: isMOV)
		case .data: return try DataAtom(identifier: self.rawValue, size: size, payload: payload, isMOV: isMOV)
		case .dinf: return try Dinf(identifier: self.rawValue, size: size, payload: payload, isMOV: isMOV)
		case .dref: return try Dref(identifier: self.rawValue, size: size, payload: payload, isMOV: isMOV)
		case .edts: return try Edts(identifier: self.rawValue, size: size, payload: payload, isMOV: isMOV)
		case .elng: return try Elng(identifier: self.rawValue, size: size, payload: payload, isMOV: isMOV)
		case .elst: return try Elst(identifier: self.rawValue, size: size, payload: payload, isMOV: isMOV)
		case .ftab: return try Ftab(identifier: self.rawValue, size: size, payload: payload, isMOV: isMOV)
		case .hdlr: return try Hdlr(identifier: self.rawValue, size: size, payload: payload, isMOV: isMOV)
		case .ilst: return try Ilst(identifier: self.rawValue, size: size, payload: payload, isMOV: isMOV)
		case .mdat: return try Mdat(identifier: self.rawValue, size: size, payload: payload, isMOV: isMOV)
		case .mdhd: return try Mdhd(identifier: self.rawValue, size: size, payload: payload, isMOV: isMOV)
		case .mdia: return try Mdia(identifier: self.rawValue, size: size, payload: payload, isMOV: isMOV)
		case .mean: return try Mean(identifier: self.rawValue, size: size, payload: payload, isMOV: isMOV)
		case .meta: return try Meta(identifier: self.rawValue, size: size, payload: payload, isMOV: isMOV)
		case .minf: return try Minf(identifier: self.rawValue, size: size, payload: payload, isMOV: isMOV)
		case .moov: return try Moov(identifier: self.rawValue, size: size, payload: payload, isMOV: isMOV)
		case .mvhd: return try Mvhd(identifier: self.rawValue, size: size, payload: payload, isMOV: isMOV)
		case .name: return try Name(identifier: self.rawValue, size: size, payload: payload, isMOV: isMOV)
		case .nmhd: return try Nmhd(identifier: self.rawValue, size: size, payload: payload, isMOV: isMOV)
		case .stbl: return try Stbl(identifier: self.rawValue, size: size, payload: payload, isMOV: isMOV)
		case .stco: return try ChunkOffsetAtom(identifier: self.rawValue, size: size, payload: payload, isMOV: isMOV)
		case .stsc: return try Stsc(identifier: self.rawValue, size: size, payload: payload, isMOV: isMOV)
		case .stsd: return try Stsd(identifier: self.rawValue, size: size, payload: payload, isMOV: isMOV)
		case .stsz: return try Stsz(identifier: self.rawValue, size: size, payload: payload, isMOV: isMOV)
		case .stts: return try Stts(identifier: self.rawValue, size: size, payload: payload, isMOV: isMOV)
		case .text: return try Text(identifier: self.rawValue, size: size, payload: payload, isMOV: isMOV)
		case .tkhd: return try Tkhd(identifier: self.rawValue, size: size, payload: payload, isMOV: isMOV)
		case .trak: return try Trak(identifier: self.rawValue, size: size, payload: payload, isMOV: isMOV)
		case .tref: return try Tref(identifier: self.rawValue, size: size, payload: payload, isMOV: isMOV)
		case .udta: return try Udta(identifier: self.rawValue, size: size, payload: payload, isMOV: isMOV)
		default:
			return try PassThrough(identifier: self.rawValue, size: size, payload: payload, isMOV: isMOV)
		}
    }
}
