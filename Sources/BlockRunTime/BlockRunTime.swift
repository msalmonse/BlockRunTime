import CoreFoundation

// Usage: duration = blockRunTime(count: 10) {sin(1)}

@available(OSX 10.12, *)
func blockRunTime<T>( count: Int = 1, _ block: () -> T) -> Double {
    let stt = clock_gettime_nsec_np(CLOCK_UPTIME_RAW)
    for _ in 1...count {
        _ = block()
    }
    let dur = Double(clock_gettime_nsec_np(CLOCK_UPTIME_RAW) - stt)

    return dur
}
