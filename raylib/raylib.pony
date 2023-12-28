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


