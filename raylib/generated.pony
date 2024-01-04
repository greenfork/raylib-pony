use "path:../zig-out/lib"
use "lib:raylib"
use "lib:shims"
use "collections"

use @PonyInitWindow[None](width: I32, height: I32, title: Pointer[U8] tag)
use @PonyCloseWindow[None]()
use @PonyWindowShouldClose[Bool]()
use @PonyIsWindowReady[Bool]()
use @PonyIsWindowFullscreen[Bool]()
use @PonyIsWindowHidden[Bool]()
use @PonyIsWindowMinimized[Bool]()
use @PonyIsWindowMaximized[Bool]()
use @PonyIsWindowFocused[Bool]()
use @PonyIsWindowResized[Bool]()
use @PonyIsWindowState[Bool](flag: U32)
use @PonySetWindowState[None](flags: U32)
use @PonyClearWindowState[None](flags: U32)
use @PonyToggleFullscreen[None]()
use @PonyToggleBorderlessWindowed[None]()
use @PonyMaximizeWindow[None]()
use @PonyMinimizeWindow[None]()
use @PonyRestoreWindow[None]()
use @PonySetWindowIcon[None](image: Image)
use @PonySetWindowIcons[None](images: Pointer[Image] tag, count: I32)
use @PonySetWindowTitle[None](title: Pointer[U8] tag)
use @PonySetWindowPosition[None](x: I32, y: I32)
use @PonySetWindowMonitor[None](monitor: I32)
use @PonySetWindowMinSize[None](width: I32, height: I32)
use @PonySetWindowMaxSize[None](width: I32, height: I32)
use @PonySetWindowSize[None](width: I32, height: I32)
use @PonySetWindowOpacity[None](opacity: F32)
use @PonySetWindowFocused[None]()
use @PonyGetWindowHandle[Pointer[None] tag]()
use @PonyGetScreenWidth[I32]()
use @PonyGetScreenHeight[I32]()
use @PonyGetRenderWidth[I32]()
use @PonyGetRenderHeight[I32]()
use @PonyGetMonitorCount[I32]()
use @PonyGetCurrentMonitor[I32]()
use @PonyGetMonitorPosition[Vector2](monitor: I32)
use @PonyGetMonitorWidth[I32](monitor: I32)
use @PonyGetMonitorHeight[I32](monitor: I32)
use @PonyGetMonitorPhysicalWidth[I32](monitor: I32)
use @PonyGetMonitorPhysicalHeight[I32](monitor: I32)
use @PonyGetMonitorRefreshRate[I32](monitor: I32)
use @PonyGetWindowPosition[Vector2]()
use @PonyGetWindowScaleDPI[Vector2]()
use @PonyGetMonitorName[Pointer[U8] tag](monitor: I32)
use @PonySetClipboardText[None](text: Pointer[U8] tag)
use @PonyGetClipboardText[Pointer[U8] tag]()
use @PonyEnableEventWaiting[None]()
use @PonyDisableEventWaiting[None]()
use @PonyShowCursor[None]()
use @PonyHideCursor[None]()
use @PonyIsCursorHidden[Bool]()
use @PonyEnableCursor[None]()
use @PonyDisableCursor[None]()
use @PonyIsCursorOnScreen[Bool]()
use @PonyClearBackground[None](color: Color)
use @PonyBeginDrawing[None]()
use @PonyEndDrawing[None]()
use @PonyBeginMode2D[None](camera: Camera2D)
use @PonyEndMode2D[None]()
use @PonyBeginMode3D[None](camera: Camera3D)
use @PonyEndMode3D[None]()
use @PonyBeginTextureMode[None](target: RenderTexture2D)
use @PonyEndTextureMode[None]()
use @PonyBeginShaderMode[None](shader: Shader)
use @PonyEndShaderMode[None]()
use @PonyBeginBlendMode[None](mode: I32)
use @PonyEndBlendMode[None]()
use @PonyBeginScissorMode[None](x: I32, y: I32, width: I32, height: I32)
use @PonyEndScissorMode[None]()
use @PonyBeginVrStereoMode[None](config: VrStereoConfig)
use @PonyEndVrStereoMode[None]()
use @PonyLoadVrStereoConfig[VrStereoConfig](device: VrDeviceInfo)
use @PonyUnloadVrStereoConfig[None](config: VrStereoConfig)
use @PonyLoadShader[Shader](vsFileName: Pointer[U8] tag, fsFileName: Pointer[U8] tag)
use @PonyLoadShaderFromMemory[Shader](vsCode: Pointer[U8] tag, fsCode: Pointer[U8] tag)
use @PonyIsShaderReady[Bool](shader: Shader)
use @PonyGetShaderLocation[I32](shader: Shader, uniformName: Pointer[U8] tag)
use @PonyGetShaderLocationAttrib[I32](shader: Shader, attribName: Pointer[U8] tag)
use @PonySetShaderValue[None](shader: Shader, locIndex: I32, value: Pointer[None] tag, uniformType: I32)
use @PonySetShaderValueV[None](shader: Shader, locIndex: I32, value: Pointer[None] tag, uniformType: I32, count: I32)
use @PonySetShaderValueMatrix[None](shader: Shader, locIndex: I32, mat: Matrix)
use @PonySetShaderValueTexture[None](shader: Shader, locIndex: I32, texture: Texture2D)
use @PonyUnloadShader[None](shader: Shader)
use @PonyGetMouseRay[Ray](mousePosition: Vector2, camera: Camera)
use @PonyGetCameraMatrix[Matrix](camera: Camera)
use @PonyGetCameraMatrix2D[Matrix](camera: Camera2D)
use @PonyGetWorldToScreen[Vector2](position: Vector3, camera: Camera)
use @PonyGetScreenToWorld2D[Vector2](position: Vector2, camera: Camera2D)
use @PonyGetWorldToScreenEx[Vector2](position: Vector3, camera: Camera, width: I32, height: I32)
use @PonyGetWorldToScreen2D[Vector2](position: Vector2, camera: Camera2D)
use @PonySetTargetFPS[None](fps: I32)
use @PonyGetFrameTime[F32]()
use @PonyGetTime[F64]()
use @PonyGetFPS[I32]()
use @PonySwapScreenBuffer[None]()
use @PonyPollInputEvents[None]()
use @PonyWaitTime[None](seconds: F64)
use @PonySetRandomSeed[None](seed: U32)
use @PonyGetRandomValue[I32](min: I32, max: I32)
use @PonyLoadRandomSequence[Pointer[I32] tag](count: U32, min: I32, max: I32)
use @PonyUnloadRandomSequence[None](sequence: Pointer[I32] tag)
use @PonyTakeScreenshot[None](fileName: Pointer[U8] tag)
use @PonySetConfigFlags[None](flags: U32)
use @PonyOpenURL[None](url: Pointer[U8] tag)
use @TraceLog[None](logLevel: I32, text: Pointer[U8] tag, ...)
use @PonySetTraceLogLevel[None](logLevel: I32)
use @PonyMemAlloc[Pointer[None] tag](size: U32)
use @PonyMemRealloc[Pointer[None] tag](ptr: Pointer[None] tag, size: U32)
use @PonyMemFree[None](ptr: Pointer[None] tag)
use @PonySetTraceLogCallback[None](callback: TraceLogCallback)
use @PonySetLoadFileDataCallback[None](callback: LoadFileDataCallback)
use @PonySetSaveFileDataCallback[None](callback: SaveFileDataCallback)
use @PonySetLoadFileTextCallback[None](callback: LoadFileTextCallback)
use @PonySetSaveFileTextCallback[None](callback: SaveFileTextCallback)
use @PonyLoadFileData[Pointer[U8] tag](fileName: Pointer[U8] tag, dataSize: Pointer[I32] tag)
use @PonyUnloadFileData[None](data: Pointer[U8] tag)
use @PonySaveFileData[Bool](fileName: Pointer[U8] tag, data: Pointer[None] tag, dataSize: I32)
use @PonyExportDataAsCode[Bool](data: Pointer[U8] tag, dataSize: I32, fileName: Pointer[U8] tag)
use @PonyLoadFileText[Pointer[U8] tag](fileName: Pointer[U8] tag)
use @PonyUnloadFileText[None](text: Pointer[U8] tag)
use @PonySaveFileText[Bool](fileName: Pointer[U8] tag, text: Pointer[U8] tag)
use @PonyFileExists[Bool](fileName: Pointer[U8] tag)
use @PonyDirectoryExists[Bool](dirPath: Pointer[U8] tag)
use @PonyIsFileExtension[Bool](fileName: Pointer[U8] tag, ext: Pointer[U8] tag)
use @PonyGetFileLength[I32](fileName: Pointer[U8] tag)
use @PonyGetFileExtension[Pointer[U8] tag](fileName: Pointer[U8] tag)
use @PonyGetFileName[Pointer[U8] tag](filePath: Pointer[U8] tag)
use @PonyGetFileNameWithoutExt[Pointer[U8] tag](filePath: Pointer[U8] tag)
use @PonyGetDirectoryPath[Pointer[U8] tag](filePath: Pointer[U8] tag)
use @PonyGetPrevDirectoryPath[Pointer[U8] tag](dirPath: Pointer[U8] tag)
use @PonyGetWorkingDirectory[Pointer[U8] tag]()
use @PonyGetApplicationDirectory[Pointer[U8] tag]()
use @PonyChangeDirectory[Bool](dir: Pointer[U8] tag)
use @PonyIsPathFile[Bool](path: Pointer[U8] tag)
use @PonyLoadDirectoryFiles[FilePathList](dirPath: Pointer[U8] tag)
use @PonyLoadDirectoryFilesEx[FilePathList](basePath: Pointer[U8] tag, filter: Pointer[U8] tag, scanSubdirs: Bool)
use @PonyUnloadDirectoryFiles[None](files: FilePathList)
use @PonyIsFileDropped[Bool]()
use @PonyLoadDroppedFiles[FilePathList]()
use @PonyUnloadDroppedFiles[None](files: FilePathList)
use @PonyGetFileModTime[I64](fileName: Pointer[U8] tag)
use @PonyCompressData[Pointer[U8] tag](data: Pointer[U8] tag, dataSize: I32, compDataSize: Pointer[I32] tag)
use @PonyDecompressData[Pointer[U8] tag](compData: Pointer[U8] tag, compDataSize: I32, dataSize: Pointer[I32] tag)
use @PonyEncodeDataBase64[Pointer[U8] tag](data: Pointer[U8] tag, dataSize: I32, outputSize: Pointer[I32] tag)
use @PonyDecodeDataBase64[Pointer[U8] tag](data: Pointer[U8] tag, outputSize: Pointer[I32] tag)
use @PonyLoadAutomationEventList[AutomationEventList](fileName: Pointer[U8] tag)
use @PonyUnloadAutomationEventList[None](list: AutomationEventList)
use @PonyExportAutomationEventList[Bool](list: AutomationEventList, fileName: Pointer[U8] tag)
use @PonySetAutomationEventList[None](list: AutomationEventList)
use @PonySetAutomationEventBaseFrame[None](frame: I32)
use @PonyStartAutomationEventRecording[None]()
use @PonyStopAutomationEventRecording[None]()
use @PonyPlayAutomationEvent[None](event: AutomationEvent)
use @PonyIsKeyPressed[Bool](key: I32)
use @PonyIsKeyPressedRepeat[Bool](key: I32)
use @PonyIsKeyDown[Bool](key: I32)
use @PonyIsKeyReleased[Bool](key: I32)
use @PonyIsKeyUp[Bool](key: I32)
use @PonyGetKeyPressed[I32]()
use @PonyGetCharPressed[I32]()
use @PonySetExitKey[None](key: I32)
use @PonyIsGamepadAvailable[Bool](gamepad: I32)
use @PonyGetGamepadName[Pointer[U8] tag](gamepad: I32)
use @PonyIsGamepadButtonPressed[Bool](gamepad: I32, button: I32)
use @PonyIsGamepadButtonDown[Bool](gamepad: I32, button: I32)
use @PonyIsGamepadButtonReleased[Bool](gamepad: I32, button: I32)
use @PonyIsGamepadButtonUp[Bool](gamepad: I32, button: I32)
use @PonyGetGamepadButtonPressed[I32]()
use @PonyGetGamepadAxisCount[I32](gamepad: I32)
use @PonyGetGamepadAxisMovement[F32](gamepad: I32, axis: I32)
use @PonySetGamepadMappings[I32](mappings: Pointer[U8] tag)
use @PonyIsMouseButtonPressed[Bool](button: I32)
use @PonyIsMouseButtonDown[Bool](button: I32)
use @PonyIsMouseButtonReleased[Bool](button: I32)
use @PonyIsMouseButtonUp[Bool](button: I32)
use @PonyGetMouseX[I32]()
use @PonyGetMouseY[I32]()
use @PonyGetMousePosition[Vector2]()
use @PonyGetMouseDelta[Vector2]()
use @PonySetMousePosition[None](x: I32, y: I32)
use @PonySetMouseOffset[None](offsetX: I32, offsetY: I32)
use @PonySetMouseScale[None](scaleX: F32, scaleY: F32)
use @PonyGetMouseWheelMove[F32]()
use @PonyGetMouseWheelMoveV[Vector2]()
use @PonySetMouseCursor[None](cursor: I32)
use @PonyGetTouchX[I32]()
use @PonyGetTouchY[I32]()
use @PonyGetTouchPosition[Vector2](index: I32)
use @PonyGetTouchPointId[I32](index: I32)
use @PonyGetTouchPointCount[I32]()
use @PonySetGesturesEnabled[None](flags: U32)
use @PonyIsGestureDetected[Bool](gesture: U32)
use @PonyGetGestureDetected[I32]()
use @PonyGetGestureHoldDuration[F32]()
use @PonyGetGestureDragVector[Vector2]()
use @PonyGetGestureDragAngle[F32]()
use @PonyGetGesturePinchVector[Vector2]()
use @PonyGetGesturePinchAngle[F32]()
use @PonyUpdateCamera[None](camera: Camera, mode: I32)
use @PonyUpdateCameraPro[None](camera: Camera, movement: Vector3, rotation: Vector3, zoom: F32)
use @PonySetShapesTexture[None](texture: Texture2D, source: Rectangle)
use @PonyGetShapesTexture[Texture2D]()
use @PonyGetShapesTextureRectangle[Rectangle]()
use @PonyDrawPixel[None](posX: I32, posY: I32, color: Color)
use @PonyDrawPixelV[None](position: Vector2, color: Color)
use @PonyDrawLine[None](startPosX: I32, startPosY: I32, endPosX: I32, endPosY: I32, color: Color)
use @PonyDrawLineV[None](startPos: Vector2, endPos: Vector2, color: Color)
use @PonyDrawLineEx[None](startPos: Vector2, endPos: Vector2, thick: F32, color: Color)
use @PonyDrawLineStrip[None](points: Pointer[Vector2] tag, pointCount: I32, color: Color)
use @PonyDrawLineBezier[None](startPos: Vector2, endPos: Vector2, thick: F32, color: Color)
use @PonyDrawCircle[None](centerX: I32, centerY: I32, radius: F32, color: Color)
use @PonyDrawCircleSector[None](center: Vector2, radius: F32, startAngle: F32, endAngle: F32, segments: I32, color: Color)
use @PonyDrawCircleSectorLines[None](center: Vector2, radius: F32, startAngle: F32, endAngle: F32, segments: I32, color: Color)
use @PonyDrawCircleGradient[None](centerX: I32, centerY: I32, radius: F32, color1: Color, color2: Color)
use @PonyDrawCircleV[None](center: Vector2, radius: F32, color: Color)
use @PonyDrawCircleLines[None](centerX: I32, centerY: I32, radius: F32, color: Color)
use @PonyDrawCircleLinesV[None](center: Vector2, radius: F32, color: Color)
use @PonyDrawEllipse[None](centerX: I32, centerY: I32, radiusH: F32, radiusV: F32, color: Color)
use @PonyDrawEllipseLines[None](centerX: I32, centerY: I32, radiusH: F32, radiusV: F32, color: Color)
use @PonyDrawRing[None](center: Vector2, innerRadius: F32, outerRadius: F32, startAngle: F32, endAngle: F32, segments: I32, color: Color)
use @PonyDrawRingLines[None](center: Vector2, innerRadius: F32, outerRadius: F32, startAngle: F32, endAngle: F32, segments: I32, color: Color)
use @PonyDrawRectangle[None](posX: I32, posY: I32, width: I32, height: I32, color: Color)
use @PonyDrawRectangleV[None](position: Vector2, size: Vector2, color: Color)
use @PonyDrawRectangleRec[None](rec: Rectangle, color: Color)
use @PonyDrawRectanglePro[None](rec: Rectangle, origin: Vector2, rotation: F32, color: Color)
use @PonyDrawRectangleGradientV[None](posX: I32, posY: I32, width: I32, height: I32, color1: Color, color2: Color)
use @PonyDrawRectangleGradientH[None](posX: I32, posY: I32, width: I32, height: I32, color1: Color, color2: Color)
use @PonyDrawRectangleGradientEx[None](rec: Rectangle, col1: Color, col2: Color, col3: Color, col4: Color)
use @PonyDrawRectangleLines[None](posX: I32, posY: I32, width: I32, height: I32, color: Color)
use @PonyDrawRectangleLinesEx[None](rec: Rectangle, lineThick: F32, color: Color)
use @PonyDrawRectangleRounded[None](rec: Rectangle, roundness: F32, segments: I32, color: Color)
use @PonyDrawRectangleRoundedLines[None](rec: Rectangle, roundness: F32, segments: I32, lineThick: F32, color: Color)
use @PonyDrawTriangle[None](v1: Vector2, v2: Vector2, v3: Vector2, color: Color)
use @PonyDrawTriangleLines[None](v1: Vector2, v2: Vector2, v3: Vector2, color: Color)
use @PonyDrawTriangleFan[None](points: Pointer[Vector2] tag, pointCount: I32, color: Color)
use @PonyDrawTriangleStrip[None](points: Pointer[Vector2] tag, pointCount: I32, color: Color)
use @PonyDrawPoly[None](center: Vector2, sides: I32, radius: F32, rotation: F32, color: Color)
use @PonyDrawPolyLines[None](center: Vector2, sides: I32, radius: F32, rotation: F32, color: Color)
use @PonyDrawPolyLinesEx[None](center: Vector2, sides: I32, radius: F32, rotation: F32, lineThick: F32, color: Color)
use @PonyDrawSplineLinear[None](points: Pointer[Vector2] tag, pointCount: I32, thick: F32, color: Color)
use @PonyDrawSplineBasis[None](points: Pointer[Vector2] tag, pointCount: I32, thick: F32, color: Color)
use @PonyDrawSplineCatmullRom[None](points: Pointer[Vector2] tag, pointCount: I32, thick: F32, color: Color)
use @PonyDrawSplineBezierQuadratic[None](points: Pointer[Vector2] tag, pointCount: I32, thick: F32, color: Color)
use @PonyDrawSplineBezierCubic[None](points: Pointer[Vector2] tag, pointCount: I32, thick: F32, color: Color)
use @PonyDrawSplineSegmentLinear[None](p1: Vector2, p2: Vector2, thick: F32, color: Color)
use @PonyDrawSplineSegmentBasis[None](p1: Vector2, p2: Vector2, p3: Vector2, p4: Vector2, thick: F32, color: Color)
use @PonyDrawSplineSegmentCatmullRom[None](p1: Vector2, p2: Vector2, p3: Vector2, p4: Vector2, thick: F32, color: Color)
use @PonyDrawSplineSegmentBezierQuadratic[None](p1: Vector2, c2: Vector2, p3: Vector2, thick: F32, color: Color)
use @PonyDrawSplineSegmentBezierCubic[None](p1: Vector2, c2: Vector2, c3: Vector2, p4: Vector2, thick: F32, color: Color)
use @PonyGetSplinePointLinear[Vector2](startPos: Vector2, endPos: Vector2, t: F32)
use @PonyGetSplinePointBasis[Vector2](p1: Vector2, p2: Vector2, p3: Vector2, p4: Vector2, t: F32)
use @PonyGetSplinePointCatmullRom[Vector2](p1: Vector2, p2: Vector2, p3: Vector2, p4: Vector2, t: F32)
use @PonyGetSplinePointBezierQuad[Vector2](p1: Vector2, c2: Vector2, p3: Vector2, t: F32)
use @PonyGetSplinePointBezierCubic[Vector2](p1: Vector2, c2: Vector2, c3: Vector2, p4: Vector2, t: F32)
use @PonyCheckCollisionRecs[Bool](rec1: Rectangle, rec2: Rectangle)
use @PonyCheckCollisionCircles[Bool](center1: Vector2, radius1: F32, center2: Vector2, radius2: F32)
use @PonyCheckCollisionCircleRec[Bool](center: Vector2, radius: F32, rec: Rectangle)
use @PonyCheckCollisionPointRec[Bool](point: Vector2, rec: Rectangle)
use @PonyCheckCollisionPointCircle[Bool](point: Vector2, center: Vector2, radius: F32)
use @PonyCheckCollisionPointTriangle[Bool](point: Vector2, p1: Vector2, p2: Vector2, p3: Vector2)
use @PonyCheckCollisionPointPoly[Bool](point: Vector2, points: Pointer[Vector2] tag, pointCount: I32)
use @PonyCheckCollisionLines[Bool](startPos1: Vector2, endPos1: Vector2, startPos2: Vector2, endPos2: Vector2, collisionPoint: Vector2)
use @PonyCheckCollisionPointLine[Bool](point: Vector2, p1: Vector2, p2: Vector2, threshold: I32)
use @PonyGetCollisionRec[Rectangle](rec1: Rectangle, rec2: Rectangle)
use @PonyLoadImage[Image](fileName: Pointer[U8] tag)
use @PonyLoadImageRaw[Image](fileName: Pointer[U8] tag, width: I32, height: I32, format: I32, headerSize: I32)
use @PonyLoadImageSvg[Image](fileNameOrString: Pointer[U8] tag, width: I32, height: I32)
use @PonyLoadImageAnim[Image](fileName: Pointer[U8] tag, frames: Pointer[I32] tag)
use @PonyLoadImageAnimFromMemory[Image](fileType: Pointer[U8] tag, fileData: Pointer[U8] tag, dataSize: I32, frames: Pointer[I32] tag)
use @PonyLoadImageFromMemory[Image](fileType: Pointer[U8] tag, fileData: Pointer[U8] tag, dataSize: I32)
use @PonyLoadImageFromTexture[Image](texture: Texture2D)
use @PonyLoadImageFromScreen[Image]()
use @PonyIsImageReady[Bool](image: Image)
use @PonyUnloadImage[None](image: Image)
use @PonyExportImage[Bool](image: Image, fileName: Pointer[U8] tag)
use @PonyExportImageToMemory[Pointer[U8] tag](image: Image, fileType: Pointer[U8] tag, fileSize: Pointer[I32] tag)
use @PonyExportImageAsCode[Bool](image: Image, fileName: Pointer[U8] tag)
use @PonyGenImageColor[Image](width: I32, height: I32, color: Color)
use @PonyGenImageGradientLinear[Image](width: I32, height: I32, direction: I32, start: Color, end': Color)
use @PonyGenImageGradientRadial[Image](width: I32, height: I32, density: F32, inner: Color, outer: Color)
use @PonyGenImageGradientSquare[Image](width: I32, height: I32, density: F32, inner: Color, outer: Color)
use @PonyGenImageChecked[Image](width: I32, height: I32, checksX: I32, checksY: I32, col1: Color, col2: Color)
use @PonyGenImageWhiteNoise[Image](width: I32, height: I32, factor: F32)
use @PonyGenImagePerlinNoise[Image](width: I32, height: I32, offsetX: I32, offsetY: I32, scale: F32)
use @PonyGenImageCellular[Image](width: I32, height: I32, tileSize: I32)
use @PonyGenImageText[Image](width: I32, height: I32, text: Pointer[U8] tag)
use @PonyImageCopy[Image](image: Image)
use @PonyImageFromImage[Image](image: Image, rec: Rectangle)
use @PonyImageText[Image](text: Pointer[U8] tag, fontSize: I32, color: Color)
use @PonyImageTextEx[Image](font: Font, text: Pointer[U8] tag, fontSize: F32, spacing: F32, tint: Color)
use @PonyImageFormat[None](image: Image, newFormat: I32)
use @PonyImageToPOT[None](image: Image, fill: Color)
use @PonyImageCrop[None](image: Image, crop: Rectangle)
use @PonyImageAlphaCrop[None](image: Image, threshold: F32)
use @PonyImageAlphaClear[None](image: Image, color: Color, threshold: F32)
use @PonyImageAlphaMask[None](image: Image, alphaMask: Image)
use @PonyImageAlphaPremultiply[None](image: Image)
use @PonyImageBlurGaussian[None](image: Image, blurSize: I32)
use @PonyImageKernelConvolution[None](image: Image, kernel: Pointer[F32] tag, kernelSize: I32)
use @PonyImageResize[None](image: Image, newWidth: I32, newHeight: I32)
use @PonyImageResizeNN[None](image: Image, newWidth: I32, newHeight: I32)
use @PonyImageResizeCanvas[None](image: Image, newWidth: I32, newHeight: I32, offsetX: I32, offsetY: I32, fill: Color)
use @PonyImageMipmaps[None](image: Image)
use @PonyImageDither[None](image: Image, rBpp: I32, gBpp: I32, bBpp: I32, aBpp: I32)
use @PonyImageFlipVertical[None](image: Image)
use @PonyImageFlipHorizontal[None](image: Image)
use @PonyImageRotate[None](image: Image, degrees: I32)
use @PonyImageRotateCW[None](image: Image)
use @PonyImageRotateCCW[None](image: Image)
use @PonyImageColorTint[None](image: Image, color: Color)
use @PonyImageColorInvert[None](image: Image)
use @PonyImageColorGrayscale[None](image: Image)
use @PonyImageColorContrast[None](image: Image, contrast: F32)
use @PonyImageColorBrightness[None](image: Image, brightness: I32)
use @PonyImageColorReplace[None](image: Image, color: Color, replace: Color)
use @LoadImageColors[Color](image: Image)
use @LoadImagePalette[Color](image: Image, maxPaletteSize: I32, colorCount: Pointer[I32] tag)
use @PonyUnloadImageColors[None](colors: Color)
use @PonyUnloadImagePalette[None](colors: Color)
use @PonyGetImageAlphaBorder[Rectangle](image: Image, threshold: F32)
use @PonyGetImageColor[Color](image: Image, x: I32, y: I32)
use @PonyImageClearBackground[None](dst: Image, color: Color)
use @PonyImageDrawPixel[None](dst: Image, posX: I32, posY: I32, color: Color)
use @PonyImageDrawPixelV[None](dst: Image, position: Vector2, color: Color)
use @PonyImageDrawLine[None](dst: Image, startPosX: I32, startPosY: I32, endPosX: I32, endPosY: I32, color: Color)
use @PonyImageDrawLineV[None](dst: Image, start: Vector2, end': Vector2, color: Color)
use @PonyImageDrawCircle[None](dst: Image, centerX: I32, centerY: I32, radius: I32, color: Color)
use @PonyImageDrawCircleV[None](dst: Image, center: Vector2, radius: I32, color: Color)
use @PonyImageDrawCircleLines[None](dst: Image, centerX: I32, centerY: I32, radius: I32, color: Color)
use @PonyImageDrawCircleLinesV[None](dst: Image, center: Vector2, radius: I32, color: Color)
use @PonyImageDrawRectangle[None](dst: Image, posX: I32, posY: I32, width: I32, height: I32, color: Color)
use @PonyImageDrawRectangleV[None](dst: Image, position: Vector2, size: Vector2, color: Color)
use @PonyImageDrawRectangleRec[None](dst: Image, rec: Rectangle, color: Color)
use @PonyImageDrawRectangleLines[None](dst: Image, rec: Rectangle, thick: I32, color: Color)
use @PonyImageDraw[None](dst: Image, src: Image, srcRec: Rectangle, dstRec: Rectangle, tint: Color)
use @PonyImageDrawText[None](dst: Image, text: Pointer[U8] tag, posX: I32, posY: I32, fontSize: I32, color: Color)
use @PonyImageDrawTextEx[None](dst: Image, font: Font, text: Pointer[U8] tag, position: Vector2, fontSize: F32, spacing: F32, tint: Color)
use @PonyLoadTexture[Texture2D](fileName: Pointer[U8] tag)
use @PonyLoadTextureFromImage[Texture2D](image: Image)
use @PonyLoadTextureCubemap[TextureCubemap](image: Image, layout: I32)
use @PonyLoadRenderTexture[RenderTexture2D](width: I32, height: I32)
use @PonyIsTextureReady[Bool](texture: Texture2D)
use @PonyUnloadTexture[None](texture: Texture2D)
use @PonyIsRenderTextureReady[Bool](target: RenderTexture2D)
use @PonyUnloadRenderTexture[None](target: RenderTexture2D)
use @PonyUpdateTexture[None](texture: Texture2D, pixels: Pointer[None] tag)
use @PonyUpdateTextureRec[None](texture: Texture2D, rec: Rectangle, pixels: Pointer[None] tag)
use @PonyGenTextureMipmaps[None](texture: Texture2D)
use @PonySetTextureFilter[None](texture: Texture2D, filter: I32)
use @PonySetTextureWrap[None](texture: Texture2D, wrap: I32)
use @PonyDrawTexture[None](texture: Texture2D, posX: I32, posY: I32, tint: Color)
use @PonyDrawTextureV[None](texture: Texture2D, position: Vector2, tint: Color)
use @PonyDrawTextureEx[None](texture: Texture2D, position: Vector2, rotation: F32, scale: F32, tint: Color)
use @PonyDrawTextureRec[None](texture: Texture2D, source: Rectangle, position: Vector2, tint: Color)
use @PonyDrawTexturePro[None](texture: Texture2D, source: Rectangle, dest: Rectangle, origin: Vector2, rotation: F32, tint: Color)
use @PonyDrawTextureNPatch[None](texture: Texture2D, nPatchInfo: NPatchInfo, dest: Rectangle, origin: Vector2, rotation: F32, tint: Color)
use @PonyFade[Color](color: Color, alpha: F32)
use @PonyColorToInt[I32](color: Color)
use @PonyColorNormalize[Vector4](color: Color)
use @PonyColorFromNormalized[Color](normalized: Vector4)
use @PonyColorToHSV[Vector3](color: Color)
use @PonyColorFromHSV[Color](hue: F32, saturation: F32, value: F32)
use @PonyColorTint[Color](color: Color, tint: Color)
use @PonyColorBrightness[Color](color: Color, factor: F32)
use @PonyColorContrast[Color](color: Color, contrast: F32)
use @PonyColorAlpha[Color](color: Color, alpha: F32)
use @PonyColorAlphaBlend[Color](dst: Color, src: Color, tint: Color)
use @PonyGetColor[Color](hexValue: U32)
use @PonyGetPixelColor[Color](srcPtr: Pointer[None] tag, format: I32)
use @PonySetPixelColor[None](dstPtr: Pointer[None] tag, color: Color, format: I32)
use @PonyGetPixelDataSize[I32](width: I32, height: I32, format: I32)
use @PonyGetFontDefault[Font]()
use @PonyLoadFont[Font](fileName: Pointer[U8] tag)
use @PonyLoadFontEx[Font](fileName: Pointer[U8] tag, fontSize: I32, codepoints: Pointer[I32] tag, codepointCount: I32)
use @PonyLoadFontFromImage[Font](image: Image, key: Color, firstChar: I32)
use @PonyLoadFontFromMemory[Font](fileType: Pointer[U8] tag, fileData: Pointer[U8] tag, dataSize: I32, fontSize: I32, codepoints: Pointer[I32] tag, codepointCount: I32)
use @PonyIsFontReady[Bool](font: Font)
use @LoadFontData[GlyphInfo](fileData: Pointer[U8] tag, dataSize: I32, fontSize: I32, codepoints: Pointer[I32] tag, codepointCount: I32, type': I32)
use @PonyGenImageFontAtlas[Image](glyphs: GlyphInfo, glyphRecs: Pointer[Pointer[Rectangle] tag] tag, glyphCount: I32, fontSize: I32, padding: I32, packMethod: I32)
use @PonyUnloadFontData[None](glyphs: GlyphInfo, glyphCount: I32)
use @PonyUnloadFont[None](font: Font)
use @PonyExportFontAsCode[Bool](font: Font, fileName: Pointer[U8] tag)
use @PonyDrawFPS[None](posX: I32, posY: I32)
use @PonyDrawText[None](text: Pointer[U8] tag, posX: I32, posY: I32, fontSize: I32, color: Color)
use @PonyDrawTextEx[None](font: Font, text: Pointer[U8] tag, position: Vector2, fontSize: F32, spacing: F32, tint: Color)
use @PonyDrawTextPro[None](font: Font, text: Pointer[U8] tag, position: Vector2, origin: Vector2, rotation: F32, fontSize: F32, spacing: F32, tint: Color)
use @PonyDrawTextCodepoint[None](font: Font, codepoint: I32, position: Vector2, fontSize: F32, tint: Color)
use @PonyDrawTextCodepoints[None](font: Font, codepoints: Pointer[I32] tag, codepointCount: I32, position: Vector2, fontSize: F32, spacing: F32, tint: Color)
use @PonySetTextLineSpacing[None](spacing: I32)
use @PonyMeasureText[I32](text: Pointer[U8] tag, fontSize: I32)
use @PonyMeasureTextEx[Vector2](font: Font, text: Pointer[U8] tag, fontSize: F32, spacing: F32)
use @PonyGetGlyphIndex[I32](font: Font, codepoint: I32)
use @PonyGetGlyphInfo[GlyphInfo](font: Font, codepoint: I32)
use @PonyGetGlyphAtlasRec[Rectangle](font: Font, codepoint: I32)
use @PonyLoadUTF8[Pointer[U8] tag](codepoints: Pointer[I32] tag, length: I32)
use @PonyUnloadUTF8[None](text: Pointer[U8] tag)
use @PonyLoadCodepoints[Pointer[I32] tag](text: Pointer[U8] tag, count: Pointer[I32] tag)
use @PonyUnloadCodepoints[None](codepoints: Pointer[I32] tag)
use @PonyGetCodepointCount[I32](text: Pointer[U8] tag)
use @PonyGetCodepoint[I32](text: Pointer[U8] tag, codepointSize: Pointer[I32] tag)
use @PonyGetCodepointNext[I32](text: Pointer[U8] tag, codepointSize: Pointer[I32] tag)
use @PonyGetCodepointPrevious[I32](text: Pointer[U8] tag, codepointSize: Pointer[I32] tag)
use @PonyCodepointToUTF8[Pointer[U8] tag](codepoint: I32, utf8Size: Pointer[I32] tag)
use @PonyTextCopy[I32](dst: Pointer[U8] tag, src: Pointer[U8] tag)
use @PonyTextIsEqual[Bool](text1: Pointer[U8] tag, text2: Pointer[U8] tag)
use @PonyTextLength[U32](text: Pointer[U8] tag)
use @TextFormat[Pointer[U8] tag](text: Pointer[U8] tag, ...)
use @PonyTextSubtext[Pointer[U8] tag](text: Pointer[U8] tag, position: I32, length: I32)
use @PonyTextReplace[Pointer[U8] tag](text: Pointer[U8] tag, replace: Pointer[U8] tag, by: Pointer[U8] tag)
use @PonyTextInsert[Pointer[U8] tag](text: Pointer[U8] tag, insert: Pointer[U8] tag, position: I32)
use @PonyTextJoin[Pointer[U8] tag](textList: Pointer[Pointer[U8] tag] tag, count: I32, delimiter: Pointer[U8] tag)
use @PonyTextSplit[Pointer[Pointer[U8] tag] tag](text: Pointer[U8] tag, delimiter: U8, count: Pointer[I32] tag)
use @PonyTextAppend[None](text: Pointer[U8] tag, append: Pointer[U8] tag, position: Pointer[I32] tag)
use @PonyTextFindIndex[I32](text: Pointer[U8] tag, find: Pointer[U8] tag)
use @PonyTextToUpper[Pointer[U8] tag](text: Pointer[U8] tag)
use @PonyTextToLower[Pointer[U8] tag](text: Pointer[U8] tag)
use @PonyTextToPascal[Pointer[U8] tag](text: Pointer[U8] tag)
use @PonyTextToInteger[I32](text: Pointer[U8] tag)
use @PonyTextToFloat[F32](text: Pointer[U8] tag)
use @PonyDrawLine3D[None](startPos: Vector3, endPos: Vector3, color: Color)
use @PonyDrawPoint3D[None](position: Vector3, color: Color)
use @PonyDrawCircle3D[None](center: Vector3, radius: F32, rotationAxis: Vector3, rotationAngle: F32, color: Color)
use @PonyDrawTriangle3D[None](v1: Vector3, v2: Vector3, v3: Vector3, color: Color)
use @PonyDrawTriangleStrip3D[None](points: Pointer[Vector3] tag, pointCount: I32, color: Color)
use @PonyDrawCube[None](position: Vector3, width: F32, height: F32, length: F32, color: Color)
use @PonyDrawCubeV[None](position: Vector3, size: Vector3, color: Color)
use @PonyDrawCubeWires[None](position: Vector3, width: F32, height: F32, length: F32, color: Color)
use @PonyDrawCubeWiresV[None](position: Vector3, size: Vector3, color: Color)
use @PonyDrawSphere[None](centerPos: Vector3, radius: F32, color: Color)
use @PonyDrawSphereEx[None](centerPos: Vector3, radius: F32, rings: I32, slices: I32, color: Color)
use @PonyDrawSphereWires[None](centerPos: Vector3, radius: F32, rings: I32, slices: I32, color: Color)
use @PonyDrawCylinder[None](position: Vector3, radiusTop: F32, radiusBottom: F32, height: F32, slices: I32, color: Color)
use @PonyDrawCylinderEx[None](startPos: Vector3, endPos: Vector3, startRadius: F32, endRadius: F32, sides: I32, color: Color)
use @PonyDrawCylinderWires[None](position: Vector3, radiusTop: F32, radiusBottom: F32, height: F32, slices: I32, color: Color)
use @PonyDrawCylinderWiresEx[None](startPos: Vector3, endPos: Vector3, startRadius: F32, endRadius: F32, sides: I32, color: Color)
use @PonyDrawCapsule[None](startPos: Vector3, endPos: Vector3, radius: F32, slices: I32, rings: I32, color: Color)
use @PonyDrawCapsuleWires[None](startPos: Vector3, endPos: Vector3, radius: F32, slices: I32, rings: I32, color: Color)
use @PonyDrawPlane[None](centerPos: Vector3, size: Vector2, color: Color)
use @PonyDrawRay[None](ray: Ray, color: Color)
use @PonyDrawGrid[None](slices: I32, spacing: F32)
use @PonyLoadModel[Model](fileName: Pointer[U8] tag)
use @PonyLoadModelFromMesh[Model](mesh: Mesh)
use @PonyIsModelReady[Bool](model: Model)
use @PonyUnloadModel[None](model: Model)
use @PonyGetModelBoundingBox[BoundingBox](model: Model)
use @PonyDrawModel[None](model: Model, position: Vector3, scale: F32, tint: Color)
use @PonyDrawModelEx[None](model: Model, position: Vector3, rotationAxis: Vector3, rotationAngle: F32, scale: Vector3, tint: Color)
use @PonyDrawModelWires[None](model: Model, position: Vector3, scale: F32, tint: Color)
use @PonyDrawModelWiresEx[None](model: Model, position: Vector3, rotationAxis: Vector3, rotationAngle: F32, scale: Vector3, tint: Color)
use @PonyDrawBoundingBox[None](box': BoundingBox, color: Color)
use @PonyDrawBillboard[None](camera: Camera, texture: Texture2D, position: Vector3, size: F32, tint: Color)
use @PonyDrawBillboardRec[None](camera: Camera, texture: Texture2D, source: Rectangle, position: Vector3, size: Vector2, tint: Color)
use @PonyDrawBillboardPro[None](camera: Camera, texture: Texture2D, source: Rectangle, position: Vector3, up: Vector3, size: Vector2, origin: Vector2, rotation: F32, tint: Color)
use @PonyUploadMesh[None](mesh: Mesh, dynamic: Bool)
use @PonyUpdateMeshBuffer[None](mesh: Mesh, index: I32, data: Pointer[None] tag, dataSize: I32, offset: I32)
use @PonyUnloadMesh[None](mesh: Mesh)
use @PonyDrawMesh[None](mesh: Mesh, material: Material, transform: Matrix)
use @PonyDrawMeshInstanced[None](mesh: Mesh, material: Material, transforms: Matrix, instances: I32)
use @PonyGetMeshBoundingBox[BoundingBox](mesh: Mesh)
use @PonyGenMeshTangents[None](mesh: Mesh)
use @PonyExportMesh[Bool](mesh: Mesh, fileName: Pointer[U8] tag)
use @PonyExportMeshAsCode[Bool](mesh: Mesh, fileName: Pointer[U8] tag)
use @PonyGenMeshPoly[Mesh](sides: I32, radius: F32)
use @PonyGenMeshPlane[Mesh](width: F32, length: F32, resX: I32, resZ: I32)
use @PonyGenMeshCube[Mesh](width: F32, height: F32, length: F32)
use @PonyGenMeshSphere[Mesh](radius: F32, rings: I32, slices: I32)
use @PonyGenMeshHemiSphere[Mesh](radius: F32, rings: I32, slices: I32)
use @PonyGenMeshCylinder[Mesh](radius: F32, height: F32, slices: I32)
use @PonyGenMeshCone[Mesh](radius: F32, height: F32, slices: I32)
use @PonyGenMeshTorus[Mesh](radius: F32, size: F32, radSeg: I32, sides: I32)
use @PonyGenMeshKnot[Mesh](radius: F32, size: F32, radSeg: I32, sides: I32)
use @PonyGenMeshHeightmap[Mesh](heightmap: Image, size: Vector3)
use @PonyGenMeshCubicmap[Mesh](cubicmap: Image, cubeSize: Vector3)
use @LoadMaterials[Material](fileName: Pointer[U8] tag, materialCount: Pointer[I32] tag)
use @PonyLoadMaterialDefault[Material]()
use @PonyIsMaterialReady[Bool](material: Material)
use @PonyUnloadMaterial[None](material: Material)
use @PonySetMaterialTexture[None](material: Material, mapType: I32, texture: Texture2D)
use @PonySetModelMeshMaterial[None](model: Model, meshId: I32, materialId: I32)
use @LoadModelAnimations[ModelAnimation](fileName: Pointer[U8] tag, animCount: Pointer[I32] tag)
use @PonyUpdateModelAnimation[None](model: Model, anim: ModelAnimation, frame: I32)
use @PonyUnloadModelAnimation[None](anim: ModelAnimation)
use @PonyUnloadModelAnimations[None](animations: Pointer[ModelAnimation] tag, animCount: I32)
use @PonyIsModelAnimationValid[Bool](model: Model, anim: ModelAnimation)
use @PonyCheckCollisionSpheres[Bool](center1: Vector3, radius1: F32, center2: Vector3, radius2: F32)
use @PonyCheckCollisionBoxes[Bool](box1: BoundingBox, box2: BoundingBox)
use @PonyCheckCollisionBoxSphere[Bool](box': BoundingBox, center: Vector3, radius: F32)
use @PonyGetRayCollisionSphere[RayCollision](ray: Ray, center: Vector3, radius: F32)
use @PonyGetRayCollisionBox[RayCollision](ray: Ray, box': BoundingBox)
use @PonyGetRayCollisionMesh[RayCollision](ray: Ray, mesh: Mesh, transform: Matrix)
use @PonyGetRayCollisionTriangle[RayCollision](ray: Ray, p1: Vector3, p2: Vector3, p3: Vector3)
use @PonyGetRayCollisionQuad[RayCollision](ray: Ray, p1: Vector3, p2: Vector3, p3: Vector3, p4: Vector3)
use @PonyInitAudioDevice[None]()
use @PonyCloseAudioDevice[None]()
use @PonyIsAudioDeviceReady[Bool]()
use @PonySetMasterVolume[None](volume: F32)
use @PonyGetMasterVolume[F32]()
use @PonyLoadWave[Wave](fileName: Pointer[U8] tag)
use @PonyLoadWaveFromMemory[Wave](fileType: Pointer[U8] tag, fileData: Pointer[U8] tag, dataSize: I32)
use @PonyIsWaveReady[Bool](wave: Wave)
use @PonyLoadSound[Sound](fileName: Pointer[U8] tag)
use @PonyLoadSoundFromWave[Sound](wave: Wave)
use @PonyLoadSoundAlias[Sound](source: Sound)
use @PonyIsSoundReady[Bool](sound: Sound)
use @PonyUpdateSound[None](sound: Sound, data: Pointer[None] tag, sampleCount: I32)
use @PonyUnloadWave[None](wave: Wave)
use @PonyUnloadSound[None](sound: Sound)
use @PonyUnloadSoundAlias[None](alias: Sound)
use @PonyExportWave[Bool](wave: Wave, fileName: Pointer[U8] tag)
use @PonyExportWaveAsCode[Bool](wave: Wave, fileName: Pointer[U8] tag)
use @PonyPlaySound[None](sound: Sound)
use @PonyStopSound[None](sound: Sound)
use @PonyPauseSound[None](sound: Sound)
use @PonyResumeSound[None](sound: Sound)
use @PonyIsSoundPlaying[Bool](sound: Sound)
use @PonySetSoundVolume[None](sound: Sound, volume: F32)
use @PonySetSoundPitch[None](sound: Sound, pitch: F32)
use @PonySetSoundPan[None](sound: Sound, pan: F32)
use @PonyWaveCopy[Wave](wave: Wave)
use @PonyWaveCrop[None](wave: Wave, initSample: I32, finalSample: I32)
use @PonyWaveFormat[None](wave: Wave, sampleRate: I32, sampleSize: I32, channels: I32)
use @PonyLoadWaveSamples[Pointer[F32] tag](wave: Wave)
use @PonyUnloadWaveSamples[None](samples: Pointer[F32] tag)
use @PonyLoadMusicStream[Music](fileName: Pointer[U8] tag)
use @PonyLoadMusicStreamFromMemory[Music](fileType: Pointer[U8] tag, data: Pointer[U8] tag, dataSize: I32)
use @PonyIsMusicReady[Bool](music: Music)
use @PonyUnloadMusicStream[None](music: Music)
use @PonyPlayMusicStream[None](music: Music)
use @PonyIsMusicStreamPlaying[Bool](music: Music)
use @PonyUpdateMusicStream[None](music: Music)
use @PonyStopMusicStream[None](music: Music)
use @PonyPauseMusicStream[None](music: Music)
use @PonyResumeMusicStream[None](music: Music)
use @PonySeekMusicStream[None](music: Music, position: F32)
use @PonySetMusicVolume[None](music: Music, volume: F32)
use @PonySetMusicPitch[None](music: Music, pitch: F32)
use @PonySetMusicPan[None](music: Music, pan: F32)
use @PonyGetMusicTimeLength[F32](music: Music)
use @PonyGetMusicTimePlayed[F32](music: Music)
use @PonyLoadAudioStream[AudioStream](sampleRate: U32, sampleSize: U32, channels: U32)
use @PonyIsAudioStreamReady[Bool](stream: AudioStream)
use @PonyUnloadAudioStream[None](stream: AudioStream)
use @PonyUpdateAudioStream[None](stream: AudioStream, data: Pointer[None] tag, frameCount: I32)
use @PonyIsAudioStreamProcessed[Bool](stream: AudioStream)
use @PonyPlayAudioStream[None](stream: AudioStream)
use @PonyPauseAudioStream[None](stream: AudioStream)
use @PonyResumeAudioStream[None](stream: AudioStream)
use @PonyIsAudioStreamPlaying[Bool](stream: AudioStream)
use @PonyStopAudioStream[None](stream: AudioStream)
use @PonySetAudioStreamVolume[None](stream: AudioStream, volume: F32)
use @PonySetAudioStreamPitch[None](stream: AudioStream, pitch: F32)
use @PonySetAudioStreamPan[None](stream: AudioStream, pan: F32)
use @PonySetAudioStreamBufferSizeDefault[None](size: I32)
use @PonySetAudioStreamCallback[None](stream: AudioStream, callback: AudioCallback)
use @PonyAttachAudioStreamProcessor[None](stream: AudioStream, processor: AudioCallback)
use @PonyDetachAudioStreamProcessor[None](stream: AudioStream, processor: AudioCallback)
use @PonyAttachAudioMixedProcessor[None](processor: AudioCallback)
use @PonyDetachAudioMixedProcessor[None](processor: AudioCallback)
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
  let data: Pointer[None] tag
  let width: I32
  let height: I32
  let mipmaps: I32
  let format: I32

  new create(data': Pointer[None] tag, width': I32, height': I32, mipmaps': I32, format': I32) =>
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
  embed texture: Texture
  embed depth: Texture

  new create(id': U32, texture': Texture, depth': Texture) =>
    id = id'
    texture = Texture(texture'.id, texture'.width, texture'.height, texture'.mipmaps, texture'.format)
    depth = Texture(depth'.id, depth'.width, depth'.height, depth'.mipmaps, depth'.format)
struct NPatchInfo
  embed source: Rectangle
  let left: I32
  let top: I32
  let right: I32
  let bottom: I32
  let layout: I32

  new create(source': Rectangle, left': I32, top': I32, right': I32, bottom': I32, layout': I32) =>
    source = Rectangle(source'.x, source'.y, source'.width, source'.height)
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
  embed image: Image

  new create(value': I32, offset_x': I32, offset_y': I32, advance_x': I32, image': Image) =>
    value = value'
    offset_x = offset_x'
    offset_y = offset_y'
    advance_x = advance_x'
    image = Image(image'.data, image'.width, image'.height, image'.mipmaps, image'.format)
struct Font
  let base_size: I32
  let glyph_count: I32
  let glyph_padding: I32
  embed texture: Texture2D
  let recs: Pointer[Rectangle] tag
  let glyphs: Pointer[GlyphInfo] tag

  new create(base_size': I32, glyph_count': I32, glyph_padding': I32, texture': Texture2D, recs': Pointer[Rectangle] tag, glyphs': Pointer[GlyphInfo] tag) =>
    base_size = base_size'
    glyph_count = glyph_count'
    glyph_padding = glyph_padding'
    texture = Texture(texture'.id, texture'.width, texture'.height, texture'.mipmaps, texture'.format)
    recs = recs'
    glyphs = glyphs'
struct Mesh
  let vertex_count: I32
  let triangle_count: I32
  let vertices: Pointer[F32] tag
  let texcoords: Pointer[F32] tag
  let texcoords2: Pointer[F32] tag
  let normals: Pointer[F32] tag
  let tangents: Pointer[F32] tag
  let colors: Pointer[U8] tag
  let indices: Pointer[U16] tag
  let anim_vertices: Pointer[F32] tag
  let anim_normals: Pointer[F32] tag
  let bone_ids: Pointer[U8] tag
  let bone_weights: Pointer[F32] tag
  let vao_id: U32
  let vbo_id: Pointer[U32] tag

  new create(vertex_count': I32, triangle_count': I32, vertices': Pointer[F32] tag, texcoords': Pointer[F32] tag, texcoords2': Pointer[F32] tag, normals': Pointer[F32] tag, tangents': Pointer[F32] tag, colors': Pointer[U8] tag, indices': Pointer[U16] tag, anim_vertices': Pointer[F32] tag, anim_normals': Pointer[F32] tag, bone_ids': Pointer[U8] tag, bone_weights': Pointer[F32] tag, vao_id': U32, vbo_id': Pointer[U32] tag) =>
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
struct MaterialMap
  embed texture: Texture2D
  embed color: Color
  let value: F32

  new create(texture': Texture2D, color': Color, value': F32) =>
    texture = Texture(texture'.id, texture'.width, texture'.height, texture'.mipmaps, texture'.format)
    color = Color(color'.r, color'.g, color'.b, color'.a)
    value = value'
struct Material
  embed shader: Shader
  let maps: Pointer[MaterialMap] tag
  let params: Pointer[F32] tag

  new create(shader': Shader, maps': Pointer[MaterialMap] tag, params': Pointer[F32] tag) =>
    shader = Shader(shader'.id, shader'.locs)
    maps = maps'
    params = params'
struct Transform
  embed translation: Vector3
  embed rotation: Quaternion
  embed scale: Vector3

  new create(translation': Vector3, rotation': Quaternion, scale': Vector3) =>
    translation = Vector3(translation'.x, translation'.y, translation'.z)
    rotation = Vector4(rotation'.x, rotation'.y, rotation'.z, rotation'.w)
    scale = Vector3(scale'.x, scale'.y, scale'.z)
struct BoneInfo
  let name: Pointer[U8] tag
  let parent: I32

  new create(name': Pointer[U8] tag, parent': I32) =>
    name = name'
    parent = parent'
struct Model
  embed transform: Matrix
  let mesh_count: I32
  let material_count: I32
  let meshes: Pointer[Mesh] tag
  let materials: Pointer[Material] tag
  let mesh_material: Pointer[I32] tag
  let bone_count: I32
  let bones: Pointer[BoneInfo] tag
  let bind_pose: Pointer[Transform] tag

  new create(transform': Matrix, mesh_count': I32, material_count': I32, meshes': Pointer[Mesh] tag, materials': Pointer[Material] tag, mesh_material': Pointer[I32] tag, bone_count': I32, bones': Pointer[BoneInfo] tag, bind_pose': Pointer[Transform] tag) =>
    transform = Matrix(transform'.m0, transform'.m4, transform'.m8, transform'.m12, transform'.m1, transform'.m5, transform'.m9, transform'.m13, transform'.m2, transform'.m6, transform'.m10, transform'.m14, transform'.m3, transform'.m7, transform'.m11, transform'.m15)
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
  let bones: Pointer[BoneInfo] tag
  let frame_poses: Pointer[Pointer[Transform] tag] tag
  let name: Pointer[U8] tag

  new create(bone_count': I32, frame_count': I32, bones': Pointer[BoneInfo] tag, frame_poses': Pointer[Pointer[Transform] tag] tag, name': Pointer[U8] tag) =>
    bone_count = bone_count'
    frame_count = frame_count'
    bones = bones'
    frame_poses = frame_poses'
    name = name'
struct Ray
  embed position: Vector3
  embed direction: Vector3

  new create(position': Vector3, direction': Vector3) =>
    position = Vector3(position'.x, position'.y, position'.z)
    direction = Vector3(direction'.x, direction'.y, direction'.z)
struct RayCollision
  let hit: Bool
  let distance: F32
  embed point: Vector3
  embed normal: Vector3

  new create(hit': Bool, distance': F32, point': Vector3, normal': Vector3) =>
    hit = hit'
    distance = distance'
    point = Vector3(point'.x, point'.y, point'.z)
    normal = Vector3(normal'.x, normal'.y, normal'.z)
struct BoundingBox
  embed min: Vector3
  embed max: Vector3

  new create(min': Vector3, max': Vector3) =>
    min = Vector3(min'.x, min'.y, min'.z)
    max = Vector3(max'.x, max'.y, max'.z)
struct Wave
  let frame_count: U32
  let sample_rate: U32
  let sample_size: U32
  let channels: U32
  let data: Pointer[None] tag

  new create(frame_count': U32, sample_rate': U32, sample_size': U32, channels': U32, data': Pointer[None] tag) =>
    frame_count = frame_count'
    sample_rate = sample_rate'
    sample_size = sample_size'
    channels = channels'
    data = data'
struct AudioStream
  let buffer: Pointer[RAudioBuffer] tag
  let processor: Pointer[RAudioProcessor] tag
  let sample_rate: U32
  let sample_size: U32
  let channels: U32

  new create(buffer': Pointer[RAudioBuffer] tag, processor': Pointer[RAudioProcessor] tag, sample_rate': U32, sample_size': U32, channels': U32) =>
    buffer = buffer'
    processor = processor'
    sample_rate = sample_rate'
    sample_size = sample_size'
    channels = channels'
struct Sound
  embed stream: AudioStream
  let frame_count: U32

  new create(stream': AudioStream, frame_count': U32) =>
    stream = AudioStream(stream'.buffer, stream'.processor, stream'.sample_rate, stream'.sample_size, stream'.channels)
    frame_count = frame_count'
struct Music
  embed stream: AudioStream
  let frame_count: U32
  let looping: Bool
  let ctx_type: I32
  let ctx_data: Pointer[None] tag

  new create(stream': AudioStream, frame_count': U32, looping': Bool, ctx_type': I32, ctx_data': Pointer[None] tag) =>
    stream = AudioStream(stream'.buffer, stream'.processor, stream'.sample_rate, stream'.sample_size, stream'.channels)
    frame_count = frame_count'
    looping = looping'
    ctx_type = ctx_type'
    ctx_data = ctx_data'
struct VrDeviceInfo
  let h_resolution: I32
  let v_resolution: I32
  let h_screen_size: F32
  let v_screen_size: F32
  let eye_to_screen_distance: F32
  let lens_separation_distance: F32
  let interpupillary_distance: F32
  let lens_distortion_values: Pointer[F32] tag
  let chroma_ab_correction: Pointer[F32] tag

  new create(h_resolution': I32, v_resolution': I32, h_screen_size': F32, v_screen_size': F32, eye_to_screen_distance': F32, lens_separation_distance': F32, interpupillary_distance': F32, lens_distortion_values': Pointer[F32] tag, chroma_ab_correction': Pointer[F32] tag) =>
    h_resolution = h_resolution'
    v_resolution = v_resolution'
    h_screen_size = h_screen_size'
    v_screen_size = v_screen_size'
    eye_to_screen_distance = eye_to_screen_distance'
    lens_separation_distance = lens_separation_distance'
    interpupillary_distance = interpupillary_distance'
    lens_distortion_values = lens_distortion_values'
    chroma_ab_correction = chroma_ab_correction'
struct VrStereoConfig
  let projection: Pointer[Matrix] tag
  let view_offset: Pointer[Matrix] tag
  let left_lens_center: Pointer[F32] tag
  let right_lens_center: Pointer[F32] tag
  let left_screen_center: Pointer[F32] tag
  let right_screen_center: Pointer[F32] tag
  let scale: Pointer[F32] tag
  let scale_in: Pointer[F32] tag

  new create(projection': Pointer[Matrix] tag, view_offset': Pointer[Matrix] tag, left_lens_center': Pointer[F32] tag, right_lens_center': Pointer[F32] tag, left_screen_center': Pointer[F32] tag, right_screen_center': Pointer[F32] tag, scale': Pointer[F32] tag, scale_in': Pointer[F32] tag) =>
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
  let paths: Pointer[Pointer[U8] tag] tag

  new create(capacity': U32, count': U32, paths': Pointer[Pointer[U8] tag] tag) =>
    capacity = capacity'
    count = count'
    paths = paths'
struct AutomationEvent
  let frame: U32
  let type': U32
  let params: Pointer[I32] tag

  new create(frame': U32, type'': U32, params': Pointer[I32] tag) =>
    frame = frame'
    type' = type''
    params = params'
struct AutomationEventList
  let capacity: U32
  let count: U32
  let events: Pointer[AutomationEvent] tag

  new create(capacity': U32, count': U32, events': Pointer[AutomationEvent] tag) =>
    capacity = capacity'
    count = count'
    events = events'
primitive RAudioBuffer
primitive RAudioProcessor
// TODO: implement callbacks
primitive TraceLogCallback
primitive LoadFileDataCallback
primitive SaveFileDataCallback
primitive LoadFileTextCallback
primitive SaveFileTextCallback
primitive AudioCallback

type Quaternion is Vector4
type Texture2D is Texture
type TextureCubemap is Texture
type RenderTexture2D is RenderTexture
type Camera is Camera3D
primitive Colors
  fun light_gray(): Color => Color(200, 200, 200, 255)
  fun gray(): Color => Color(130, 130, 130, 255)
  fun dark_gray(): Color => Color(80, 80, 80, 255)
  fun yellow(): Color => Color(253, 249, 0, 255)
  fun gold(): Color => Color(255, 203, 0, 255)
  fun orange(): Color => Color(255, 161, 0, 255)
  fun pink(): Color => Color(255, 109, 194, 255)
  fun red(): Color => Color(230, 41, 55, 255)
  fun maroon(): Color => Color(190, 33, 55, 255)
  fun green(): Color => Color(0, 228, 48, 255)
  fun lime(): Color => Color(0, 158, 47, 255)
  fun dark_green(): Color => Color(0, 117, 44, 255)
  fun sky_blue(): Color => Color(102, 191, 255, 255)
  fun blue(): Color => Color(0, 121, 241, 255)
  fun darkblue(): Color => Color(0, 82, 172, 255)
  fun purple(): Color => Color(200, 122, 255, 255)
  fun violet(): Color => Color(135, 60, 190, 255)
  fun dark_purple(): Color => Color(112, 31, 126, 255)
  fun beige(): Color => Color(211, 176, 131, 255)
  fun brown(): Color => Color(127, 106, 79, 255)
  fun dark_brown(): Color => Color(76, 63, 47, 255)
  fun white(): Color => Color(255, 255, 255, 255)
  fun black(): Color => Color(0, 0, 0, 255)
  fun blank(): Color => Color(0, 0, 0, 0)
  fun magenta(): Color => Color(255, 0, 255, 255)
  fun ray_white(): Color => Color(245, 245, 245, 255)
