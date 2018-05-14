import Debugging

/// Errors that can be thrown while working with Fluent.
public struct FluentError: Debuggable {
    /// See `Debuggable`.
    public static let readableName = "Fluent Error"

    /// See `Debuggable`.
    public let identifier: String

    /// See `Debuggable`.
    public var reason: String

    /// See `Debuggable`.
    public var sourceLocation: SourceLocation?

    /// See `Debuggable`.
    public var stackTrace: [String]

    /// See `Debuggable`.
    public var suggestedFixes: [String]

    /// See `Debuggable`.
    public var possibleCauses: [String]

    /// See `Debuggable`.
    public init(
        identifier: String,
        reason: String,
        suggestedFixes: [String] = [],
        possibleCauses: [String] = [],
        source: SourceLocation
    ) {
        self.identifier = identifier
        self.reason = reason
        self.suggestedFixes = suggestedFixes
        self.possibleCauses = possibleCauses
        self.sourceLocation = source
        self.stackTrace = FluentError.makeStackTrace()
    }
}
