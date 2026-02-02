# Metro Runtime ProGuard/R8 Rules
# These rules remove compile-time-only constructs that are not needed at runtime.

# Remove methods annotated with @ComptimeOnly
# These are stub methods (like @Binds implementations) that throw and are never called
-assumenosideeffects class * {
    @dev.zacsweers.metro.internal.ComptimeOnly <methods>;
}

# Remove classes annotated with @ComptimeOnly (if any exist)
# BindsMirror classes are stripped during IR compilation and won't reach bytecode,
# but this rule is kept for completeness and backward compatibility.
-assumenosideeffects @dev.zacsweers.metro.internal.ComptimeOnly class *
