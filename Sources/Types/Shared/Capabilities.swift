/// What this build of the library can convert, as one number a host app can keep.
///
/// A host that remembers "this file could not be converted" needs to know when that answer
/// may have changed. The library is the one that knows, so it says so here instead of the
/// host guessing from the package version.
public enum MediaToolCapabilities {
    /// Bump when a source this library used to refuse becomes convertible (a colour primary,
    /// a codec or container it now handles). Do not bump for speed, size or quality changes,
    /// or for new options: a refusal made under an earlier value only lifts when this changes.
    ///
    /// - 1: baseline. Rejected video colour primaries (DCI-P3) are converted in the existing
    ///   encode instead of being handed to `AVAssetWriterInput`, which refuses them.
    public static let revision = 1
}
