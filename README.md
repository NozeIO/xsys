<h2>xsys
  <img src="http://zeezide.com/img/macro/MacroExpressIcon128.png"
       align="right" width="100" height="100" />
</h2>

Posix wrappers and naming shims.

Instead of having to do this in all your code:

```swift
#if os(Linux)
  import Glibc
#else
  import Darwin
#endif

let h = dlopen("/blub")
```

You can do this:

```swift
import xsys

let h = dlopen("/blub")
```

### `timeval_any`

Abstracts three different Posix types into one common protocol, and provides common
operations for all of them.

- `timeval_t`
- `timespec_t`
- `time_t`

### Links

- [Macro.swift](https://github.com/Macro-swift/Macro)
- [Noze.io](http://noze.io)

### Who

**xsys** is brought to you by
the
[Always Right Institute](http://www.alwaysrightinstitute.com)
and
[ZeeZide](http://zeezide.de).
We like 
[feedback](https://twitter.com/ar_institute), 
GitHub stars, 
cool [contract work](http://zeezide.com/en/services/services.html),
presumably any form of praise you can think of.

There is a `#microexpress` channel on the 
[Noze.io Slack](http://slack.noze.io/). Feel free to join!
