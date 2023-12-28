use "collections"
primitive FlagVsyncHint fun value(): U32 => 64
primitive FlagFullscreenMode fun value(): U32 => 2
primitive FlagWindowResizable fun value(): U32 => 4
primitive FlagWindowUndecorated fun value(): U32 => 8
primitive FlagWindowHidden fun value(): U32 => 128
primitive FlagWindowMinimized fun value(): U32 => 512
primitive FlagWindowMaximized fun value(): U32 => 1024
primitive FlagWindowUnfocused fun value(): U32 => 2048
primitive FlagWindowTopmost fun value(): U32 => 4096
primitive FlagWindowAlwaysRun fun value(): U32 => 256
primitive FlagWindowTransparent fun value(): U32 => 16
primitive FlagWindowHighdpi fun value(): U32 => 8192
primitive FlagWindowMousePassthrough fun value(): U32 => 16384
primitive FlagBorderlessWindowedMode fun value(): U32 => 32768
primitive FlagMsaa4xHint fun value(): U32 => 32
primitive FlagInterlacedHint fun value(): U32 => 65536

type ConfigFlags is Flags [
  ( FlagVsyncHint
  | FlagFullscreenMode
  | FlagWindowResizable
  | FlagWindowUndecorated
  | FlagWindowHidden
  | FlagWindowMinimized
  | FlagWindowMaximized
  | FlagWindowUnfocused
  | FlagWindowTopmost
  | FlagWindowAlwaysRun
  | FlagWindowTransparent
  | FlagWindowHighdpi
  | FlagWindowMousePassthrough
  | FlagBorderlessWindowedMode
  | FlagMsaa4xHint
  | FlagInterlacedHint
), U32]

primitive LogAll fun apply(): I32 => 0
primitive LogTrace fun apply(): I32 => 1
primitive LogDebug fun apply(): I32 => 2
primitive LogInfo fun apply(): I32 => 3
primitive LogWarning fun apply(): I32 => 4
primitive LogError fun apply(): I32 => 5
primitive LogFatal fun apply(): I32 => 6
primitive LogNone fun apply(): I32 => 7

type TraceLogLevel is
  ( LogAll
  | LogTrace
  | LogDebug
  | LogInfo
  | LogWarning
  | LogError
  | LogFatal
  | LogNone
)

primitive KeyNull fun apply(): I32 => 0
primitive KeyApostrophe fun apply(): I32 => 39
primitive KeyComma fun apply(): I32 => 44
primitive KeyMinus fun apply(): I32 => 45
primitive KeyPeriod fun apply(): I32 => 46
primitive KeySlash fun apply(): I32 => 47
primitive KeyZero fun apply(): I32 => 48
primitive KeyOne fun apply(): I32 => 49
primitive KeyTwo fun apply(): I32 => 50
primitive KeyThree fun apply(): I32 => 51
primitive KeyFour fun apply(): I32 => 52
primitive KeyFive fun apply(): I32 => 53
primitive KeySix fun apply(): I32 => 54
primitive KeySeven fun apply(): I32 => 55
primitive KeyEight fun apply(): I32 => 56
primitive KeyNine fun apply(): I32 => 57
primitive KeySemicolon fun apply(): I32 => 59
primitive KeyEqual fun apply(): I32 => 61
primitive KeyA fun apply(): I32 => 65
primitive KeyB fun apply(): I32 => 66
primitive KeyC fun apply(): I32 => 67
primitive KeyD fun apply(): I32 => 68
primitive KeyE fun apply(): I32 => 69
primitive KeyF fun apply(): I32 => 70
primitive KeyG fun apply(): I32 => 71
primitive KeyH fun apply(): I32 => 72
primitive KeyI fun apply(): I32 => 73
primitive KeyJ fun apply(): I32 => 74
primitive KeyK fun apply(): I32 => 75
primitive KeyL fun apply(): I32 => 76
primitive KeyM fun apply(): I32 => 77
primitive KeyN fun apply(): I32 => 78
primitive KeyO fun apply(): I32 => 79
primitive KeyP fun apply(): I32 => 80
primitive KeyQ fun apply(): I32 => 81
primitive KeyR fun apply(): I32 => 82
primitive KeyS fun apply(): I32 => 83
primitive KeyT fun apply(): I32 => 84
primitive KeyU fun apply(): I32 => 85
primitive KeyV fun apply(): I32 => 86
primitive KeyW fun apply(): I32 => 87
primitive KeyX fun apply(): I32 => 88
primitive KeyY fun apply(): I32 => 89
primitive KeyZ fun apply(): I32 => 90
primitive KeyLeftBracket fun apply(): I32 => 91
primitive KeyBackslash fun apply(): I32 => 92
primitive KeyRightBracket fun apply(): I32 => 93
primitive KeyGrave fun apply(): I32 => 96
primitive KeySpace fun apply(): I32 => 32
primitive KeyEscape fun apply(): I32 => 256
primitive KeyEnter fun apply(): I32 => 257
primitive KeyTab fun apply(): I32 => 258
primitive KeyBackspace fun apply(): I32 => 259
primitive KeyInsert fun apply(): I32 => 260
primitive KeyDelete fun apply(): I32 => 261
primitive KeyRight fun apply(): I32 => 262
primitive KeyLeft fun apply(): I32 => 263
primitive KeyDown fun apply(): I32 => 264
primitive KeyUp fun apply(): I32 => 265
primitive KeyPageUp fun apply(): I32 => 266
primitive KeyPageDown fun apply(): I32 => 267
primitive KeyHome fun apply(): I32 => 268
primitive KeyEnd fun apply(): I32 => 269
primitive KeyCapsLock fun apply(): I32 => 280
primitive KeyScrollLock fun apply(): I32 => 281
primitive KeyNumLock fun apply(): I32 => 282
primitive KeyPrintScreen fun apply(): I32 => 283
primitive KeyPause fun apply(): I32 => 284
primitive KeyF1 fun apply(): I32 => 290
primitive KeyF2 fun apply(): I32 => 291
primitive KeyF3 fun apply(): I32 => 292
primitive KeyF4 fun apply(): I32 => 293
primitive KeyF5 fun apply(): I32 => 294
primitive KeyF6 fun apply(): I32 => 295
primitive KeyF7 fun apply(): I32 => 296
primitive KeyF8 fun apply(): I32 => 297
primitive KeyF9 fun apply(): I32 => 298
primitive KeyF10 fun apply(): I32 => 299
primitive KeyF11 fun apply(): I32 => 300
primitive KeyF12 fun apply(): I32 => 301
primitive KeyLeftShift fun apply(): I32 => 340
primitive KeyLeftControl fun apply(): I32 => 341
primitive KeyLeftAlt fun apply(): I32 => 342
primitive KeyLeftSuper fun apply(): I32 => 343
primitive KeyRightShift fun apply(): I32 => 344
primitive KeyRightControl fun apply(): I32 => 345
primitive KeyRightAlt fun apply(): I32 => 346
primitive KeyRightSuper fun apply(): I32 => 347
primitive KeyKbMenu fun apply(): I32 => 348
primitive KeyKp0 fun apply(): I32 => 320
primitive KeyKp1 fun apply(): I32 => 321
primitive KeyKp2 fun apply(): I32 => 322
primitive KeyKp3 fun apply(): I32 => 323
primitive KeyKp4 fun apply(): I32 => 324
primitive KeyKp5 fun apply(): I32 => 325
primitive KeyKp6 fun apply(): I32 => 326
primitive KeyKp7 fun apply(): I32 => 327
primitive KeyKp8 fun apply(): I32 => 328
primitive KeyKp9 fun apply(): I32 => 329
primitive KeyKpDecimal fun apply(): I32 => 330
primitive KeyKpDivide fun apply(): I32 => 331
primitive KeyKpMultiply fun apply(): I32 => 332
primitive KeyKpSubtract fun apply(): I32 => 333
primitive KeyKpAdd fun apply(): I32 => 334
primitive KeyKpEnter fun apply(): I32 => 335
primitive KeyKpEqual fun apply(): I32 => 336
primitive KeyBack fun apply(): I32 => 4
primitive KeyMenu fun apply(): I32 => 82
primitive KeyVolumeUp fun apply(): I32 => 24
primitive KeyVolumeDown fun apply(): I32 => 25

type KeyboardKey is
  ( KeyNull
  | KeyApostrophe
  | KeyComma
  | KeyMinus
  | KeyPeriod
  | KeySlash
  | KeyZero
  | KeyOne
  | KeyTwo
  | KeyThree
  | KeyFour
  | KeyFive
  | KeySix
  | KeySeven
  | KeyEight
  | KeyNine
  | KeySemicolon
  | KeyEqual
  | KeyA
  | KeyB
  | KeyC
  | KeyD
  | KeyE
  | KeyF
  | KeyG
  | KeyH
  | KeyI
  | KeyJ
  | KeyK
  | KeyL
  | KeyM
  | KeyN
  | KeyO
  | KeyP
  | KeyQ
  | KeyR
  | KeyS
  | KeyT
  | KeyU
  | KeyV
  | KeyW
  | KeyX
  | KeyY
  | KeyZ
  | KeyLeftBracket
  | KeyBackslash
  | KeyRightBracket
  | KeyGrave
  | KeySpace
  | KeyEscape
  | KeyEnter
  | KeyTab
  | KeyBackspace
  | KeyInsert
  | KeyDelete
  | KeyRight
  | KeyLeft
  | KeyDown
  | KeyUp
  | KeyPageUp
  | KeyPageDown
  | KeyHome
  | KeyEnd
  | KeyCapsLock
  | KeyScrollLock
  | KeyNumLock
  | KeyPrintScreen
  | KeyPause
  | KeyF1
  | KeyF2
  | KeyF3
  | KeyF4
  | KeyF5
  | KeyF6
  | KeyF7
  | KeyF8
  | KeyF9
  | KeyF10
  | KeyF11
  | KeyF12
  | KeyLeftShift
  | KeyLeftControl
  | KeyLeftAlt
  | KeyLeftSuper
  | KeyRightShift
  | KeyRightControl
  | KeyRightAlt
  | KeyRightSuper
  | KeyKbMenu
  | KeyKp0
  | KeyKp1
  | KeyKp2
  | KeyKp3
  | KeyKp4
  | KeyKp5
  | KeyKp6
  | KeyKp7
  | KeyKp8
  | KeyKp9
  | KeyKpDecimal
  | KeyKpDivide
  | KeyKpMultiply
  | KeyKpSubtract
  | KeyKpAdd
  | KeyKpEnter
  | KeyKpEqual
  | KeyBack
  | KeyMenu
  | KeyVolumeUp
  | KeyVolumeDown
)

primitive MouseButtonLeft fun apply(): I32 => 0
primitive MouseButtonRight fun apply(): I32 => 1
primitive MouseButtonMiddle fun apply(): I32 => 2
primitive MouseButtonSide fun apply(): I32 => 3
primitive MouseButtonExtra fun apply(): I32 => 4
primitive MouseButtonForward fun apply(): I32 => 5
primitive MouseButtonBack fun apply(): I32 => 6

type MouseButton is
  ( MouseButtonLeft
  | MouseButtonRight
  | MouseButtonMiddle
  | MouseButtonSide
  | MouseButtonExtra
  | MouseButtonForward
  | MouseButtonBack
)

primitive MouseCursorDefault fun apply(): I32 => 0
primitive MouseCursorArrow fun apply(): I32 => 1
primitive MouseCursorIbeam fun apply(): I32 => 2
primitive MouseCursorCrosshair fun apply(): I32 => 3
primitive MouseCursorPointingHand fun apply(): I32 => 4
primitive MouseCursorResizeEw fun apply(): I32 => 5
primitive MouseCursorResizeNs fun apply(): I32 => 6
primitive MouseCursorResizeNwse fun apply(): I32 => 7
primitive MouseCursorResizeNesw fun apply(): I32 => 8
primitive MouseCursorResizeAll fun apply(): I32 => 9
primitive MouseCursorNotAllowed fun apply(): I32 => 10

type MouseCursor is
  ( MouseCursorDefault
  | MouseCursorArrow
  | MouseCursorIbeam
  | MouseCursorCrosshair
  | MouseCursorPointingHand
  | MouseCursorResizeEw
  | MouseCursorResizeNs
  | MouseCursorResizeNwse
  | MouseCursorResizeNesw
  | MouseCursorResizeAll
  | MouseCursorNotAllowed
)

primitive GamepadButtonUnknown fun apply(): I32 => 0
primitive GamepadButtonLeftFaceUp fun apply(): I32 => 1
primitive GamepadButtonLeftFaceRight fun apply(): I32 => 2
primitive GamepadButtonLeftFaceDown fun apply(): I32 => 3
primitive GamepadButtonLeftFaceLeft fun apply(): I32 => 4
primitive GamepadButtonRightFaceUp fun apply(): I32 => 5
primitive GamepadButtonRightFaceRight fun apply(): I32 => 6
primitive GamepadButtonRightFaceDown fun apply(): I32 => 7
primitive GamepadButtonRightFaceLeft fun apply(): I32 => 8
primitive GamepadButtonLeftTrigger1 fun apply(): I32 => 9
primitive GamepadButtonLeftTrigger2 fun apply(): I32 => 10
primitive GamepadButtonRightTrigger1 fun apply(): I32 => 11
primitive GamepadButtonRightTrigger2 fun apply(): I32 => 12
primitive GamepadButtonMiddleLeft fun apply(): I32 => 13
primitive GamepadButtonMiddle fun apply(): I32 => 14
primitive GamepadButtonMiddleRight fun apply(): I32 => 15
primitive GamepadButtonLeftThumb fun apply(): I32 => 16
primitive GamepadButtonRightThumb fun apply(): I32 => 17

type GamepadButton is
  ( GamepadButtonUnknown
  | GamepadButtonLeftFaceUp
  | GamepadButtonLeftFaceRight
  | GamepadButtonLeftFaceDown
  | GamepadButtonLeftFaceLeft
  | GamepadButtonRightFaceUp
  | GamepadButtonRightFaceRight
  | GamepadButtonRightFaceDown
  | GamepadButtonRightFaceLeft
  | GamepadButtonLeftTrigger1
  | GamepadButtonLeftTrigger2
  | GamepadButtonRightTrigger1
  | GamepadButtonRightTrigger2
  | GamepadButtonMiddleLeft
  | GamepadButtonMiddle
  | GamepadButtonMiddleRight
  | GamepadButtonLeftThumb
  | GamepadButtonRightThumb
)

primitive GamepadAxisLeftX fun apply(): I32 => 0
primitive GamepadAxisLeftY fun apply(): I32 => 1
primitive GamepadAxisRightX fun apply(): I32 => 2
primitive GamepadAxisRightY fun apply(): I32 => 3
primitive GamepadAxisLeftTrigger fun apply(): I32 => 4
primitive GamepadAxisRightTrigger fun apply(): I32 => 5

type GamepadAxis is
  ( GamepadAxisLeftX
  | GamepadAxisLeftY
  | GamepadAxisRightX
  | GamepadAxisRightY
  | GamepadAxisLeftTrigger
  | GamepadAxisRightTrigger
)

primitive MaterialMapAlbedo fun apply(): I32 => 0
primitive MaterialMapMetalness fun apply(): I32 => 1
primitive MaterialMapNormal fun apply(): I32 => 2
primitive MaterialMapRoughness fun apply(): I32 => 3
primitive MaterialMapOcclusion fun apply(): I32 => 4
primitive MaterialMapEmission fun apply(): I32 => 5
primitive MaterialMapHeight fun apply(): I32 => 6
primitive MaterialMapCubemap fun apply(): I32 => 7
primitive MaterialMapIrradiance fun apply(): I32 => 8
primitive MaterialMapPrefilter fun apply(): I32 => 9
primitive MaterialMapBrdf fun apply(): I32 => 10

type MaterialMapIndex is
  ( MaterialMapAlbedo
  | MaterialMapMetalness
  | MaterialMapNormal
  | MaterialMapRoughness
  | MaterialMapOcclusion
  | MaterialMapEmission
  | MaterialMapHeight
  | MaterialMapCubemap
  | MaterialMapIrradiance
  | MaterialMapPrefilter
  | MaterialMapBrdf
)

primitive ShaderLocVertexPosition fun apply(): I32 => 0
primitive ShaderLocVertexTexcoord01 fun apply(): I32 => 1
primitive ShaderLocVertexTexcoord02 fun apply(): I32 => 2
primitive ShaderLocVertexNormal fun apply(): I32 => 3
primitive ShaderLocVertexTangent fun apply(): I32 => 4
primitive ShaderLocVertexColor fun apply(): I32 => 5
primitive ShaderLocMatrixMvp fun apply(): I32 => 6
primitive ShaderLocMatrixView fun apply(): I32 => 7
primitive ShaderLocMatrixProjection fun apply(): I32 => 8
primitive ShaderLocMatrixModel fun apply(): I32 => 9
primitive ShaderLocMatrixNormal fun apply(): I32 => 10
primitive ShaderLocVectorView fun apply(): I32 => 11
primitive ShaderLocColorDiffuse fun apply(): I32 => 12
primitive ShaderLocColorSpecular fun apply(): I32 => 13
primitive ShaderLocColorAmbient fun apply(): I32 => 14
primitive ShaderLocMapAlbedo fun apply(): I32 => 15
primitive ShaderLocMapMetalness fun apply(): I32 => 16
primitive ShaderLocMapNormal fun apply(): I32 => 17
primitive ShaderLocMapRoughness fun apply(): I32 => 18
primitive ShaderLocMapOcclusion fun apply(): I32 => 19
primitive ShaderLocMapEmission fun apply(): I32 => 20
primitive ShaderLocMapHeight fun apply(): I32 => 21
primitive ShaderLocMapCubemap fun apply(): I32 => 22
primitive ShaderLocMapIrradiance fun apply(): I32 => 23
primitive ShaderLocMapPrefilter fun apply(): I32 => 24
primitive ShaderLocMapBrdf fun apply(): I32 => 25

type ShaderLocationIndex is
  ( ShaderLocVertexPosition
  | ShaderLocVertexTexcoord01
  | ShaderLocVertexTexcoord02
  | ShaderLocVertexNormal
  | ShaderLocVertexTangent
  | ShaderLocVertexColor
  | ShaderLocMatrixMvp
  | ShaderLocMatrixView
  | ShaderLocMatrixProjection
  | ShaderLocMatrixModel
  | ShaderLocMatrixNormal
  | ShaderLocVectorView
  | ShaderLocColorDiffuse
  | ShaderLocColorSpecular
  | ShaderLocColorAmbient
  | ShaderLocMapAlbedo
  | ShaderLocMapMetalness
  | ShaderLocMapNormal
  | ShaderLocMapRoughness
  | ShaderLocMapOcclusion
  | ShaderLocMapEmission
  | ShaderLocMapHeight
  | ShaderLocMapCubemap
  | ShaderLocMapIrradiance
  | ShaderLocMapPrefilter
  | ShaderLocMapBrdf
)

primitive ShaderUniformFloat fun apply(): I32 => 0
primitive ShaderUniformVec2 fun apply(): I32 => 1
primitive ShaderUniformVec3 fun apply(): I32 => 2
primitive ShaderUniformVec4 fun apply(): I32 => 3
primitive ShaderUniformInt fun apply(): I32 => 4
primitive ShaderUniformIvec2 fun apply(): I32 => 5
primitive ShaderUniformIvec3 fun apply(): I32 => 6
primitive ShaderUniformIvec4 fun apply(): I32 => 7
primitive ShaderUniformSampler2d fun apply(): I32 => 8

type ShaderUniformDataType is
  ( ShaderUniformFloat
  | ShaderUniformVec2
  | ShaderUniformVec3
  | ShaderUniformVec4
  | ShaderUniformInt
  | ShaderUniformIvec2
  | ShaderUniformIvec3
  | ShaderUniformIvec4
  | ShaderUniformSampler2d
)

primitive ShaderAttribFloat fun apply(): I32 => 0
primitive ShaderAttribVec2 fun apply(): I32 => 1
primitive ShaderAttribVec3 fun apply(): I32 => 2
primitive ShaderAttribVec4 fun apply(): I32 => 3

type ShaderAttributeDataType is
  ( ShaderAttribFloat
  | ShaderAttribVec2
  | ShaderAttribVec3
  | ShaderAttribVec4
)

primitive PixelformatUncompressedGrayscale fun apply(): I32 => 1
primitive PixelformatUncompressedGrayAlpha fun apply(): I32 => 2
primitive PixelformatUncompressedR5g6b5 fun apply(): I32 => 3
primitive PixelformatUncompressedR8g8b8 fun apply(): I32 => 4
primitive PixelformatUncompressedR5g5b5a1 fun apply(): I32 => 5
primitive PixelformatUncompressedR4g4b4a4 fun apply(): I32 => 6
primitive PixelformatUncompressedR8g8b8a8 fun apply(): I32 => 7
primitive PixelformatUncompressedR32 fun apply(): I32 => 8
primitive PixelformatUncompressedR32g32b32 fun apply(): I32 => 9
primitive PixelformatUncompressedR32g32b32a32 fun apply(): I32 => 10
primitive PixelformatUncompressedR16 fun apply(): I32 => 11
primitive PixelformatUncompressedR16g16b16 fun apply(): I32 => 12
primitive PixelformatUncompressedR16g16b16a16 fun apply(): I32 => 13
primitive PixelformatCompressedDxt1Rgb fun apply(): I32 => 14
primitive PixelformatCompressedDxt1Rgba fun apply(): I32 => 15
primitive PixelformatCompressedDxt3Rgba fun apply(): I32 => 16
primitive PixelformatCompressedDxt5Rgba fun apply(): I32 => 17
primitive PixelformatCompressedEtc1Rgb fun apply(): I32 => 18
primitive PixelformatCompressedEtc2Rgb fun apply(): I32 => 19
primitive PixelformatCompressedEtc2EacRgba fun apply(): I32 => 20
primitive PixelformatCompressedPvrtRgb fun apply(): I32 => 21
primitive PixelformatCompressedPvrtRgba fun apply(): I32 => 22
primitive PixelformatCompressedAstc4x4Rgba fun apply(): I32 => 23
primitive PixelformatCompressedAstc8x8Rgba fun apply(): I32 => 24

type PixelFormat is
  ( PixelformatUncompressedGrayscale
  | PixelformatUncompressedGrayAlpha
  | PixelformatUncompressedR5g6b5
  | PixelformatUncompressedR8g8b8
  | PixelformatUncompressedR5g5b5a1
  | PixelformatUncompressedR4g4b4a4
  | PixelformatUncompressedR8g8b8a8
  | PixelformatUncompressedR32
  | PixelformatUncompressedR32g32b32
  | PixelformatUncompressedR32g32b32a32
  | PixelformatUncompressedR16
  | PixelformatUncompressedR16g16b16
  | PixelformatUncompressedR16g16b16a16
  | PixelformatCompressedDxt1Rgb
  | PixelformatCompressedDxt1Rgba
  | PixelformatCompressedDxt3Rgba
  | PixelformatCompressedDxt5Rgba
  | PixelformatCompressedEtc1Rgb
  | PixelformatCompressedEtc2Rgb
  | PixelformatCompressedEtc2EacRgba
  | PixelformatCompressedPvrtRgb
  | PixelformatCompressedPvrtRgba
  | PixelformatCompressedAstc4x4Rgba
  | PixelformatCompressedAstc8x8Rgba
)

primitive TextureFilterPoint fun apply(): I32 => 0
primitive TextureFilterBilinear fun apply(): I32 => 1
primitive TextureFilterTrilinear fun apply(): I32 => 2
primitive TextureFilterAnisotropic4x fun apply(): I32 => 3
primitive TextureFilterAnisotropic8x fun apply(): I32 => 4
primitive TextureFilterAnisotropic16x fun apply(): I32 => 5

type TextureFilter is
  ( TextureFilterPoint
  | TextureFilterBilinear
  | TextureFilterTrilinear
  | TextureFilterAnisotropic4x
  | TextureFilterAnisotropic8x
  | TextureFilterAnisotropic16x
)

primitive TextureWrapRepeat fun apply(): I32 => 0
primitive TextureWrapClamp fun apply(): I32 => 1
primitive TextureWrapMirrorRepeat fun apply(): I32 => 2
primitive TextureWrapMirrorClamp fun apply(): I32 => 3

type TextureWrap is
  ( TextureWrapRepeat
  | TextureWrapClamp
  | TextureWrapMirrorRepeat
  | TextureWrapMirrorClamp
)

primitive CubemapLayoutAutoDetect fun apply(): I32 => 0
primitive CubemapLayoutLineVertical fun apply(): I32 => 1
primitive CubemapLayoutLineHorizontal fun apply(): I32 => 2
primitive CubemapLayoutCrossThreeByFour fun apply(): I32 => 3
primitive CubemapLayoutCrossFourByThree fun apply(): I32 => 4
primitive CubemapLayoutPanorama fun apply(): I32 => 5

type CubemapLayout is
  ( CubemapLayoutAutoDetect
  | CubemapLayoutLineVertical
  | CubemapLayoutLineHorizontal
  | CubemapLayoutCrossThreeByFour
  | CubemapLayoutCrossFourByThree
  | CubemapLayoutPanorama
)

primitive FontDefault fun apply(): I32 => 0
primitive FontBitmap fun apply(): I32 => 1
primitive FontSdf fun apply(): I32 => 2

type FontType is
  ( FontDefault
  | FontBitmap
  | FontSdf
)

primitive BlendAlpha fun apply(): I32 => 0
primitive BlendAdditive fun apply(): I32 => 1
primitive BlendMultiplied fun apply(): I32 => 2
primitive BlendAddColors fun apply(): I32 => 3
primitive BlendSubtractColors fun apply(): I32 => 4
primitive BlendAlphaPremultiply fun apply(): I32 => 5
primitive BlendCustom fun apply(): I32 => 6
primitive BlendCustomSeparate fun apply(): I32 => 7

type BlendMode is
  ( BlendAlpha
  | BlendAdditive
  | BlendMultiplied
  | BlendAddColors
  | BlendSubtractColors
  | BlendAlphaPremultiply
  | BlendCustom
  | BlendCustomSeparate
)

primitive GestureNone fun value(): U32 => 0
primitive GestureTap fun value(): U32 => 1
primitive GestureDoubletap fun value(): U32 => 2
primitive GestureHold fun value(): U32 => 4
primitive GestureDrag fun value(): U32 => 8
primitive GestureSwipeRight fun value(): U32 => 16
primitive GestureSwipeLeft fun value(): U32 => 32
primitive GestureSwipeUp fun value(): U32 => 64
primitive GestureSwipeDown fun value(): U32 => 128
primitive GesturePinchIn fun value(): U32 => 256
primitive GesturePinchOut fun value(): U32 => 512

type Gesture is Flags [
  ( GestureNone
  | GestureTap
  | GestureDoubletap
  | GestureHold
  | GestureDrag
  | GestureSwipeRight
  | GestureSwipeLeft
  | GestureSwipeUp
  | GestureSwipeDown
  | GesturePinchIn
  | GesturePinchOut
), U32]

primitive CameraCustom fun apply(): I32 => 0
primitive CameraFree fun apply(): I32 => 1
primitive CameraOrbital fun apply(): I32 => 2
primitive CameraFirstPerson fun apply(): I32 => 3
primitive CameraThirdPerson fun apply(): I32 => 4

type CameraMode is
  ( CameraCustom
  | CameraFree
  | CameraOrbital
  | CameraFirstPerson
  | CameraThirdPerson
)

primitive CameraPerspective fun apply(): I32 => 0
primitive CameraOrthographic fun apply(): I32 => 1

type CameraProjection is
  ( CameraPerspective
  | CameraOrthographic
)

primitive NPatchNinePatch fun apply(): I32 => 0
primitive NPatchThreePatchVertical fun apply(): I32 => 1
primitive NPatchThreePatchHorizontal fun apply(): I32 => 2

type NPatchLayout is
  ( NPatchNinePatch
  | NPatchThreePatchVertical
  | NPatchThreePatchHorizontal
)


struct Vector2
  let x: F32
  let y: F32

  new create(x': F32, y': F32) =>
    x = x'
    y = y'

struct Vector3
  let x: F32
  let y: F32
  let z: F32

  new create(x': F32, y': F32, z': F32) =>
    x = x'
    y = y'
    z = z'

struct Vector4
  let x: F32
  let y: F32
  let z: F32
  let w: F32

  new create(x': F32, y': F32, z': F32, w': F32) =>
    x = x'
    y = y'
    z = z'
    w = w'

struct Matrix
  let m0: F32
  let m4: F32
  let m8: F32
  let m12: F32
  let m1: F32
  let m5: F32
  let m9: F32
  let m13: F32
  let m2: F32
  let m6: F32
  let m10: F32
  let m14: F32
  let m3: F32
  let m7: F32
  let m11: F32
  let m15: F32

  new create(m0': F32, m4': F32, m8': F32, m12': F32, m1': F32, m5': F32, m9': F32, m13': F32, m2': F32, m6': F32, m10': F32, m14': F32, m3': F32, m7': F32, m11': F32, m15': F32) =>
    m0 = m0'
    m4 = m4'
    m8 = m8'
    m12 = m12'
    m1 = m1'
    m5 = m5'
    m9 = m9'
    m13 = m13'
    m2 = m2'
    m6 = m6'
    m10 = m10'
    m14 = m14'
    m3 = m3'
    m7 = m7'
    m11 = m11'
    m15 = m15'

struct Color
  let r: U8
  let g: U8
  let b: U8
  let a: U8

  new create(r': U8, g': U8, b': U8, a': U8) =>
    r = r'
    g = g'
    b = b'
    a = a'

struct Rectangle
  let x: F32
  let y: F32
  let width: F32
  let height: F32

  new create(x': F32, y': F32, width': F32, height': F32) =>
    x = x'
    y = y'
    width = width'
    height = height'

struct Image
  let data: Pointer[None]
  let width: I32
  let height: I32
  let mipmaps: I32
  let format: I32

  new create(data': Pointer[None], width': I32, height': I32, mipmaps': I32, format': I32) =>
    data = data'
    width = width'
    height = height'
    mipmaps = mipmaps'
    format = format'

struct Texture
  let id: U32
  let width: I32
  let height: I32
  let mipmaps: I32
  let format: I32

  new create(id': U32, width': I32, height': I32, mipmaps': I32, format': I32) =>
    id = id'
    width = width'
    height = height'
    mipmaps = mipmaps'
    format = format'

struct RenderTexture
  let id: U32
  let texture: Texture
  let depth: Texture

  new create(id': U32, texture': Texture, depth': Texture) =>
    id = id'
    texture = texture'
    depth = depth'

struct NPatchInfo
  let source: Rectangle
  let left: I32
  let top: I32
  let right: I32
  let bottom: I32
  let layout: I32

  new create(source': Rectangle, left': I32, top': I32, right': I32, bottom': I32, layout': I32) =>
    source = source'
    left = left'
    top = top'
    right = right'
    bottom = bottom'
    layout = layout'

struct GlyphInfo
  let value: I32
  let offset_x: I32
  let offset_y: I32
  let advance_x: I32
  let image: Image

  new create(value': I32, offset_x': I32, offset_y': I32, advance_x': I32, image': Image) =>
    value = value'
    offset_x = offset_x'
    offset_y = offset_y'
    advance_x = advance_x'
    image = image'

struct Font
  let base_size: I32
  let glyph_count: I32
  let glyph_padding: I32
  let texture: Texture2D
  let recs: Array[Rectangle]
  let glyphs: Array[GlyphInfo]

  new create(base_size': I32, glyph_count': I32, glyph_padding': I32, texture': Texture2D, recs': Array[Rectangle], glyphs': Array[GlyphInfo]) =>
    base_size = base_size'
    glyph_count = glyph_count'
    glyph_padding = glyph_padding'
    texture = texture'
    recs = recs'
    glyphs = glyphs'

struct Camera3D
  let position: Vector3
  let target: Vector3
  let up: Vector3
  let fovy: F32
  let projection: I32

  new create(position': Vector3, target': Vector3, up': Vector3, fovy': F32, projection': I32) =>
    position = position'
    target = target'
    up = up'
    fovy = fovy'
    projection = projection'

struct Camera2D
  let offset: Vector2
  let target: Vector2
  let rotation: F32
  let zoom: F32

  new create(offset': Vector2, target': Vector2, rotation': F32, zoom': F32) =>
    offset = offset'
    target = target'
    rotation = rotation'
    zoom = zoom'

struct Mesh
  let vertex_count: I32
  let triangle_count: I32
  let vertices: Array[F32]
  let texcoords: Array[F32]
  let texcoords2: Array[F32]
  let normals: Array[F32]
  let tangents: Array[F32]
  let colors: String
  let indices: Array[unsignedshort]
  let anim_vertices: Array[F32]
  let anim_normals: Array[F32]
  let bone_ids: String
  let bone_weights: Array[F32]
  let vao_id: U32
  let vbo_id: Array[unsignedint]

  new create(vertex_count': I32, triangle_count': I32, vertices': Array[F32], texcoords': Array[F32], texcoords2': Array[F32], normals': Array[F32], tangents': Array[F32], colors': String, indices': Array[unsignedshort], anim_vertices': Array[F32], anim_normals': Array[F32], bone_ids': String, bone_weights': Array[F32], vao_id': U32, vbo_id': Array[unsignedint]) =>
    vertex_count = vertex_count'
    triangle_count = triangle_count'
    vertices = vertices'
    texcoords = texcoords'
    texcoords2 = texcoords2'
    normals = normals'
    tangents = tangents'
    colors = colors'
    indices = indices'
    anim_vertices = anim_vertices'
    anim_normals = anim_normals'
    bone_ids = bone_ids'
    bone_weights = bone_weights'
    vao_id = vao_id'
    vbo_id = vbo_id'

struct Shader
  let id: U32
  let locs: Array[I32]

  new create(id': U32, locs': Array[I32]) =>
    id = id'
    locs = locs'

struct MaterialMap
  let texture: Texture2D
  let color: Color
  let value: F32

  new create(texture': Texture2D, color': Color, value': F32) =>
    texture = texture'
    color = color'
    value = value'

struct Material
  let shader: Shader
  let maps: Array[MaterialMap]
  let params: Array[F32]

  new create(shader': Shader, maps': Array[MaterialMap], params': Array[F32]) =>
    shader = shader'
    maps = maps'
    params = params'

struct Transform
  let translation: Vector3
  let rotation: Quaternion
  let scale: Vector3

  new create(translation': Vector3, rotation': Quaternion, scale': Vector3) =>
    translation = translation'
    rotation = rotation'
    scale = scale'

struct BoneInfo
  let name: Array[U8]
  let parent: I32

  new create(name': Array[U8], parent': I32) =>
    name = name'
    parent = parent'

struct Model
  let transform: Matrix
  let mesh_count: I32
  let material_count: I32
  let meshes: Array[Mesh]
  let materials: Array[Material]
  let mesh_material: Array[I32]
  let bone_count: I32
  let bones: Array[BoneInfo]
  let bind_pose: Array[Transform]

  new create(transform': Matrix, mesh_count': I32, material_count': I32, meshes': Array[Mesh], materials': Array[Material], mesh_material': Array[I32], bone_count': I32, bones': Array[BoneInfo], bind_pose': Array[Transform]) =>
    transform = transform'
    mesh_count = mesh_count'
    material_count = material_count'
    meshes = meshes'
    materials = materials'
    mesh_material = mesh_material'
    bone_count = bone_count'
    bones = bones'
    bind_pose = bind_pose'

struct ModelAnimation
  let bone_count: I32
  let frame_count: I32
  let bones: Array[BoneInfo]
  let frame_poses: Array[Array[Transform]]
  let name: Array[U8]

  new create(bone_count': I32, frame_count': I32, bones': Array[BoneInfo], frame_poses': Array[Array[Transform]], name': Array[U8]) =>
    bone_count = bone_count'
    frame_count = frame_count'
    bones = bones'
    frame_poses = frame_poses'
    name = name'

struct Ray
  let position: Vector3
  let direction: Vector3

  new create(position': Vector3, direction': Vector3) =>
    position = position'
    direction = direction'

struct RayCollision
  let hit: Bool
  let distance: F32
  let point: Vector3
  let normal: Vector3

  new create(hit': Bool, distance': F32, point': Vector3, normal': Vector3) =>
    hit = hit'
    distance = distance'
    point = point'
    normal = normal'

struct BoundingBox
  let min: Vector3
  let max: Vector3

  new create(min': Vector3, max': Vector3) =>
    min = min'
    max = max'

struct Wave
  let frame_count: U32
  let sample_rate: U32
  let sample_size: U32
  let channels: U32
  let data: Pointer[None]

  new create(frame_count': U32, sample_rate': U32, sample_size': U32, channels': U32, data': Pointer[None]) =>
    frame_count = frame_count'
    sample_rate = sample_rate'
    sample_size = sample_size'
    channels = channels'
    data = data'

struct AudioStream
  let buffer: Array[rAudioBuffer]
  let processor: Array[rAudioProcessor]
  let sample_rate: U32
  let sample_size: U32
  let channels: U32

  new create(buffer': Array[rAudioBuffer], processor': Array[rAudioProcessor], sample_rate': U32, sample_size': U32, channels': U32) =>
    buffer = buffer'
    processor = processor'
    sample_rate = sample_rate'
    sample_size = sample_size'
    channels = channels'

struct Sound
  let stream: AudioStream
  let frame_count: U32

  new create(stream': AudioStream, frame_count': U32) =>
    stream = stream'
    frame_count = frame_count'

struct Music
  let stream: AudioStream
  let frame_count: U32
  let looping: Bool
  let ctx_type: I32
  let ctx_data: Pointer[None]

  new create(stream': AudioStream, frame_count': U32, looping': Bool, ctx_type': I32, ctx_data': Pointer[None]) =>
    stream = stream'
    frame_count = frame_count'
    looping = looping'
    ctx_type = ctx_type'
    ctx_data = ctx_data'

struct VrDeviceInfo
  let h_resolution: I32
  let v_resolution: I32
  let h_screen_size: F32
  let v_screen_size: F32
  let v_screen_center: F32
  let eye_to_screen_distance: F32
  let lens_separation_distance: F32
  let interpupillary_distance: F32
  let lens_distortion_values: Array[F32]
  let chroma_ab_correction: Array[F32]

  new create(h_resolution': I32, v_resolution': I32, h_screen_size': F32, v_screen_size': F32, v_screen_center': F32, eye_to_screen_distance': F32, lens_separation_distance': F32, interpupillary_distance': F32, lens_distortion_values': Array[F32], chroma_ab_correction': Array[F32]) =>
    h_resolution = h_resolution'
    v_resolution = v_resolution'
    h_screen_size = h_screen_size'
    v_screen_size = v_screen_size'
    v_screen_center = v_screen_center'
    eye_to_screen_distance = eye_to_screen_distance'
    lens_separation_distance = lens_separation_distance'
    interpupillary_distance = interpupillary_distance'
    lens_distortion_values = lens_distortion_values'
    chroma_ab_correction = chroma_ab_correction'

struct VrStereoConfig
  let projection: Array[Matrix]
  let view_offset: Array[Matrix]
  let left_lens_center: Array[F32]
  let right_lens_center: Array[F32]
  let left_screen_center: Array[F32]
  let right_screen_center: Array[F32]
  let scale: Array[F32]
  let scale_in: Array[F32]

  new create(projection': Array[Matrix], view_offset': Array[Matrix], left_lens_center': Array[F32], right_lens_center': Array[F32], left_screen_center': Array[F32], right_screen_center': Array[F32], scale': Array[F32], scale_in': Array[F32]) =>
    projection = projection'
    view_offset = view_offset'
    left_lens_center = left_lens_center'
    right_lens_center = right_lens_center'
    left_screen_center = left_screen_center'
    right_screen_center = right_screen_center'
    scale = scale'
    scale_in = scale_in'

struct FilePathList
  let capacity: U32
  let count: U32
  let paths: Array[Array[U8]]

  new create(capacity': U32, count': U32, paths': Array[Array[U8]]) =>
    capacity = capacity'
    count = count'
    paths = paths'

struct AutomationEvent
  let frame: U32
  let typ: U32
  let params: Array[I32]

  new create(frame': U32, typ': U32, params': Array[I32]) =>
    frame = frame'
    typ = typ'
    params = params'

struct AutomationEventList
  let capacity: U32
  let count: U32
  let events: Array[AutomationEvent]

  new create(capacity': U32, count': U32, events': Array[AutomationEvent]) =>
    capacity = capacity'
    count = count'
    events = events'
