use "path:../zig-out/lib"
use "lib:raylibc"
use "lib:shims"
use "collections"

use @InitWindow[None](width: I32, height: I32, title: Pointer[U8] tag)
use @CloseWindow[None]()
use @WindowShouldClose[Bool]()
use @IsWindowReady[Bool]()
use @IsWindowFullscreen[Bool]()
use @IsWindowHidden[Bool]()
use @IsWindowMinimized[Bool]()
use @IsWindowMaximized[Bool]()
use @IsWindowFocused[Bool]()
use @IsWindowResized[Bool]()
use @IsWindowState[Bool](flag: U32)
use @SetWindowState[None](flags: U32)
use @ClearWindowState[None](flags: U32)
use @ToggleFullscreen[None]()
use @ToggleBorderlessWindowed[None]()
use @MaximizeWindow[None]()
use @MinimizeWindow[None]()
use @RestoreWindow[None]()
use @SetWindowIcon[None](image: _Image)
use @SetWindowIcons[None](images: Image, count: I32)
use @SetWindowTitle[None](title: Pointer[U8] tag)
use @SetWindowPosition[None](x: I32, y: I32)
use @SetWindowMonitor[None](monitor: I32)
use @SetWindowMinSize[None](width: I32, height: I32)
use @SetWindowMaxSize[None](width: I32, height: I32)
use @SetWindowSize[None](width: I32, height: I32)
use @SetWindowOpacity[None](opacity: F32)
use @SetWindowFocused[None]()
use @GetWindowHandle[Pointer[None] tag]()
use @GetScreenWidth[I32]()
use @GetScreenHeight[I32]()
use @GetRenderWidth[I32]()
use @GetRenderHeight[I32]()
use @GetMonitorCount[I32]()
use @GetCurrentMonitor[I32]()
use @GetMonitorPosition[_Vector2](monitor: I32)
use @GetMonitorWidth[I32](monitor: I32)
use @GetMonitorHeight[I32](monitor: I32)
use @GetMonitorPhysicalWidth[I32](monitor: I32)
use @GetMonitorPhysicalHeight[I32](monitor: I32)
use @GetMonitorRefreshRate[I32](monitor: I32)
use @GetWindowPosition[_Vector2]()
use @GetWindowScaleDPI[_Vector2]()
use @GetMonitorName[Pointer[U8] tag](monitor: I32)
use @SetClipboardText[None](text: Pointer[U8] tag)
use @GetClipboardText[Pointer[U8] tag]()
use @EnableEventWaiting[None]()
use @DisableEventWaiting[None]()
use @ShowCursor[None]()
use @HideCursor[None]()
use @IsCursorHidden[Bool]()
use @EnableCursor[None]()
use @DisableCursor[None]()
use @IsCursorOnScreen[Bool]()
use @ClearBackground[None](color: _Color)
use @BeginDrawing[None]()
use @EndDrawing[None]()
use @BeginMode2D[None](camera: _Camera2D)
use @EndMode2D[None]()
use @BeginMode3D[None](camera: _Camera3D)
use @EndMode3D[None]()
use @BeginTextureMode[None](target: _RenderTexture2D)
use @EndTextureMode[None]()
use @BeginShaderMode[None](shader: _Shader)
use @EndShaderMode[None]()
use @BeginBlendMode[None](mode: I32)
use @EndBlendMode[None]()
use @BeginScissorMode[None](x: I32, y: I32, width: I32, height: I32)
use @EndScissorMode[None]()
use @BeginVrStereoMode[None](config: _VrStereoConfig)
use @EndVrStereoMode[None]()
use @LoadVrStereoConfig[_VrStereoConfig](device: _VrDeviceInfo)
use @UnloadVrStereoConfig[None](config: _VrStereoConfig)
use @LoadShader[_Shader](vsFileName: Pointer[U8] tag, fsFileName: Pointer[U8] tag)
use @LoadShaderFromMemory[_Shader](vsCode: Pointer[U8] tag, fsCode: Pointer[U8] tag)
use @IsShaderReady[Bool](shader: _Shader)
use @GetShaderLocation[I32](shader: _Shader, uniformName: Pointer[U8] tag)
use @GetShaderLocationAttrib[I32](shader: _Shader, attribName: Pointer[U8] tag)
use @SetShaderValue[None](shader: _Shader, locIndex: I32, value: Pointer[None] tag, uniformType: I32)
use @SetShaderValueV[None](shader: _Shader, locIndex: I32, value: Pointer[None] tag, uniformType: I32, count: I32)
use @SetShaderValueMatrix[None](shader: _Shader, locIndex: I32, mat: _Matrix)
use @SetShaderValueTexture[None](shader: _Shader, locIndex: I32, texture: _Texture2D)
use @UnloadShader[None](shader: _Shader)
use @GetMouseRay[_Ray](mousePosition: _Vector2, camera: _Camera)
use @GetCameraMatrix[_Matrix](camera: _Camera)
use @GetCameraMatrix2D[_Matrix](camera: _Camera2D)
use @GetWorldToScreen[_Vector2](position: _Vector3, camera: _Camera)
use @GetScreenToWorld2D[_Vector2](position: _Vector2, camera: _Camera2D)
use @GetWorldToScreenEx[_Vector2](position: _Vector3, camera: _Camera, width: I32, height: I32)
use @GetWorldToScreen2D[_Vector2](position: _Vector2, camera: _Camera2D)
use @SetTargetFPS[None](fps: I32)
use @GetFrameTime[F32]()
use @GetTime[F64]()
use @GetFPS[I32]()
use @SwapScreenBuffer[None]()
use @PollInputEvents[None]()
use @WaitTime[None](seconds: F64)
use @SetRandomSeed[None](seed: U32)
use @GetRandomValue[I32](min: I32, max: I32)
use @LoadRandomSequence[Pointer[I32] tag](count: U32, min: I32, max: I32)
use @UnloadRandomSequence[None](sequence: Pointer[I32] tag)
use @TakeScreenshot[None](fileName: Pointer[U8] tag)
use @SetConfigFlags[None](flags: U32)
use @OpenURL[None](url: Pointer[U8] tag)
use @TraceLog[None](logLevel: I32, text: Pointer[U8] tag, ...)
use @SetTraceLogLevel[None](logLevel: I32)
use @MemAlloc[Pointer[None] tag](size: U32)
use @MemRealloc[Pointer[None] tag](ptr: Pointer[None] tag, size: U32)
use @MemFree[None](ptr: Pointer[None] tag)
use @SetTraceLogCallback[None](callback: TraceLogCallback)
use @SetLoadFileDataCallback[None](callback: LoadFileDataCallback)
use @SetSaveFileDataCallback[None](callback: SaveFileDataCallback)
use @SetLoadFileTextCallback[None](callback: LoadFileTextCallback)
use @SetSaveFileTextCallback[None](callback: SaveFileTextCallback)
use @LoadFileData[Pointer[U8] tag](fileName: Pointer[U8] tag, dataSize: Pointer[I32] tag)
use @UnloadFileData[None](data: Pointer[U8] tag)
use @SaveFileData[Bool](fileName: Pointer[U8] tag, data: Pointer[None] tag, dataSize: I32)
use @ExportDataAsCode[Bool](data: Pointer[U8] tag, dataSize: I32, fileName: Pointer[U8] tag)
use @LoadFileText[Pointer[U8] tag](fileName: Pointer[U8] tag)
use @UnloadFileText[None](text: Pointer[U8] tag)
use @SaveFileText[Bool](fileName: Pointer[U8] tag, text: Pointer[U8] tag)
use @FileExists[Bool](fileName: Pointer[U8] tag)
use @DirectoryExists[Bool](dirPath: Pointer[U8] tag)
use @IsFileExtension[Bool](fileName: Pointer[U8] tag, ext: Pointer[U8] tag)
use @GetFileLength[I32](fileName: Pointer[U8] tag)
use @GetFileExtension[Pointer[U8] tag](fileName: Pointer[U8] tag)
use @GetFileName[Pointer[U8] tag](filePath: Pointer[U8] tag)
use @GetFileNameWithoutExt[Pointer[U8] tag](filePath: Pointer[U8] tag)
use @GetDirectoryPath[Pointer[U8] tag](filePath: Pointer[U8] tag)
use @GetPrevDirectoryPath[Pointer[U8] tag](dirPath: Pointer[U8] tag)
use @GetWorkingDirectory[Pointer[U8] tag]()
use @GetApplicationDirectory[Pointer[U8] tag]()
use @ChangeDirectory[Bool](dir: Pointer[U8] tag)
use @IsPathFile[Bool](path: Pointer[U8] tag)
use @LoadDirectoryFiles[_FilePathList](dirPath: Pointer[U8] tag)
use @LoadDirectoryFilesEx[_FilePathList](basePath: Pointer[U8] tag, filter: Pointer[U8] tag, scanSubdirs: Bool)
use @UnloadDirectoryFiles[None](files: _FilePathList)
use @IsFileDropped[Bool]()
use @LoadDroppedFiles[_FilePathList]()
use @UnloadDroppedFiles[None](files: _FilePathList)
use @GetFileModTime[I64](fileName: Pointer[U8] tag)
use @CompressData[Pointer[U8] tag](data: Pointer[U8] tag, dataSize: I32, compDataSize: Pointer[I32] tag)
use @DecompressData[Pointer[U8] tag](compData: Pointer[U8] tag, compDataSize: I32, dataSize: Pointer[I32] tag)
use @EncodeDataBase64[Pointer[U8] tag](data: Pointer[U8] tag, dataSize: I32, outputSize: Pointer[I32] tag)
use @DecodeDataBase64[Pointer[U8] tag](data: Pointer[U8] tag, outputSize: Pointer[I32] tag)
use @LoadAutomationEventList[_AutomationEventList](fileName: Pointer[U8] tag)
use @UnloadAutomationEventList[None](list: AutomationEventList)
use @ExportAutomationEventList[Bool](list: _AutomationEventList, fileName: Pointer[U8] tag)
use @SetAutomationEventList[None](list: AutomationEventList)
use @SetAutomationEventBaseFrame[None](frame: I32)
use @StartAutomationEventRecording[None]()
use @StopAutomationEventRecording[None]()
use @PlayAutomationEvent[None](event: _AutomationEvent)
use @IsKeyPressed[Bool](key: I32)
use @IsKeyPressedRepeat[Bool](key: I32)
use @IsKeyDown[Bool](key: I32)
use @IsKeyReleased[Bool](key: I32)
use @IsKeyUp[Bool](key: I32)
use @GetKeyPressed[I32]()
use @GetCharPressed[I32]()
use @SetExitKey[None](key: I32)
use @IsGamepadAvailable[Bool](gamepad: I32)
use @GetGamepadName[Pointer[U8] tag](gamepad: I32)
use @IsGamepadButtonPressed[Bool](gamepad: I32, button: I32)
use @IsGamepadButtonDown[Bool](gamepad: I32, button: I32)
use @IsGamepadButtonReleased[Bool](gamepad: I32, button: I32)
use @IsGamepadButtonUp[Bool](gamepad: I32, button: I32)
use @GetGamepadButtonPressed[I32]()
use @GetGamepadAxisCount[I32](gamepad: I32)
use @GetGamepadAxisMovement[F32](gamepad: I32, axis: I32)
use @SetGamepadMappings[I32](mappings: Pointer[U8] tag)
use @IsMouseButtonPressed[Bool](button: I32)
use @IsMouseButtonDown[Bool](button: I32)
use @IsMouseButtonReleased[Bool](button: I32)
use @IsMouseButtonUp[Bool](button: I32)
use @GetMouseX[I32]()
use @GetMouseY[I32]()
use @GetMousePosition[_Vector2]()
use @GetMouseDelta[_Vector2]()
use @SetMousePosition[None](x: I32, y: I32)
use @SetMouseOffset[None](offsetX: I32, offsetY: I32)
use @SetMouseScale[None](scaleX: F32, scaleY: F32)
use @GetMouseWheelMove[F32]()
use @GetMouseWheelMoveV[_Vector2]()
use @SetMouseCursor[None](cursor: I32)
use @GetTouchX[I32]()
use @GetTouchY[I32]()
use @GetTouchPosition[_Vector2](index: I32)
use @GetTouchPointId[I32](index: I32)
use @GetTouchPointCount[I32]()
use @SetGesturesEnabled[None](flags: U32)
use @IsGestureDetected[Bool](gesture: U32)
use @GetGestureDetected[I32]()
use @GetGestureHoldDuration[F32]()
use @GetGestureDragVector[_Vector2]()
use @GetGestureDragAngle[F32]()
use @GetGesturePinchVector[_Vector2]()
use @GetGesturePinchAngle[F32]()
use @UpdateCamera[None](camera: Camera, mode: I32)
use @UpdateCameraPro[None](camera: Camera, movement: _Vector3, rotation: _Vector3, zoom: F32)
use @SetShapesTexture[None](texture: _Texture2D, source: _Rectangle)
use @DrawPixel[None](posX: I32, posY: I32, color: _Color)
use @DrawPixelV[None](position: _Vector2, color: _Color)
use @DrawLine[None](startPosX: I32, startPosY: I32, endPosX: I32, endPosY: I32, color: _Color)
use @DrawLineV[None](startPos: _Vector2, endPos: _Vector2, color: _Color)
use @DrawLineEx[None](startPos: _Vector2, endPos: _Vector2, thick: F32, color: _Color)
use @DrawLineStrip[None](points: Pointer[Vector2] tag, pointCount: I32, color: _Color)
use @DrawLineBezier[None](startPos: _Vector2, endPos: _Vector2, thick: F32, color: _Color)
use @DrawCircle[None](centerX: I32, centerY: I32, radius: F32, color: _Color)
use @DrawCircleSector[None](center: _Vector2, radius: F32, startAngle: F32, endAngle: F32, segments: I32, color: _Color)
use @DrawCircleSectorLines[None](center: _Vector2, radius: F32, startAngle: F32, endAngle: F32, segments: I32, color: _Color)
use @DrawCircleGradient[None](centerX: I32, centerY: I32, radius: F32, color1: _Color, color2: _Color)
use @DrawCircleV[None](center: _Vector2, radius: F32, color: _Color)
use @DrawCircleLines[None](centerX: I32, centerY: I32, radius: F32, color: _Color)
use @DrawCircleLinesV[None](center: _Vector2, radius: F32, color: _Color)
use @DrawEllipse[None](centerX: I32, centerY: I32, radiusH: F32, radiusV: F32, color: _Color)
use @DrawEllipseLines[None](centerX: I32, centerY: I32, radiusH: F32, radiusV: F32, color: _Color)
use @DrawRing[None](center: _Vector2, innerRadius: F32, outerRadius: F32, startAngle: F32, endAngle: F32, segments: I32, color: _Color)
use @DrawRingLines[None](center: _Vector2, innerRadius: F32, outerRadius: F32, startAngle: F32, endAngle: F32, segments: I32, color: _Color)
use @DrawRectangle[None](posX: I32, posY: I32, width: I32, height: I32, color: _Color)
use @DrawRectangleV[None](position: _Vector2, size: _Vector2, color: _Color)
use @DrawRectangleRec[None](rec: _Rectangle, color: _Color)
use @DrawRectanglePro[None](rec: _Rectangle, origin: _Vector2, rotation: F32, color: _Color)
use @DrawRectangleGradientV[None](posX: I32, posY: I32, width: I32, height: I32, color1: _Color, color2: _Color)
use @DrawRectangleGradientH[None](posX: I32, posY: I32, width: I32, height: I32, color1: _Color, color2: _Color)
use @DrawRectangleGradientEx[None](rec: _Rectangle, col1: _Color, col2: _Color, col3: _Color, col4: _Color)
use @DrawRectangleLines[None](posX: I32, posY: I32, width: I32, height: I32, color: _Color)
use @DrawRectangleLinesEx[None](rec: _Rectangle, lineThick: F32, color: _Color)
use @DrawRectangleRounded[None](rec: _Rectangle, roundness: F32, segments: I32, color: _Color)
use @DrawRectangleRoundedLines[None](rec: _Rectangle, roundness: F32, segments: I32, lineThick: F32, color: _Color)
use @DrawTriangle[None](v1: _Vector2, v2: _Vector2, v3: _Vector2, color: _Color)
use @DrawTriangleLines[None](v1: _Vector2, v2: _Vector2, v3: _Vector2, color: _Color)
use @DrawTriangleFan[None](points: Pointer[Vector2] tag, pointCount: I32, color: _Color)
use @DrawTriangleStrip[None](points: Pointer[Vector2] tag, pointCount: I32, color: _Color)
use @DrawPoly[None](center: _Vector2, sides: I32, radius: F32, rotation: F32, color: _Color)
use @DrawPolyLines[None](center: _Vector2, sides: I32, radius: F32, rotation: F32, color: _Color)
use @DrawPolyLinesEx[None](center: _Vector2, sides: I32, radius: F32, rotation: F32, lineThick: F32, color: _Color)
use @DrawSplineLinear[None](points: Pointer[Vector2] tag, pointCount: I32, thick: F32, color: _Color)
use @DrawSplineBasis[None](points: Pointer[Vector2] tag, pointCount: I32, thick: F32, color: _Color)
use @DrawSplineCatmullRom[None](points: Pointer[Vector2] tag, pointCount: I32, thick: F32, color: _Color)
use @DrawSplineBezierQuadratic[None](points: Pointer[Vector2] tag, pointCount: I32, thick: F32, color: _Color)
use @DrawSplineBezierCubic[None](points: Pointer[Vector2] tag, pointCount: I32, thick: F32, color: _Color)
use @DrawSplineSegmentLinear[None](p1: _Vector2, p2: _Vector2, thick: F32, color: _Color)
use @DrawSplineSegmentBasis[None](p1: _Vector2, p2: _Vector2, p3: _Vector2, p4: _Vector2, thick: F32, color: _Color)
use @DrawSplineSegmentCatmullRom[None](p1: _Vector2, p2: _Vector2, p3: _Vector2, p4: _Vector2, thick: F32, color: _Color)
use @DrawSplineSegmentBezierQuadratic[None](p1: _Vector2, c2: _Vector2, p3: _Vector2, thick: F32, color: _Color)
use @DrawSplineSegmentBezierCubic[None](p1: _Vector2, c2: _Vector2, c3: _Vector2, p4: _Vector2, thick: F32, color: _Color)
use @GetSplinePointLinear[_Vector2](startPos: _Vector2, endPos: _Vector2, t: F32)
use @GetSplinePointBasis[_Vector2](p1: _Vector2, p2: _Vector2, p3: _Vector2, p4: _Vector2, t: F32)
use @GetSplinePointCatmullRom[_Vector2](p1: _Vector2, p2: _Vector2, p3: _Vector2, p4: _Vector2, t: F32)
use @GetSplinePointBezierQuad[_Vector2](p1: _Vector2, c2: _Vector2, p3: _Vector2, t: F32)
use @GetSplinePointBezierCubic[_Vector2](p1: _Vector2, c2: _Vector2, c3: _Vector2, p4: _Vector2, t: F32)
use @CheckCollisionRecs[Bool](rec1: _Rectangle, rec2: _Rectangle)
use @CheckCollisionCircles[Bool](center1: _Vector2, radius1: F32, center2: _Vector2, radius2: F32)
use @CheckCollisionCircleRec[Bool](center: _Vector2, radius: F32, rec: _Rectangle)
use @CheckCollisionPointRec[Bool](point: _Vector2, rec: _Rectangle)
use @CheckCollisionPointCircle[Bool](point: _Vector2, center: _Vector2, radius: F32)
use @CheckCollisionPointTriangle[Bool](point: _Vector2, p1: _Vector2, p2: _Vector2, p3: _Vector2)
use @CheckCollisionPointPoly[Bool](point: _Vector2, points: Pointer[Vector2] tag, pointCount: I32)
use @CheckCollisionLines[Bool](startPos1: _Vector2, endPos1: _Vector2, startPos2: _Vector2, endPos2: _Vector2, collisionPoint: Vector2)
use @CheckCollisionPointLine[Bool](point: _Vector2, p1: _Vector2, p2: _Vector2, threshold: I32)
use @GetCollisionRec[_Rectangle](rec1: _Rectangle, rec2: _Rectangle)
use @LoadImage[_Image](fileName: Pointer[U8] tag)
use @LoadImageRaw[_Image](fileName: Pointer[U8] tag, width: I32, height: I32, format: I32, headerSize: I32)
use @LoadImageSvg[_Image](fileNameOrString: Pointer[U8] tag, width: I32, height: I32)
use @LoadImageAnim[_Image](fileName: Pointer[U8] tag, frames: Pointer[I32] tag)
use @LoadImageFromMemory[_Image](fileType: Pointer[U8] tag, fileData: Pointer[U8] tag, dataSize: I32)
use @LoadImageFromTexture[_Image](texture: _Texture2D)
use @LoadImageFromScreen[_Image]()
use @IsImageReady[Bool](image: _Image)
use @UnloadImage[None](image: _Image)
use @ExportImage[Bool](image: _Image, fileName: Pointer[U8] tag)
use @ExportImageToMemory[Pointer[U8] tag](image: _Image, fileType: Pointer[U8] tag, fileSize: Pointer[I32] tag)
use @ExportImageAsCode[Bool](image: _Image, fileName: Pointer[U8] tag)
use @GenImageColor[_Image](width: I32, height: I32, color: _Color)
use @GenImageGradientLinear[_Image](width: I32, height: I32, direction: I32, start: _Color, end': _Color)
use @GenImageGradientRadial[_Image](width: I32, height: I32, density: F32, inner: _Color, outer: _Color)
use @GenImageGradientSquare[_Image](width: I32, height: I32, density: F32, inner: _Color, outer: _Color)
use @GenImageChecked[_Image](width: I32, height: I32, checksX: I32, checksY: I32, col1: _Color, col2: _Color)
use @GenImageWhiteNoise[_Image](width: I32, height: I32, factor: F32)
use @GenImagePerlinNoise[_Image](width: I32, height: I32, offsetX: I32, offsetY: I32, scale: F32)
use @GenImageCellular[_Image](width: I32, height: I32, tileSize: I32)
use @GenImageText[_Image](width: I32, height: I32, text: Pointer[U8] tag)
use @ImageCopy[_Image](image: _Image)
use @ImageFromImage[_Image](image: _Image, rec: _Rectangle)
use @ImageText[_Image](text: Pointer[U8] tag, fontSize: I32, color: _Color)
use @ImageTextEx[_Image](font: _Font, text: Pointer[U8] tag, fontSize: F32, spacing: F32, tint: _Color)
use @ImageFormat[None](image: Image, newFormat: I32)
use @ImageToPOT[None](image: Image, fill: _Color)
use @ImageCrop[None](image: Image, crop: _Rectangle)
use @ImageAlphaCrop[None](image: Image, threshold: F32)
use @ImageAlphaClear[None](image: Image, color: _Color, threshold: F32)
use @ImageAlphaMask[None](image: Image, alphaMask: _Image)
use @ImageAlphaPremultiply[None](image: Image)
use @ImageBlurGaussian[None](image: Image, blurSize: I32)
use @ImageKernelConvolution[None](image: Image, kernel: Pointer[F32] tag, kernelSize: I32)
use @ImageResize[None](image: Image, newWidth: I32, newHeight: I32)
use @ImageResizeNN[None](image: Image, newWidth: I32, newHeight: I32)
use @ImageResizeCanvas[None](image: Image, newWidth: I32, newHeight: I32, offsetX: I32, offsetY: I32, fill: _Color)
use @ImageMipmaps[None](image: Image)
use @ImageDither[None](image: Image, rBpp: I32, gBpp: I32, bBpp: I32, aBpp: I32)
use @ImageFlipVertical[None](image: Image)
use @ImageFlipHorizontal[None](image: Image)
use @ImageRotate[None](image: Image, degrees: I32)
use @ImageRotateCW[None](image: Image)
use @ImageRotateCCW[None](image: Image)
use @ImageColorTint[None](image: Image, color: _Color)
use @ImageColorInvert[None](image: Image)
use @ImageColorGrayscale[None](image: Image)
use @ImageColorContrast[None](image: Image, contrast: F32)
use @ImageColorBrightness[None](image: Image, brightness: I32)
use @ImageColorReplace[None](image: Image, color: _Color, replace: _Color)
use @LoadImageColors[_Color](image: _Image)
use @LoadImagePalette[_Color](image: _Image, maxPaletteSize: I32, colorCount: Pointer[I32] tag)
use @UnloadImageColors[None](colors: Color)
use @UnloadImagePalette[None](colors: Color)
use @GetImageAlphaBorder[_Rectangle](image: _Image, threshold: F32)
use @GetImageColor[_Color](image: _Image, x: I32, y: I32)
use @ImageClearBackground[None](dst: Image, color: _Color)
use @ImageDrawPixel[None](dst: Image, posX: I32, posY: I32, color: _Color)
use @ImageDrawPixelV[None](dst: Image, position: _Vector2, color: _Color)
use @ImageDrawLine[None](dst: Image, startPosX: I32, startPosY: I32, endPosX: I32, endPosY: I32, color: _Color)
use @ImageDrawLineV[None](dst: Image, start: _Vector2, end': _Vector2, color: _Color)
use @ImageDrawCircle[None](dst: Image, centerX: I32, centerY: I32, radius: I32, color: _Color)
use @ImageDrawCircleV[None](dst: Image, center: _Vector2, radius: I32, color: _Color)
use @ImageDrawCircleLines[None](dst: Image, centerX: I32, centerY: I32, radius: I32, color: _Color)
use @ImageDrawCircleLinesV[None](dst: Image, center: _Vector2, radius: I32, color: _Color)
use @ImageDrawRectangle[None](dst: Image, posX: I32, posY: I32, width: I32, height: I32, color: _Color)
use @ImageDrawRectangleV[None](dst: Image, position: _Vector2, size: _Vector2, color: _Color)
use @ImageDrawRectangleRec[None](dst: Image, rec: _Rectangle, color: _Color)
use @ImageDrawRectangleLines[None](dst: Image, rec: _Rectangle, thick: I32, color: _Color)
use @ImageDraw[None](dst: Image, src: _Image, srcRec: _Rectangle, dstRec: _Rectangle, tint: _Color)
use @ImageDrawText[None](dst: Image, text: Pointer[U8] tag, posX: I32, posY: I32, fontSize: I32, color: _Color)
use @ImageDrawTextEx[None](dst: Image, font: _Font, text: Pointer[U8] tag, position: _Vector2, fontSize: F32, spacing: F32, tint: _Color)
use @LoadTexture[_Texture2D](fileName: Pointer[U8] tag)
use @LoadTextureFromImage[_Texture2D](image: _Image)
use @LoadTextureCubemap[_TextureCubemap](image: _Image, layout: I32)
use @LoadRenderTexture[_RenderTexture2D](width: I32, height: I32)
use @IsTextureReady[Bool](texture: _Texture2D)
use @UnloadTexture[None](texture: _Texture2D)
use @IsRenderTextureReady[Bool](target: _RenderTexture2D)
use @UnloadRenderTexture[None](target: _RenderTexture2D)
use @UpdateTexture[None](texture: _Texture2D, pixels: Pointer[None] tag)
use @UpdateTextureRec[None](texture: _Texture2D, rec: _Rectangle, pixels: Pointer[None] tag)
use @GenTextureMipmaps[None](texture: Texture2D)
use @SetTextureFilter[None](texture: _Texture2D, filter: I32)
use @SetTextureWrap[None](texture: _Texture2D, wrap: I32)
use @DrawTexture[None](texture: _Texture2D, posX: I32, posY: I32, tint: _Color)
use @DrawTextureV[None](texture: _Texture2D, position: _Vector2, tint: _Color)
use @DrawTextureEx[None](texture: _Texture2D, position: _Vector2, rotation: F32, scale: F32, tint: _Color)
use @DrawTextureRec[None](texture: _Texture2D, source: _Rectangle, position: _Vector2, tint: _Color)
use @DrawTexturePro[None](texture: _Texture2D, source: _Rectangle, dest: _Rectangle, origin: _Vector2, rotation: F32, tint: _Color)
use @DrawTextureNPatch[None](texture: _Texture2D, nPatchInfo: _NPatchInfo, dest: _Rectangle, origin: _Vector2, rotation: F32, tint: _Color)
use @Fade[_Color](color: _Color, alpha: F32)
use @ColorToInt[I32](color: _Color)
use @ColorNormalize[_Vector4](color: _Color)
use @ColorFromNormalized[_Color](normalized: _Vector4)
use @ColorToHSV[_Vector3](color: _Color)
use @ColorFromHSV[_Color](hue: F32, saturation: F32, value: F32)
use @ColorTint[_Color](color: _Color, tint: _Color)
use @ColorBrightness[_Color](color: _Color, factor: F32)
use @ColorContrast[_Color](color: _Color, contrast: F32)
use @ColorAlpha[_Color](color: _Color, alpha: F32)
use @ColorAlphaBlend[_Color](dst: _Color, src: _Color, tint: _Color)
use @GetColor[_Color](hexValue: U32)
use @GetPixelColor[_Color](srcPtr: Pointer[None] tag, format: I32)
use @SetPixelColor[None](dstPtr: Pointer[None] tag, color: _Color, format: I32)
use @GetPixelDataSize[I32](width: I32, height: I32, format: I32)
use @GetFontDefault[_Font]()
use @LoadFont[_Font](fileName: Pointer[U8] tag)
use @LoadFontEx[_Font](fileName: Pointer[U8] tag, fontSize: I32, codepoints: Pointer[I32] tag, codepointCount: I32)
use @LoadFontFromImage[_Font](image: _Image, key: _Color, firstChar: I32)
use @LoadFontFromMemory[_Font](fileType: Pointer[U8] tag, fileData: Pointer[U8] tag, dataSize: I32, fontSize: I32, codepoints: Pointer[I32] tag, codepointCount: I32)
use @IsFontReady[Bool](font: _Font)
use @LoadFontData[_GlyphInfo](fileData: Pointer[U8] tag, dataSize: I32, fontSize: I32, codepoints: Pointer[I32] tag, codepointCount: I32, type': I32)
use @GenImageFontAtlas[_Image](glyphs: GlyphInfo, glyphRecs: Pointer[Pointer[Rectangle] tag] tag, glyphCount: I32, fontSize: I32, padding: I32, packMethod: I32)
use @UnloadFontData[None](glyphs: GlyphInfo, glyphCount: I32)
use @UnloadFont[None](font: _Font)
use @ExportFontAsCode[Bool](font: _Font, fileName: Pointer[U8] tag)
use @DrawFPS[None](posX: I32, posY: I32)
use @DrawText[None](text: Pointer[U8] tag, posX: I32, posY: I32, fontSize: I32, color: _Color)
use @DrawTextEx[None](font: _Font, text: Pointer[U8] tag, position: _Vector2, fontSize: F32, spacing: F32, tint: _Color)
use @DrawTextPro[None](font: _Font, text: Pointer[U8] tag, position: _Vector2, origin: _Vector2, rotation: F32, fontSize: F32, spacing: F32, tint: _Color)
use @DrawTextCodepoint[None](font: _Font, codepoint: I32, position: _Vector2, fontSize: F32, tint: _Color)
use @DrawTextCodepoints[None](font: _Font, codepoints: Pointer[I32] tag, codepointCount: I32, position: _Vector2, fontSize: F32, spacing: F32, tint: _Color)
use @SetTextLineSpacing[None](spacing: I32)
use @MeasureText[I32](text: Pointer[U8] tag, fontSize: I32)
use @MeasureTextEx[_Vector2](font: _Font, text: Pointer[U8] tag, fontSize: F32, spacing: F32)
use @GetGlyphIndex[I32](font: _Font, codepoint: I32)
use @GetGlyphInfo[_GlyphInfo](font: _Font, codepoint: I32)
use @GetGlyphAtlasRec[_Rectangle](font: _Font, codepoint: I32)
use @LoadUTF8[Pointer[U8] tag](codepoints: Pointer[I32] tag, length: I32)
use @UnloadUTF8[None](text: Pointer[U8] tag)
use @LoadCodepoints[Pointer[I32] tag](text: Pointer[U8] tag, count: Pointer[I32] tag)
use @UnloadCodepoints[None](codepoints: Pointer[I32] tag)
use @GetCodepointCount[I32](text: Pointer[U8] tag)
use @GetCodepoint[I32](text: Pointer[U8] tag, codepointSize: Pointer[I32] tag)
use @GetCodepointNext[I32](text: Pointer[U8] tag, codepointSize: Pointer[I32] tag)
use @GetCodepointPrevious[I32](text: Pointer[U8] tag, codepointSize: Pointer[I32] tag)
use @CodepointToUTF8[Pointer[U8] tag](codepoint: I32, utf8Size: Pointer[I32] tag)
use @TextCopy[I32](dst: Pointer[U8] tag, src: Pointer[U8] tag)
use @TextIsEqual[Bool](text1: Pointer[U8] tag, text2: Pointer[U8] tag)
use @TextLength[U32](text: Pointer[U8] tag)
use @TextFormat[Pointer[U8] tag](text: Pointer[U8] tag, ...)
use @TextSubtext[Pointer[U8] tag](text: Pointer[U8] tag, position: I32, length: I32)
use @TextReplace[Pointer[U8] tag](text: Pointer[U8] tag, replace: Pointer[U8] tag, by: Pointer[U8] tag)
use @TextInsert[Pointer[U8] tag](text: Pointer[U8] tag, insert: Pointer[U8] tag, position: I32)
use @TextJoin[Pointer[U8] tag](textList: Pointer[Pointer[U8] tag] tag, count: I32, delimiter: Pointer[U8] tag)
use @TextSplit[Pointer[Pointer[U8] tag] tag](text: Pointer[U8] tag, delimiter: U8, count: Pointer[I32] tag)
use @TextAppend[None](text: Pointer[U8] tag, append: Pointer[U8] tag, position: Pointer[I32] tag)
use @TextFindIndex[I32](text: Pointer[U8] tag, find: Pointer[U8] tag)
use @TextToUpper[Pointer[U8] tag](text: Pointer[U8] tag)
use @TextToLower[Pointer[U8] tag](text: Pointer[U8] tag)
use @TextToPascal[Pointer[U8] tag](text: Pointer[U8] tag)
use @TextToInteger[I32](text: Pointer[U8] tag)
use @DrawLine3D[None](startPos: _Vector3, endPos: _Vector3, color: _Color)
use @DrawPoint3D[None](position: _Vector3, color: _Color)
use @DrawCircle3D[None](center: _Vector3, radius: F32, rotationAxis: _Vector3, rotationAngle: F32, color: _Color)
use @DrawTriangle3D[None](v1: _Vector3, v2: _Vector3, v3: _Vector3, color: _Color)
use @DrawTriangleStrip3D[None](points: Pointer[Vector3] tag, pointCount: I32, color: _Color)
use @DrawCube[None](position: _Vector3, width: F32, height: F32, length: F32, color: _Color)
use @DrawCubeV[None](position: _Vector3, size: _Vector3, color: _Color)
use @DrawCubeWires[None](position: _Vector3, width: F32, height: F32, length: F32, color: _Color)
use @DrawCubeWiresV[None](position: _Vector3, size: _Vector3, color: _Color)
use @DrawSphere[None](centerPos: _Vector3, radius: F32, color: _Color)
use @DrawSphereEx[None](centerPos: _Vector3, radius: F32, rings: I32, slices: I32, color: _Color)
use @DrawSphereWires[None](centerPos: _Vector3, radius: F32, rings: I32, slices: I32, color: _Color)
use @DrawCylinder[None](position: _Vector3, radiusTop: F32, radiusBottom: F32, height: F32, slices: I32, color: _Color)
use @DrawCylinderEx[None](startPos: _Vector3, endPos: _Vector3, startRadius: F32, endRadius: F32, sides: I32, color: _Color)
use @DrawCylinderWires[None](position: _Vector3, radiusTop: F32, radiusBottom: F32, height: F32, slices: I32, color: _Color)
use @DrawCylinderWiresEx[None](startPos: _Vector3, endPos: _Vector3, startRadius: F32, endRadius: F32, sides: I32, color: _Color)
use @DrawCapsule[None](startPos: _Vector3, endPos: _Vector3, radius: F32, slices: I32, rings: I32, color: _Color)
use @DrawCapsuleWires[None](startPos: _Vector3, endPos: _Vector3, radius: F32, slices: I32, rings: I32, color: _Color)
use @DrawPlane[None](centerPos: _Vector3, size: _Vector2, color: _Color)
use @DrawRay[None](ray: _Ray, color: _Color)
use @DrawGrid[None](slices: I32, spacing: F32)
use @LoadModel[_Model](fileName: Pointer[U8] tag)
use @LoadModelFromMesh[_Model](mesh: _Mesh)
use @IsModelReady[Bool](model: _Model)
use @UnloadModel[None](model: _Model)
use @GetModelBoundingBox[_BoundingBox](model: _Model)
use @DrawModel[None](model: _Model, position: _Vector3, scale: F32, tint: _Color)
use @DrawModelEx[None](model: _Model, position: _Vector3, rotationAxis: _Vector3, rotationAngle: F32, scale: _Vector3, tint: _Color)
use @DrawModelWires[None](model: _Model, position: _Vector3, scale: F32, tint: _Color)
use @DrawModelWiresEx[None](model: _Model, position: _Vector3, rotationAxis: _Vector3, rotationAngle: F32, scale: _Vector3, tint: _Color)
use @DrawBoundingBox[None](box': _BoundingBox, color: _Color)
use @DrawBillboard[None](camera: _Camera, texture: _Texture2D, position: _Vector3, size: F32, tint: _Color)
use @DrawBillboardRec[None](camera: _Camera, texture: _Texture2D, source: _Rectangle, position: _Vector3, size: _Vector2, tint: _Color)
use @DrawBillboardPro[None](camera: _Camera, texture: _Texture2D, source: _Rectangle, position: _Vector3, up: _Vector3, size: _Vector2, origin: _Vector2, rotation: F32, tint: _Color)
use @UploadMesh[None](mesh: Mesh, dynamic: Bool)
use @UpdateMeshBuffer[None](mesh: _Mesh, index: I32, data: Pointer[None] tag, dataSize: I32, offset: I32)
use @UnloadMesh[None](mesh: _Mesh)
use @DrawMesh[None](mesh: _Mesh, material: _Material, transform: _Matrix)
use @DrawMeshInstanced[None](mesh: _Mesh, material: _Material, transforms: Matrix, instances: I32)
use @ExportMesh[Bool](mesh: _Mesh, fileName: Pointer[U8] tag)
use @GetMeshBoundingBox[_BoundingBox](mesh: _Mesh)
use @GenMeshTangents[None](mesh: Mesh)
use @GenMeshPoly[_Mesh](sides: I32, radius: F32)
use @GenMeshPlane[_Mesh](width: F32, length: F32, resX: I32, resZ: I32)
use @GenMeshCube[_Mesh](width: F32, height: F32, length: F32)
use @GenMeshSphere[_Mesh](radius: F32, rings: I32, slices: I32)
use @GenMeshHemiSphere[_Mesh](radius: F32, rings: I32, slices: I32)
use @GenMeshCylinder[_Mesh](radius: F32, height: F32, slices: I32)
use @GenMeshCone[_Mesh](radius: F32, height: F32, slices: I32)
use @GenMeshTorus[_Mesh](radius: F32, size: F32, radSeg: I32, sides: I32)
use @GenMeshKnot[_Mesh](radius: F32, size: F32, radSeg: I32, sides: I32)
use @GenMeshHeightmap[_Mesh](heightmap: _Image, size: _Vector3)
use @GenMeshCubicmap[_Mesh](cubicmap: _Image, cubeSize: _Vector3)
use @LoadMaterials[_Material](fileName: Pointer[U8] tag, materialCount: Pointer[I32] tag)
use @LoadMaterialDefault[_Material]()
use @IsMaterialReady[Bool](material: _Material)
use @UnloadMaterial[None](material: _Material)
use @SetMaterialTexture[None](material: Material, mapType: I32, texture: _Texture2D)
use @SetModelMeshMaterial[None](model: Model, meshId: I32, materialId: I32)
use @LoadModelAnimations[_ModelAnimation](fileName: Pointer[U8] tag, animCount: Pointer[I32] tag)
use @UpdateModelAnimation[None](model: _Model, anim: _ModelAnimation, frame: I32)
use @UnloadModelAnimation[None](anim: _ModelAnimation)
use @UnloadModelAnimations[None](animations: Pointer[ModelAnimation] tag, animCount: I32)
use @IsModelAnimationValid[Bool](model: _Model, anim: _ModelAnimation)
use @CheckCollisionSpheres[Bool](center1: _Vector3, radius1: F32, center2: _Vector3, radius2: F32)
use @CheckCollisionBoxes[Bool](box1: _BoundingBox, box2: _BoundingBox)
use @CheckCollisionBoxSphere[Bool](box': _BoundingBox, center: _Vector3, radius: F32)
use @GetRayCollisionSphere[_RayCollision](ray: _Ray, center: _Vector3, radius: F32)
use @GetRayCollisionBox[_RayCollision](ray: _Ray, box': _BoundingBox)
use @GetRayCollisionMesh[_RayCollision](ray: _Ray, mesh: _Mesh, transform: _Matrix)
use @GetRayCollisionTriangle[_RayCollision](ray: _Ray, p1: _Vector3, p2: _Vector3, p3: _Vector3)
use @GetRayCollisionQuad[_RayCollision](ray: _Ray, p1: _Vector3, p2: _Vector3, p3: _Vector3, p4: _Vector3)
use @InitAudioDevice[None]()
use @CloseAudioDevice[None]()
use @IsAudioDeviceReady[Bool]()
use @SetMasterVolume[None](volume: F32)
use @GetMasterVolume[F32]()
use @LoadWave[_Wave](fileName: Pointer[U8] tag)
use @LoadWaveFromMemory[_Wave](fileType: Pointer[U8] tag, fileData: Pointer[U8] tag, dataSize: I32)
use @IsWaveReady[Bool](wave: _Wave)
use @LoadSound[_Sound](fileName: Pointer[U8] tag)
use @LoadSoundFromWave[_Sound](wave: _Wave)
use @LoadSoundAlias[_Sound](source: _Sound)
use @IsSoundReady[Bool](sound: _Sound)
use @UpdateSound[None](sound: _Sound, data: Pointer[None] tag, sampleCount: I32)
use @UnloadWave[None](wave: _Wave)
use @UnloadSound[None](sound: _Sound)
use @UnloadSoundAlias[None](alias: _Sound)
use @ExportWave[Bool](wave: _Wave, fileName: Pointer[U8] tag)
use @ExportWaveAsCode[Bool](wave: _Wave, fileName: Pointer[U8] tag)
use @PlaySound[None](sound: _Sound)
use @StopSound[None](sound: _Sound)
use @PauseSound[None](sound: _Sound)
use @ResumeSound[None](sound: _Sound)
use @IsSoundPlaying[Bool](sound: _Sound)
use @SetSoundVolume[None](sound: _Sound, volume: F32)
use @SetSoundPitch[None](sound: _Sound, pitch: F32)
use @SetSoundPan[None](sound: _Sound, pan: F32)
use @WaveCopy[_Wave](wave: _Wave)
use @WaveCrop[None](wave: Wave, initSample: I32, finalSample: I32)
use @WaveFormat[None](wave: Wave, sampleRate: I32, sampleSize: I32, channels: I32)
use @LoadWaveSamples[Pointer[F32] tag](wave: _Wave)
use @UnloadWaveSamples[None](samples: Pointer[F32] tag)
use @LoadMusicStream[_Music](fileName: Pointer[U8] tag)
use @LoadMusicStreamFromMemory[_Music](fileType: Pointer[U8] tag, data: Pointer[U8] tag, dataSize: I32)
use @IsMusicReady[Bool](music: _Music)
use @UnloadMusicStream[None](music: _Music)
use @PlayMusicStream[None](music: _Music)
use @IsMusicStreamPlaying[Bool](music: _Music)
use @UpdateMusicStream[None](music: _Music)
use @StopMusicStream[None](music: _Music)
use @PauseMusicStream[None](music: _Music)
use @ResumeMusicStream[None](music: _Music)
use @SeekMusicStream[None](music: _Music, position: F32)
use @SetMusicVolume[None](music: _Music, volume: F32)
use @SetMusicPitch[None](music: _Music, pitch: F32)
use @SetMusicPan[None](music: _Music, pan: F32)
use @GetMusicTimeLength[F32](music: _Music)
use @GetMusicTimePlayed[F32](music: _Music)
use @LoadAudioStream[_AudioStream](sampleRate: U32, sampleSize: U32, channels: U32)
use @IsAudioStreamReady[Bool](stream: _AudioStream)
use @UnloadAudioStream[None](stream: _AudioStream)
use @UpdateAudioStream[None](stream: _AudioStream, data: Pointer[None] tag, frameCount: I32)
use @IsAudioStreamProcessed[Bool](stream: _AudioStream)
use @PlayAudioStream[None](stream: _AudioStream)
use @PauseAudioStream[None](stream: _AudioStream)
use @ResumeAudioStream[None](stream: _AudioStream)
use @IsAudioStreamPlaying[Bool](stream: _AudioStream)
use @StopAudioStream[None](stream: _AudioStream)
use @SetAudioStreamVolume[None](stream: _AudioStream, volume: F32)
use @SetAudioStreamPitch[None](stream: _AudioStream, pitch: F32)
use @SetAudioStreamPan[None](stream: _AudioStream, pan: F32)
use @SetAudioStreamBufferSizeDefault[None](size: I32)
use @SetAudioStreamCallback[None](stream: _AudioStream, callback: AudioCallback)
use @AttachAudioStreamProcessor[None](stream: _AudioStream, processor: AudioCallback)
use @DetachAudioStreamProcessor[None](stream: _AudioStream, processor: AudioCallback)
use @AttachAudioMixedProcessor[None](processor: AudioCallback)
use @DetachAudioMixedProcessor[None](processor: AudioCallback)
use @deref_vector2[_Vector2](ptr: Vector2)
use @alloc_vector2[Vector2](value: _Vector2)
use @free_vector2[None](ptr: Vector2)
use @deref_vector3[_Vector3](ptr: Vector3)
use @alloc_vector3[Vector3](value: _Vector3)
use @free_vector3[None](ptr: Vector3)
use @deref_vector4[_Vector4](ptr: Vector4)
use @alloc_vector4[Vector4](value: _Vector4)
use @free_vector4[None](ptr: Vector4)
use @deref_matrix[_Matrix](ptr: Matrix)
use @alloc_matrix[Matrix](value: _Matrix)
use @free_matrix[None](ptr: Matrix)
use @deref_color[_Color](ptr: Color)
use @alloc_color[Color](value: _Color)
use @free_color[None](ptr: Color)
use @deref_rectangle[_Rectangle](ptr: Rectangle)
use @alloc_rectangle[Rectangle](value: _Rectangle)
use @free_rectangle[None](ptr: Rectangle)
use @deref_image[_Image](ptr: Image)
use @alloc_image[Image](value: _Image)
use @free_image[None](ptr: Image)
use @deref_texture[_Texture](ptr: Texture)
use @alloc_texture[Texture](value: _Texture)
use @free_texture[None](ptr: Texture)
use @deref_render_texture[_RenderTexture](ptr: RenderTexture)
use @alloc_render_texture[RenderTexture](value: _RenderTexture)
use @free_render_texture[None](ptr: RenderTexture)
use @deref_n_patch_info[_NPatchInfo](ptr: NPatchInfo)
use @alloc_n_patch_info[NPatchInfo](value: _NPatchInfo)
use @free_n_patch_info[None](ptr: NPatchInfo)
use @deref_glyph_info[_GlyphInfo](ptr: GlyphInfo)
use @alloc_glyph_info[GlyphInfo](value: _GlyphInfo)
use @free_glyph_info[None](ptr: GlyphInfo)
use @deref_font[_Font](ptr: Font)
use @alloc_font[Font](value: _Font)
use @free_font[None](ptr: Font)
use @deref_camera3_d[_Camera3D](ptr: Camera3D)
use @alloc_camera3_d[Camera3D](value: _Camera3D)
use @free_camera3_d[None](ptr: Camera3D)
use @deref_camera2_d[_Camera2D](ptr: Camera2D)
use @alloc_camera2_d[Camera2D](value: _Camera2D)
use @free_camera2_d[None](ptr: Camera2D)
use @deref_mesh[_Mesh](ptr: Mesh)
use @alloc_mesh[Mesh](value: _Mesh)
use @free_mesh[None](ptr: Mesh)
use @deref_shader[_Shader](ptr: Shader)
use @alloc_shader[Shader](value: _Shader)
use @free_shader[None](ptr: Shader)
use @deref_material_map[_MaterialMap](ptr: MaterialMap)
use @alloc_material_map[MaterialMap](value: _MaterialMap)
use @free_material_map[None](ptr: MaterialMap)
use @deref_material[_Material](ptr: Material)
use @alloc_material[Material](value: _Material)
use @free_material[None](ptr: Material)
use @deref_transform[_Transform](ptr: Transform)
use @alloc_transform[Transform](value: _Transform)
use @free_transform[None](ptr: Transform)
use @deref_bone_info[_BoneInfo](ptr: BoneInfo)
use @alloc_bone_info[BoneInfo](value: _BoneInfo)
use @free_bone_info[None](ptr: BoneInfo)
use @deref_model[_Model](ptr: Model)
use @alloc_model[Model](value: _Model)
use @free_model[None](ptr: Model)
use @deref_model_animation[_ModelAnimation](ptr: ModelAnimation)
use @alloc_model_animation[ModelAnimation](value: _ModelAnimation)
use @free_model_animation[None](ptr: ModelAnimation)
use @deref_ray[_Ray](ptr: Ray)
use @alloc_ray[Ray](value: _Ray)
use @free_ray[None](ptr: Ray)
use @deref_ray_collision[_RayCollision](ptr: RayCollision)
use @alloc_ray_collision[RayCollision](value: _RayCollision)
use @free_ray_collision[None](ptr: RayCollision)
use @deref_bounding_box[_BoundingBox](ptr: BoundingBox)
use @alloc_bounding_box[BoundingBox](value: _BoundingBox)
use @free_bounding_box[None](ptr: BoundingBox)
use @deref_wave[_Wave](ptr: Wave)
use @alloc_wave[Wave](value: _Wave)
use @free_wave[None](ptr: Wave)
use @deref_audio_stream[_AudioStream](ptr: AudioStream)
use @alloc_audio_stream[AudioStream](value: _AudioStream)
use @free_audio_stream[None](ptr: AudioStream)
use @deref_sound[_Sound](ptr: Sound)
use @alloc_sound[Sound](value: _Sound)
use @free_sound[None](ptr: Sound)
use @deref_music[_Music](ptr: Music)
use @alloc_music[Music](value: _Music)
use @free_music[None](ptr: Music)
use @deref_vr_device_info[_VrDeviceInfo](ptr: VrDeviceInfo)
use @alloc_vr_device_info[VrDeviceInfo](value: _VrDeviceInfo)
use @free_vr_device_info[None](ptr: VrDeviceInfo)
use @deref_vr_stereo_config[_VrStereoConfig](ptr: VrStereoConfig)
use @alloc_vr_stereo_config[VrStereoConfig](value: _VrStereoConfig)
use @free_vr_stereo_config[None](ptr: VrStereoConfig)
use @deref_file_path_list[_FilePathList](ptr: FilePathList)
use @alloc_file_path_list[FilePathList](value: _FilePathList)
use @free_file_path_list[None](ptr: FilePathList)
use @deref_automation_event[_AutomationEvent](ptr: AutomationEvent)
use @alloc_automation_event[AutomationEvent](value: _AutomationEvent)
use @free_automation_event[None](ptr: AutomationEvent)
use @deref_automation_event_list[_AutomationEventList](ptr: AutomationEventList)
use @alloc_automation_event_list[AutomationEventList](value: _AutomationEventList)
use @free_automation_event_list[None](ptr: AutomationEventList)
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

primitive _Vector2
struct Vector2
  let x: F32
  let y: F32

  new create(x': F32, y': F32) =>
    x = x'
    y = y'
primitive _Vector3
struct Vector3
  let x: F32
  let y: F32
  let z: F32

  new create(x': F32, y': F32, z': F32) =>
    x = x'
    y = y'
    z = z'
primitive _Vector4
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
primitive _Matrix
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
primitive _Color
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
primitive _Rectangle
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
primitive _Image
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
primitive _Texture
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
primitive _RenderTexture
struct RenderTexture
  let id: U32
  let texture: Texture
  let depth: Texture

  new create(id': U32, texture': Texture, depth': Texture) =>
    id = id'
    texture = texture'
    depth = depth'
primitive _NPatchInfo
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
primitive _GlyphInfo
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
primitive _Font
struct Font
  let base_size: I32
  let glyph_count: I32
  let glyph_padding: I32
  let texture: Texture2D
  let recs: Pointer[Rectangle] tag
  let glyphs: Pointer[GlyphInfo] tag

  new create(base_size': I32, glyph_count': I32, glyph_padding': I32, texture': Texture2D, recs': Pointer[Rectangle] tag, glyphs': Pointer[GlyphInfo] tag) =>
    base_size = base_size'
    glyph_count = glyph_count'
    glyph_padding = glyph_padding'
    texture = texture'
    recs = recs'
    glyphs = glyphs'
primitive _Mesh
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
primitive _MaterialMap
struct MaterialMap
  let texture: Texture2D
  let color: Color
  let value: F32

  new create(texture': Texture2D, color': Color, value': F32) =>
    texture = texture'
    color = color'
    value = value'
primitive _Material
struct Material
  let shader: Shader
  let maps: Pointer[MaterialMap] tag
  let params: Pointer[F32] tag

  new create(shader': Shader, maps': Pointer[MaterialMap] tag, params': Pointer[F32] tag) =>
    shader = shader'
    maps = maps'
    params = params'
primitive _Transform
struct Transform
  let translation: Vector3
  let rotation: Quaternion
  let scale: Vector3

  new create(translation': Vector3, rotation': Quaternion, scale': Vector3) =>
    translation = translation'
    rotation = rotation'
    scale = scale'
primitive _BoneInfo
struct BoneInfo
  let name: Pointer[U8] tag
  let parent: I32

  new create(name': Pointer[U8] tag, parent': I32) =>
    name = name'
    parent = parent'
primitive _Model
struct Model
  let transform: Matrix
  let mesh_count: I32
  let material_count: I32
  let meshes: Pointer[Mesh] tag
  let materials: Pointer[Material] tag
  let mesh_material: Pointer[I32] tag
  let bone_count: I32
  let bones: Pointer[BoneInfo] tag
  let bind_pose: Pointer[Transform] tag

  new create(transform': Matrix, mesh_count': I32, material_count': I32, meshes': Pointer[Mesh] tag, materials': Pointer[Material] tag, mesh_material': Pointer[I32] tag, bone_count': I32, bones': Pointer[BoneInfo] tag, bind_pose': Pointer[Transform] tag) =>
    transform = transform'
    mesh_count = mesh_count'
    material_count = material_count'
    meshes = meshes'
    materials = materials'
    mesh_material = mesh_material'
    bone_count = bone_count'
    bones = bones'
    bind_pose = bind_pose'
primitive _ModelAnimation
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
primitive _Ray
struct Ray
  let position: Vector3
  let direction: Vector3

  new create(position': Vector3, direction': Vector3) =>
    position = position'
    direction = direction'
primitive _RayCollision
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
primitive _BoundingBox
struct BoundingBox
  let min: Vector3
  let max: Vector3

  new create(min': Vector3, max': Vector3) =>
    min = min'
    max = max'
primitive _Wave
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
primitive _AudioStream
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
primitive _Sound
struct Sound
  let stream: AudioStream
  let frame_count: U32

  new create(stream': AudioStream, frame_count': U32) =>
    stream = stream'
    frame_count = frame_count'
primitive _Music
struct Music
  let stream: AudioStream
  let frame_count: U32
  let looping: Bool
  let ctx_type: I32
  let ctx_data: Pointer[None] tag

  new create(stream': AudioStream, frame_count': U32, looping': Bool, ctx_type': I32, ctx_data': Pointer[None] tag) =>
    stream = stream'
    frame_count = frame_count'
    looping = looping'
    ctx_type = ctx_type'
    ctx_data = ctx_data'
primitive _VrDeviceInfo
struct VrDeviceInfo
  let h_resolution: I32
  let v_resolution: I32
  let h_screen_size: F32
  let v_screen_size: F32
  let v_screen_center: F32
  let eye_to_screen_distance: F32
  let lens_separation_distance: F32
  let interpupillary_distance: F32
  let lens_distortion_values: Pointer[F32] tag
  let chroma_ab_correction: Pointer[F32] tag

  new create(h_resolution': I32, v_resolution': I32, h_screen_size': F32, v_screen_size': F32, v_screen_center': F32, eye_to_screen_distance': F32, lens_separation_distance': F32, interpupillary_distance': F32, lens_distortion_values': Pointer[F32] tag, chroma_ab_correction': Pointer[F32] tag) =>
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
primitive _VrStereoConfig
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
primitive _FilePathList
struct FilePathList
  let capacity: U32
  let count: U32
  let paths: Pointer[Pointer[U8] tag] tag

  new create(capacity': U32, count': U32, paths': Pointer[Pointer[U8] tag] tag) =>
    capacity = capacity'
    count = count'
    paths = paths'
primitive _AutomationEvent
struct AutomationEvent
  let frame: U32
  let type': U32
  let params: Pointer[I32] tag

  new create(frame': U32, type'': U32, params': Pointer[I32] tag) =>
    frame = frame'
    type' = type''
    params = params'
primitive _AutomationEventList
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
type _Quaternion is _Vector4
type Texture2D is Texture
type _Texture2D is _Texture
type TextureCubemap is Texture
type _TextureCubemap is _Texture
type RenderTexture2D is RenderTexture
type _RenderTexture2D is _RenderTexture
type Camera is Camera3D
type _Camera is _Camera3D
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
