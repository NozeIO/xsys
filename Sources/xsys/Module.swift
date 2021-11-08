//
//  Module.swift
//  Noze.io / Macro
//
//  Created by Helge Heß on 11/04/16.
//  Copyright © 2016-2020 ZeeZide GmbH. All rights reserved.
//

#if os(Windows)
  import WinSDK
#elseif os(Linux)
  import Glibc
#else
  import Darwin
#endif

public struct XSysModule {
}
public let module = XSysModule()
