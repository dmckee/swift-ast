/*
   Copyright 2016 Ryuichi Saito, LLC

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
*/

import source

public enum MetatypeMeta: String {
    case `Type`
    case `Protocol`
}

public class MetatypeType: Type {
    private let _type: Type
    private let _meta: MetatypeMeta

    public init(type: Type, meta: MetatypeMeta) {
        _type = type
        _meta = meta
    }

    public var type: Type {
        return _type
    }

    public var meta: MetatypeMeta {
        return _meta
    }

    public func inspect() -> String {
        switch _meta {
        case .Type:
            return "\(_type.inspect()).Type"
        case .Protocol:
            return "\(_type.inspect()).Protocol"
        }
    }
}
