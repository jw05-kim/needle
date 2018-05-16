//
//  Copyright (c) 2018. Uber Technologies
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import Foundation

/// The data model representing a dependency provider to be generated for a
/// specific path of a component.
struct DependencyProvider {
    /// The path starting at the component that declares the dependency protocol.
    let path: [Component]
    /// The dependency protocol declared.
    let dependency: Dependency

    /// The path in `String` format.
    var pathString: String {
        return "^->" + path
            .map { (component: Component) -> String in
                component.name
            }
            .joined(separator: "->")
    }

    /// The class name of the dependency provider.
    var name: String {
        return dependency.name + String(pathString.hashValue).replacingOccurrences(of: "-", with: "_") + "Provider"
    }
}
