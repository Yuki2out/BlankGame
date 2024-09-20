/// @function camera_shake(magnitude, duration)
/// @description Triggers a camera shake effect.
/// @param magnitude The magnitude of the shake.
/// @param duration The duration of the shake in frames.

function camera_shake(magnitude, duration) {
    global.shakeMagnitude = magnitude;
    global.shakeDuration = duration;
}
