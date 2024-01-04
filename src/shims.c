#include <raylib.h>
#include <stdlib.h>
#include <pony.h>

void PonyInitWindow(int width, int height, const char * title) {
	InitWindow(width, height, title);
}
void PonyCloseWindow() {
	CloseWindow();
}
bool PonyWindowShouldClose() {
	bool result = WindowShouldClose();
	return result;
}
bool PonyIsWindowReady() {
	bool result = IsWindowReady();
	return result;
}
bool PonyIsWindowFullscreen() {
	bool result = IsWindowFullscreen();
	return result;
}
bool PonyIsWindowHidden() {
	bool result = IsWindowHidden();
	return result;
}
bool PonyIsWindowMinimized() {
	bool result = IsWindowMinimized();
	return result;
}
bool PonyIsWindowMaximized() {
	bool result = IsWindowMaximized();
	return result;
}
bool PonyIsWindowFocused() {
	bool result = IsWindowFocused();
	return result;
}
bool PonyIsWindowResized() {
	bool result = IsWindowResized();
	return result;
}
bool PonyIsWindowState(unsigned int flag) {
	bool result = IsWindowState(flag);
	return result;
}
void PonySetWindowState(unsigned int flags) {
	SetWindowState(flags);
}
void PonyClearWindowState(unsigned int flags) {
	ClearWindowState(flags);
}
void PonyToggleFullscreen() {
	ToggleFullscreen();
}
void PonyToggleBorderlessWindowed() {
	ToggleBorderlessWindowed();
}
void PonyMaximizeWindow() {
	MaximizeWindow();
}
void PonyMinimizeWindow() {
	MinimizeWindow();
}
void PonyRestoreWindow() {
	RestoreWindow();
}
void PonySetWindowIcon(Image* image) {
	SetWindowIcon(*image);
}
void PonySetWindowIcons(Image * images, int count) {
	SetWindowIcons(images, count);
}
void PonySetWindowTitle(const char * title) {
	SetWindowTitle(title);
}
void PonySetWindowPosition(int x, int y) {
	SetWindowPosition(x, y);
}
void PonySetWindowMonitor(int monitor) {
	SetWindowMonitor(monitor);
}
void PonySetWindowMinSize(int width, int height) {
	SetWindowMinSize(width, height);
}
void PonySetWindowMaxSize(int width, int height) {
	SetWindowMaxSize(width, height);
}
void PonySetWindowSize(int width, int height) {
	SetWindowSize(width, height);
}
void PonySetWindowOpacity(float opacity) {
	SetWindowOpacity(opacity);
}
void PonySetWindowFocused() {
	SetWindowFocused();
}
void * PonyGetWindowHandle() {
	void * result = GetWindowHandle();
	return result;
}
int PonyGetScreenWidth() {
	int result = GetScreenWidth();
	return result;
}
int PonyGetScreenHeight() {
	int result = GetScreenHeight();
	return result;
}
int PonyGetRenderWidth() {
	int result = GetRenderWidth();
	return result;
}
int PonyGetRenderHeight() {
	int result = GetRenderHeight();
	return result;
}
int PonyGetMonitorCount() {
	int result = GetMonitorCount();
	return result;
}
int PonyGetCurrentMonitor() {
	int result = GetCurrentMonitor();
	return result;
}
Vector2* PonyGetMonitorPosition(int monitor) {
	Vector2 result = GetMonitorPosition(monitor);
	pony_ctx_t* ctx = pony_ctx();
	Vector2* result_ptr = (Vector2*)pony_alloc(ctx, sizeof(Vector2));
	*result_ptr = result;
	return result_ptr;
}
int PonyGetMonitorWidth(int monitor) {
	int result = GetMonitorWidth(monitor);
	return result;
}
int PonyGetMonitorHeight(int monitor) {
	int result = GetMonitorHeight(monitor);
	return result;
}
int PonyGetMonitorPhysicalWidth(int monitor) {
	int result = GetMonitorPhysicalWidth(monitor);
	return result;
}
int PonyGetMonitorPhysicalHeight(int monitor) {
	int result = GetMonitorPhysicalHeight(monitor);
	return result;
}
int PonyGetMonitorRefreshRate(int monitor) {
	int result = GetMonitorRefreshRate(monitor);
	return result;
}
Vector2* PonyGetWindowPosition() {
	Vector2 result = GetWindowPosition();
	pony_ctx_t* ctx = pony_ctx();
	Vector2* result_ptr = (Vector2*)pony_alloc(ctx, sizeof(Vector2));
	*result_ptr = result;
	return result_ptr;
}
Vector2* PonyGetWindowScaleDPI() {
	Vector2 result = GetWindowScaleDPI();
	pony_ctx_t* ctx = pony_ctx();
	Vector2* result_ptr = (Vector2*)pony_alloc(ctx, sizeof(Vector2));
	*result_ptr = result;
	return result_ptr;
}
const char * PonyGetMonitorName(int monitor) {
	const char * result = GetMonitorName(monitor);
	return result;
}
void PonySetClipboardText(const char * text) {
	SetClipboardText(text);
}
const char * PonyGetClipboardText() {
	const char * result = GetClipboardText();
	return result;
}
void PonyEnableEventWaiting() {
	EnableEventWaiting();
}
void PonyDisableEventWaiting() {
	DisableEventWaiting();
}
void PonyShowCursor() {
	ShowCursor();
}
void PonyHideCursor() {
	HideCursor();
}
bool PonyIsCursorHidden() {
	bool result = IsCursorHidden();
	return result;
}
void PonyEnableCursor() {
	EnableCursor();
}
void PonyDisableCursor() {
	DisableCursor();
}
bool PonyIsCursorOnScreen() {
	bool result = IsCursorOnScreen();
	return result;
}
void PonyClearBackground(Color* color) {
	ClearBackground(*color);
}
void PonyBeginDrawing() {
	BeginDrawing();
}
void PonyEndDrawing() {
	EndDrawing();
}
void PonyBeginMode2D(Camera2D* camera) {
	BeginMode2D(*camera);
}
void PonyEndMode2D() {
	EndMode2D();
}
void PonyBeginMode3D(Camera3D* camera) {
	BeginMode3D(*camera);
}
void PonyEndMode3D() {
	EndMode3D();
}
void PonyBeginTextureMode(RenderTexture2D* target) {
	BeginTextureMode(*target);
}
void PonyEndTextureMode() {
	EndTextureMode();
}
void PonyBeginShaderMode(Shader* shader) {
	BeginShaderMode(*shader);
}
void PonyEndShaderMode() {
	EndShaderMode();
}
void PonyBeginBlendMode(int mode) {
	BeginBlendMode(mode);
}
void PonyEndBlendMode() {
	EndBlendMode();
}
void PonyBeginScissorMode(int x, int y, int width, int height) {
	BeginScissorMode(x, y, width, height);
}
void PonyEndScissorMode() {
	EndScissorMode();
}
void PonyBeginVrStereoMode(VrStereoConfig* config) {
	BeginVrStereoMode(*config);
}
void PonyEndVrStereoMode() {
	EndVrStereoMode();
}
VrStereoConfig* PonyLoadVrStereoConfig(VrDeviceInfo* device) {
	VrStereoConfig result = LoadVrStereoConfig(*device);
	pony_ctx_t* ctx = pony_ctx();
	VrStereoConfig* result_ptr = (VrStereoConfig*)pony_alloc(ctx, sizeof(VrStereoConfig));
	*result_ptr = result;
	return result_ptr;
}
void PonyUnloadVrStereoConfig(VrStereoConfig* config) {
	UnloadVrStereoConfig(*config);
}
Shader* PonyLoadShader(const char * vsFileName, const char * fsFileName) {
	Shader result = LoadShader(vsFileName, fsFileName);
	pony_ctx_t* ctx = pony_ctx();
	Shader* result_ptr = (Shader*)pony_alloc(ctx, sizeof(Shader));
	*result_ptr = result;
	return result_ptr;
}
Shader* PonyLoadShaderFromMemory(const char * vsCode, const char * fsCode) {
	Shader result = LoadShaderFromMemory(vsCode, fsCode);
	pony_ctx_t* ctx = pony_ctx();
	Shader* result_ptr = (Shader*)pony_alloc(ctx, sizeof(Shader));
	*result_ptr = result;
	return result_ptr;
}
bool PonyIsShaderReady(Shader* shader) {
	bool result = IsShaderReady(*shader);
	return result;
}
int PonyGetShaderLocation(Shader* shader, const char * uniformName) {
	int result = GetShaderLocation(*shader, uniformName);
	return result;
}
int PonyGetShaderLocationAttrib(Shader* shader, const char * attribName) {
	int result = GetShaderLocationAttrib(*shader, attribName);
	return result;
}
void PonySetShaderValue(Shader* shader, int locIndex, const void * value, int uniformType) {
	SetShaderValue(*shader, locIndex, value, uniformType);
}
void PonySetShaderValueV(Shader* shader, int locIndex, const void * value, int uniformType, int count) {
	SetShaderValueV(*shader, locIndex, value, uniformType, count);
}
void PonySetShaderValueMatrix(Shader* shader, int locIndex, Matrix* mat) {
	SetShaderValueMatrix(*shader, locIndex, *mat);
}
void PonySetShaderValueTexture(Shader* shader, int locIndex, Texture2D* texture) {
	SetShaderValueTexture(*shader, locIndex, *texture);
}
void PonyUnloadShader(Shader* shader) {
	UnloadShader(*shader);
}
Ray* PonyGetMouseRay(Vector2* mousePosition, Camera* camera) {
	Ray result = GetMouseRay(*mousePosition, *camera);
	pony_ctx_t* ctx = pony_ctx();
	Ray* result_ptr = (Ray*)pony_alloc(ctx, sizeof(Ray));
	*result_ptr = result;
	return result_ptr;
}
Matrix* PonyGetCameraMatrix(Camera* camera) {
	Matrix result = GetCameraMatrix(*camera);
	pony_ctx_t* ctx = pony_ctx();
	Matrix* result_ptr = (Matrix*)pony_alloc(ctx, sizeof(Matrix));
	*result_ptr = result;
	return result_ptr;
}
Matrix* PonyGetCameraMatrix2D(Camera2D* camera) {
	Matrix result = GetCameraMatrix2D(*camera);
	pony_ctx_t* ctx = pony_ctx();
	Matrix* result_ptr = (Matrix*)pony_alloc(ctx, sizeof(Matrix));
	*result_ptr = result;
	return result_ptr;
}
Vector2* PonyGetWorldToScreen(Vector3* position, Camera* camera) {
	Vector2 result = GetWorldToScreen(*position, *camera);
	pony_ctx_t* ctx = pony_ctx();
	Vector2* result_ptr = (Vector2*)pony_alloc(ctx, sizeof(Vector2));
	*result_ptr = result;
	return result_ptr;
}
Vector2* PonyGetScreenToWorld2D(Vector2* position, Camera2D* camera) {
	Vector2 result = GetScreenToWorld2D(*position, *camera);
	pony_ctx_t* ctx = pony_ctx();
	Vector2* result_ptr = (Vector2*)pony_alloc(ctx, sizeof(Vector2));
	*result_ptr = result;
	return result_ptr;
}
Vector2* PonyGetWorldToScreenEx(Vector3* position, Camera* camera, int width, int height) {
	Vector2 result = GetWorldToScreenEx(*position, *camera, width, height);
	pony_ctx_t* ctx = pony_ctx();
	Vector2* result_ptr = (Vector2*)pony_alloc(ctx, sizeof(Vector2));
	*result_ptr = result;
	return result_ptr;
}
Vector2* PonyGetWorldToScreen2D(Vector2* position, Camera2D* camera) {
	Vector2 result = GetWorldToScreen2D(*position, *camera);
	pony_ctx_t* ctx = pony_ctx();
	Vector2* result_ptr = (Vector2*)pony_alloc(ctx, sizeof(Vector2));
	*result_ptr = result;
	return result_ptr;
}
void PonySetTargetFPS(int fps) {
	SetTargetFPS(fps);
}
float PonyGetFrameTime() {
	float result = GetFrameTime();
	return result;
}
double PonyGetTime() {
	double result = GetTime();
	return result;
}
int PonyGetFPS() {
	int result = GetFPS();
	return result;
}
void PonySwapScreenBuffer() {
	SwapScreenBuffer();
}
void PonyPollInputEvents() {
	PollInputEvents();
}
void PonyWaitTime(double seconds) {
	WaitTime(seconds);
}
void PonySetRandomSeed(unsigned int seed) {
	SetRandomSeed(seed);
}
int PonyGetRandomValue(int min, int max) {
	int result = GetRandomValue(min, max);
	return result;
}
int * PonyLoadRandomSequence(unsigned int count, int min, int max) {
	int * result = LoadRandomSequence(count, min, max);
	return result;
}
void PonyUnloadRandomSequence(int * sequence) {
	UnloadRandomSequence(sequence);
}
void PonyTakeScreenshot(const char * fileName) {
	TakeScreenshot(fileName);
}
void PonySetConfigFlags(unsigned int flags) {
	SetConfigFlags(flags);
}
void PonyOpenURL(const char * url) {
	OpenURL(url);
}
void PonySetTraceLogLevel(int logLevel) {
	SetTraceLogLevel(logLevel);
}
void * PonyMemAlloc(unsigned int size) {
	void * result = MemAlloc(size);
	return result;
}
void * PonyMemRealloc(void * ptr, unsigned int size) {
	void * result = MemRealloc(ptr, size);
	return result;
}
void PonyMemFree(void * ptr) {
	MemFree(ptr);
}
void PonySetTraceLogCallback(TraceLogCallback callback) {
	SetTraceLogCallback(callback);
}
void PonySetLoadFileDataCallback(LoadFileDataCallback callback) {
	SetLoadFileDataCallback(callback);
}
void PonySetSaveFileDataCallback(SaveFileDataCallback callback) {
	SetSaveFileDataCallback(callback);
}
void PonySetLoadFileTextCallback(LoadFileTextCallback callback) {
	SetLoadFileTextCallback(callback);
}
void PonySetSaveFileTextCallback(SaveFileTextCallback callback) {
	SetSaveFileTextCallback(callback);
}
unsigned char * PonyLoadFileData(const char * fileName, int * dataSize) {
	unsigned char * result = LoadFileData(fileName, dataSize);
	return result;
}
void PonyUnloadFileData(unsigned char * data) {
	UnloadFileData(data);
}
bool PonySaveFileData(const char * fileName, void * data, int dataSize) {
	bool result = SaveFileData(fileName, data, dataSize);
	return result;
}
bool PonyExportDataAsCode(const unsigned char * data, int dataSize, const char * fileName) {
	bool result = ExportDataAsCode(data, dataSize, fileName);
	return result;
}
char * PonyLoadFileText(const char * fileName) {
	char * result = LoadFileText(fileName);
	return result;
}
void PonyUnloadFileText(char * text) {
	UnloadFileText(text);
}
bool PonySaveFileText(const char * fileName, char * text) {
	bool result = SaveFileText(fileName, text);
	return result;
}
bool PonyFileExists(const char * fileName) {
	bool result = FileExists(fileName);
	return result;
}
bool PonyDirectoryExists(const char * dirPath) {
	bool result = DirectoryExists(dirPath);
	return result;
}
bool PonyIsFileExtension(const char * fileName, const char * ext) {
	bool result = IsFileExtension(fileName, ext);
	return result;
}
int PonyGetFileLength(const char * fileName) {
	int result = GetFileLength(fileName);
	return result;
}
const char * PonyGetFileExtension(const char * fileName) {
	const char * result = GetFileExtension(fileName);
	return result;
}
const char * PonyGetFileName(const char * filePath) {
	const char * result = GetFileName(filePath);
	return result;
}
const char * PonyGetFileNameWithoutExt(const char * filePath) {
	const char * result = GetFileNameWithoutExt(filePath);
	return result;
}
const char * PonyGetDirectoryPath(const char * filePath) {
	const char * result = GetDirectoryPath(filePath);
	return result;
}
const char * PonyGetPrevDirectoryPath(const char * dirPath) {
	const char * result = GetPrevDirectoryPath(dirPath);
	return result;
}
const char * PonyGetWorkingDirectory() {
	const char * result = GetWorkingDirectory();
	return result;
}
const char * PonyGetApplicationDirectory() {
	const char * result = GetApplicationDirectory();
	return result;
}
bool PonyChangeDirectory(const char * dir) {
	bool result = ChangeDirectory(dir);
	return result;
}
bool PonyIsPathFile(const char * path) {
	bool result = IsPathFile(path);
	return result;
}
FilePathList* PonyLoadDirectoryFiles(const char * dirPath) {
	FilePathList result = LoadDirectoryFiles(dirPath);
	pony_ctx_t* ctx = pony_ctx();
	FilePathList* result_ptr = (FilePathList*)pony_alloc(ctx, sizeof(FilePathList));
	*result_ptr = result;
	return result_ptr;
}
FilePathList* PonyLoadDirectoryFilesEx(const char * basePath, const char * filter, bool scanSubdirs) {
	FilePathList result = LoadDirectoryFilesEx(basePath, filter, scanSubdirs);
	pony_ctx_t* ctx = pony_ctx();
	FilePathList* result_ptr = (FilePathList*)pony_alloc(ctx, sizeof(FilePathList));
	*result_ptr = result;
	return result_ptr;
}
void PonyUnloadDirectoryFiles(FilePathList* files) {
	UnloadDirectoryFiles(*files);
}
bool PonyIsFileDropped() {
	bool result = IsFileDropped();
	return result;
}
FilePathList* PonyLoadDroppedFiles() {
	FilePathList result = LoadDroppedFiles();
	pony_ctx_t* ctx = pony_ctx();
	FilePathList* result_ptr = (FilePathList*)pony_alloc(ctx, sizeof(FilePathList));
	*result_ptr = result;
	return result_ptr;
}
void PonyUnloadDroppedFiles(FilePathList* files) {
	UnloadDroppedFiles(*files);
}
long PonyGetFileModTime(const char * fileName) {
	long result = GetFileModTime(fileName);
	return result;
}
unsigned char * PonyCompressData(const unsigned char * data, int dataSize, int * compDataSize) {
	unsigned char * result = CompressData(data, dataSize, compDataSize);
	return result;
}
unsigned char * PonyDecompressData(const unsigned char * compData, int compDataSize, int * dataSize) {
	unsigned char * result = DecompressData(compData, compDataSize, dataSize);
	return result;
}
char * PonyEncodeDataBase64(const unsigned char * data, int dataSize, int * outputSize) {
	char * result = EncodeDataBase64(data, dataSize, outputSize);
	return result;
}
unsigned char * PonyDecodeDataBase64(const unsigned char * data, int * outputSize) {
	unsigned char * result = DecodeDataBase64(data, outputSize);
	return result;
}
AutomationEventList* PonyLoadAutomationEventList(const char * fileName) {
	AutomationEventList result = LoadAutomationEventList(fileName);
	pony_ctx_t* ctx = pony_ctx();
	AutomationEventList* result_ptr = (AutomationEventList*)pony_alloc(ctx, sizeof(AutomationEventList));
	*result_ptr = result;
	return result_ptr;
}
void PonyUnloadAutomationEventList(AutomationEventList * list) {
	UnloadAutomationEventList(*list);
}
bool PonyExportAutomationEventList(AutomationEventList* list, const char * fileName) {
	bool result = ExportAutomationEventList(*list, fileName);
	return result;
}
void PonySetAutomationEventList(AutomationEventList * list) {
	SetAutomationEventList(list);
}
void PonySetAutomationEventBaseFrame(int frame) {
	SetAutomationEventBaseFrame(frame);
}
void PonyStartAutomationEventRecording() {
	StartAutomationEventRecording();
}
void PonyStopAutomationEventRecording() {
	StopAutomationEventRecording();
}
void PonyPlayAutomationEvent(AutomationEvent* event) {
	PlayAutomationEvent(*event);
}
bool PonyIsKeyPressed(int key) {
	bool result = IsKeyPressed(key);
	return result;
}
bool PonyIsKeyPressedRepeat(int key) {
	bool result = IsKeyPressedRepeat(key);
	return result;
}
bool PonyIsKeyDown(int key) {
	bool result = IsKeyDown(key);
	return result;
}
bool PonyIsKeyReleased(int key) {
	bool result = IsKeyReleased(key);
	return result;
}
bool PonyIsKeyUp(int key) {
	bool result = IsKeyUp(key);
	return result;
}
int PonyGetKeyPressed() {
	int result = GetKeyPressed();
	return result;
}
int PonyGetCharPressed() {
	int result = GetCharPressed();
	return result;
}
void PonySetExitKey(int key) {
	SetExitKey(key);
}
bool PonyIsGamepadAvailable(int gamepad) {
	bool result = IsGamepadAvailable(gamepad);
	return result;
}
const char * PonyGetGamepadName(int gamepad) {
	const char * result = GetGamepadName(gamepad);
	return result;
}
bool PonyIsGamepadButtonPressed(int gamepad, int button) {
	bool result = IsGamepadButtonPressed(gamepad, button);
	return result;
}
bool PonyIsGamepadButtonDown(int gamepad, int button) {
	bool result = IsGamepadButtonDown(gamepad, button);
	return result;
}
bool PonyIsGamepadButtonReleased(int gamepad, int button) {
	bool result = IsGamepadButtonReleased(gamepad, button);
	return result;
}
bool PonyIsGamepadButtonUp(int gamepad, int button) {
	bool result = IsGamepadButtonUp(gamepad, button);
	return result;
}
int PonyGetGamepadButtonPressed() {
	int result = GetGamepadButtonPressed();
	return result;
}
int PonyGetGamepadAxisCount(int gamepad) {
	int result = GetGamepadAxisCount(gamepad);
	return result;
}
float PonyGetGamepadAxisMovement(int gamepad, int axis) {
	float result = GetGamepadAxisMovement(gamepad, axis);
	return result;
}
int PonySetGamepadMappings(const char * mappings) {
	int result = SetGamepadMappings(mappings);
	return result;
}
bool PonyIsMouseButtonPressed(int button) {
	bool result = IsMouseButtonPressed(button);
	return result;
}
bool PonyIsMouseButtonDown(int button) {
	bool result = IsMouseButtonDown(button);
	return result;
}
bool PonyIsMouseButtonReleased(int button) {
	bool result = IsMouseButtonReleased(button);
	return result;
}
bool PonyIsMouseButtonUp(int button) {
	bool result = IsMouseButtonUp(button);
	return result;
}
int PonyGetMouseX() {
	int result = GetMouseX();
	return result;
}
int PonyGetMouseY() {
	int result = GetMouseY();
	return result;
}
Vector2* PonyGetMousePosition() {
	Vector2 result = GetMousePosition();
	pony_ctx_t* ctx = pony_ctx();
	Vector2* result_ptr = (Vector2*)pony_alloc(ctx, sizeof(Vector2));
	*result_ptr = result;
	return result_ptr;
}
Vector2* PonyGetMouseDelta() {
	Vector2 result = GetMouseDelta();
	pony_ctx_t* ctx = pony_ctx();
	Vector2* result_ptr = (Vector2*)pony_alloc(ctx, sizeof(Vector2));
	*result_ptr = result;
	return result_ptr;
}
void PonySetMousePosition(int x, int y) {
	SetMousePosition(x, y);
}
void PonySetMouseOffset(int offsetX, int offsetY) {
	SetMouseOffset(offsetX, offsetY);
}
void PonySetMouseScale(float scaleX, float scaleY) {
	SetMouseScale(scaleX, scaleY);
}
float PonyGetMouseWheelMove() {
	float result = GetMouseWheelMove();
	return result;
}
Vector2* PonyGetMouseWheelMoveV() {
	Vector2 result = GetMouseWheelMoveV();
	pony_ctx_t* ctx = pony_ctx();
	Vector2* result_ptr = (Vector2*)pony_alloc(ctx, sizeof(Vector2));
	*result_ptr = result;
	return result_ptr;
}
void PonySetMouseCursor(int cursor) {
	SetMouseCursor(cursor);
}
int PonyGetTouchX() {
	int result = GetTouchX();
	return result;
}
int PonyGetTouchY() {
	int result = GetTouchY();
	return result;
}
Vector2* PonyGetTouchPosition(int index) {
	Vector2 result = GetTouchPosition(index);
	pony_ctx_t* ctx = pony_ctx();
	Vector2* result_ptr = (Vector2*)pony_alloc(ctx, sizeof(Vector2));
	*result_ptr = result;
	return result_ptr;
}
int PonyGetTouchPointId(int index) {
	int result = GetTouchPointId(index);
	return result;
}
int PonyGetTouchPointCount() {
	int result = GetTouchPointCount();
	return result;
}
void PonySetGesturesEnabled(unsigned int flags) {
	SetGesturesEnabled(flags);
}
bool PonyIsGestureDetected(unsigned int gesture) {
	bool result = IsGestureDetected(gesture);
	return result;
}
int PonyGetGestureDetected() {
	int result = GetGestureDetected();
	return result;
}
float PonyGetGestureHoldDuration() {
	float result = GetGestureHoldDuration();
	return result;
}
Vector2* PonyGetGestureDragVector() {
	Vector2 result = GetGestureDragVector();
	pony_ctx_t* ctx = pony_ctx();
	Vector2* result_ptr = (Vector2*)pony_alloc(ctx, sizeof(Vector2));
	*result_ptr = result;
	return result_ptr;
}
float PonyGetGestureDragAngle() {
	float result = GetGestureDragAngle();
	return result;
}
Vector2* PonyGetGesturePinchVector() {
	Vector2 result = GetGesturePinchVector();
	pony_ctx_t* ctx = pony_ctx();
	Vector2* result_ptr = (Vector2*)pony_alloc(ctx, sizeof(Vector2));
	*result_ptr = result;
	return result_ptr;
}
float PonyGetGesturePinchAngle() {
	float result = GetGesturePinchAngle();
	return result;
}
void PonyUpdateCamera(Camera * camera, int mode) {
	UpdateCamera(camera, mode);
}
void PonyUpdateCameraPro(Camera * camera, Vector3* movement, Vector3* rotation, float zoom) {
	UpdateCameraPro(camera, *movement, *rotation, zoom);
}
void PonySetShapesTexture(Texture2D* texture, Rectangle* source) {
	SetShapesTexture(*texture, *source);
}
Texture2D* PonyGetShapesTexture() {
	Texture2D result = GetShapesTexture();
	pony_ctx_t* ctx = pony_ctx();
	Texture2D* result_ptr = (Texture2D*)pony_alloc(ctx, sizeof(Texture2D));
	*result_ptr = result;
	return result_ptr;
}
Rectangle* PonyGetShapesTextureRectangle() {
	Rectangle result = GetShapesTextureRectangle();
	pony_ctx_t* ctx = pony_ctx();
	Rectangle* result_ptr = (Rectangle*)pony_alloc(ctx, sizeof(Rectangle));
	*result_ptr = result;
	return result_ptr;
}
void PonyDrawPixel(int posX, int posY, Color* color) {
	DrawPixel(posX, posY, *color);
}
void PonyDrawPixelV(Vector2* position, Color* color) {
	DrawPixelV(*position, *color);
}
void PonyDrawLine(int startPosX, int startPosY, int endPosX, int endPosY, Color* color) {
	DrawLine(startPosX, startPosY, endPosX, endPosY, *color);
}
void PonyDrawLineV(Vector2* startPos, Vector2* endPos, Color* color) {
	DrawLineV(*startPos, *endPos, *color);
}
void PonyDrawLineEx(Vector2* startPos, Vector2* endPos, float thick, Color* color) {
	DrawLineEx(*startPos, *endPos, thick, *color);
}
void PonyDrawLineStrip(Vector2 * points, int pointCount, Color* color) {
	DrawLineStrip(points, pointCount, *color);
}
void PonyDrawLineBezier(Vector2* startPos, Vector2* endPos, float thick, Color* color) {
	DrawLineBezier(*startPos, *endPos, thick, *color);
}
void PonyDrawCircle(int centerX, int centerY, float radius, Color* color) {
	DrawCircle(centerX, centerY, radius, *color);
}
void PonyDrawCircleSector(Vector2* center, float radius, float startAngle, float endAngle, int segments, Color* color) {
	DrawCircleSector(*center, radius, startAngle, endAngle, segments, *color);
}
void PonyDrawCircleSectorLines(Vector2* center, float radius, float startAngle, float endAngle, int segments, Color* color) {
	DrawCircleSectorLines(*center, radius, startAngle, endAngle, segments, *color);
}
void PonyDrawCircleGradient(int centerX, int centerY, float radius, Color* color1, Color* color2) {
	DrawCircleGradient(centerX, centerY, radius, *color1, *color2);
}
void PonyDrawCircleV(Vector2* center, float radius, Color* color) {
	DrawCircleV(*center, radius, *color);
}
void PonyDrawCircleLines(int centerX, int centerY, float radius, Color* color) {
	DrawCircleLines(centerX, centerY, radius, *color);
}
void PonyDrawCircleLinesV(Vector2* center, float radius, Color* color) {
	DrawCircleLinesV(*center, radius, *color);
}
void PonyDrawEllipse(int centerX, int centerY, float radiusH, float radiusV, Color* color) {
	DrawEllipse(centerX, centerY, radiusH, radiusV, *color);
}
void PonyDrawEllipseLines(int centerX, int centerY, float radiusH, float radiusV, Color* color) {
	DrawEllipseLines(centerX, centerY, radiusH, radiusV, *color);
}
void PonyDrawRing(Vector2* center, float innerRadius, float outerRadius, float startAngle, float endAngle, int segments, Color* color) {
	DrawRing(*center, innerRadius, outerRadius, startAngle, endAngle, segments, *color);
}
void PonyDrawRingLines(Vector2* center, float innerRadius, float outerRadius, float startAngle, float endAngle, int segments, Color* color) {
	DrawRingLines(*center, innerRadius, outerRadius, startAngle, endAngle, segments, *color);
}
void PonyDrawRectangle(int posX, int posY, int width, int height, Color* color) {
	DrawRectangle(posX, posY, width, height, *color);
}
void PonyDrawRectangleV(Vector2* position, Vector2* size, Color* color) {
	DrawRectangleV(*position, *size, *color);
}
void PonyDrawRectangleRec(Rectangle* rec, Color* color) {
	DrawRectangleRec(*rec, *color);
}
void PonyDrawRectanglePro(Rectangle* rec, Vector2* origin, float rotation, Color* color) {
	DrawRectanglePro(*rec, *origin, rotation, *color);
}
void PonyDrawRectangleGradientV(int posX, int posY, int width, int height, Color* color1, Color* color2) {
	DrawRectangleGradientV(posX, posY, width, height, *color1, *color2);
}
void PonyDrawRectangleGradientH(int posX, int posY, int width, int height, Color* color1, Color* color2) {
	DrawRectangleGradientH(posX, posY, width, height, *color1, *color2);
}
void PonyDrawRectangleGradientEx(Rectangle* rec, Color* col1, Color* col2, Color* col3, Color* col4) {
	DrawRectangleGradientEx(*rec, *col1, *col2, *col3, *col4);
}
void PonyDrawRectangleLines(int posX, int posY, int width, int height, Color* color) {
	DrawRectangleLines(posX, posY, width, height, *color);
}
void PonyDrawRectangleLinesEx(Rectangle* rec, float lineThick, Color* color) {
	DrawRectangleLinesEx(*rec, lineThick, *color);
}
void PonyDrawRectangleRounded(Rectangle* rec, float roundness, int segments, Color* color) {
	DrawRectangleRounded(*rec, roundness, segments, *color);
}
void PonyDrawRectangleRoundedLines(Rectangle* rec, float roundness, int segments, float lineThick, Color* color) {
	DrawRectangleRoundedLines(*rec, roundness, segments, lineThick, *color);
}
void PonyDrawTriangle(Vector2* v1, Vector2* v2, Vector2* v3, Color* color) {
	DrawTriangle(*v1, *v2, *v3, *color);
}
void PonyDrawTriangleLines(Vector2* v1, Vector2* v2, Vector2* v3, Color* color) {
	DrawTriangleLines(*v1, *v2, *v3, *color);
}
void PonyDrawTriangleFan(Vector2 * points, int pointCount, Color* color) {
	DrawTriangleFan(points, pointCount, *color);
}
void PonyDrawTriangleStrip(Vector2 * points, int pointCount, Color* color) {
	DrawTriangleStrip(points, pointCount, *color);
}
void PonyDrawPoly(Vector2* center, int sides, float radius, float rotation, Color* color) {
	DrawPoly(*center, sides, radius, rotation, *color);
}
void PonyDrawPolyLines(Vector2* center, int sides, float radius, float rotation, Color* color) {
	DrawPolyLines(*center, sides, radius, rotation, *color);
}
void PonyDrawPolyLinesEx(Vector2* center, int sides, float radius, float rotation, float lineThick, Color* color) {
	DrawPolyLinesEx(*center, sides, radius, rotation, lineThick, *color);
}
void PonyDrawSplineLinear(Vector2 * points, int pointCount, float thick, Color* color) {
	DrawSplineLinear(points, pointCount, thick, *color);
}
void PonyDrawSplineBasis(Vector2 * points, int pointCount, float thick, Color* color) {
	DrawSplineBasis(points, pointCount, thick, *color);
}
void PonyDrawSplineCatmullRom(Vector2 * points, int pointCount, float thick, Color* color) {
	DrawSplineCatmullRom(points, pointCount, thick, *color);
}
void PonyDrawSplineBezierQuadratic(Vector2 * points, int pointCount, float thick, Color* color) {
	DrawSplineBezierQuadratic(points, pointCount, thick, *color);
}
void PonyDrawSplineBezierCubic(Vector2 * points, int pointCount, float thick, Color* color) {
	DrawSplineBezierCubic(points, pointCount, thick, *color);
}
void PonyDrawSplineSegmentLinear(Vector2* p1, Vector2* p2, float thick, Color* color) {
	DrawSplineSegmentLinear(*p1, *p2, thick, *color);
}
void PonyDrawSplineSegmentBasis(Vector2* p1, Vector2* p2, Vector2* p3, Vector2* p4, float thick, Color* color) {
	DrawSplineSegmentBasis(*p1, *p2, *p3, *p4, thick, *color);
}
void PonyDrawSplineSegmentCatmullRom(Vector2* p1, Vector2* p2, Vector2* p3, Vector2* p4, float thick, Color* color) {
	DrawSplineSegmentCatmullRom(*p1, *p2, *p3, *p4, thick, *color);
}
void PonyDrawSplineSegmentBezierQuadratic(Vector2* p1, Vector2* c2, Vector2* p3, float thick, Color* color) {
	DrawSplineSegmentBezierQuadratic(*p1, *c2, *p3, thick, *color);
}
void PonyDrawSplineSegmentBezierCubic(Vector2* p1, Vector2* c2, Vector2* c3, Vector2* p4, float thick, Color* color) {
	DrawSplineSegmentBezierCubic(*p1, *c2, *c3, *p4, thick, *color);
}
Vector2* PonyGetSplinePointLinear(Vector2* startPos, Vector2* endPos, float t) {
	Vector2 result = GetSplinePointLinear(*startPos, *endPos, t);
	pony_ctx_t* ctx = pony_ctx();
	Vector2* result_ptr = (Vector2*)pony_alloc(ctx, sizeof(Vector2));
	*result_ptr = result;
	return result_ptr;
}
Vector2* PonyGetSplinePointBasis(Vector2* p1, Vector2* p2, Vector2* p3, Vector2* p4, float t) {
	Vector2 result = GetSplinePointBasis(*p1, *p2, *p3, *p4, t);
	pony_ctx_t* ctx = pony_ctx();
	Vector2* result_ptr = (Vector2*)pony_alloc(ctx, sizeof(Vector2));
	*result_ptr = result;
	return result_ptr;
}
Vector2* PonyGetSplinePointCatmullRom(Vector2* p1, Vector2* p2, Vector2* p3, Vector2* p4, float t) {
	Vector2 result = GetSplinePointCatmullRom(*p1, *p2, *p3, *p4, t);
	pony_ctx_t* ctx = pony_ctx();
	Vector2* result_ptr = (Vector2*)pony_alloc(ctx, sizeof(Vector2));
	*result_ptr = result;
	return result_ptr;
}
Vector2* PonyGetSplinePointBezierQuad(Vector2* p1, Vector2* c2, Vector2* p3, float t) {
	Vector2 result = GetSplinePointBezierQuad(*p1, *c2, *p3, t);
	pony_ctx_t* ctx = pony_ctx();
	Vector2* result_ptr = (Vector2*)pony_alloc(ctx, sizeof(Vector2));
	*result_ptr = result;
	return result_ptr;
}
Vector2* PonyGetSplinePointBezierCubic(Vector2* p1, Vector2* c2, Vector2* c3, Vector2* p4, float t) {
	Vector2 result = GetSplinePointBezierCubic(*p1, *c2, *c3, *p4, t);
	pony_ctx_t* ctx = pony_ctx();
	Vector2* result_ptr = (Vector2*)pony_alloc(ctx, sizeof(Vector2));
	*result_ptr = result;
	return result_ptr;
}
bool PonyCheckCollisionRecs(Rectangle* rec1, Rectangle* rec2) {
	bool result = CheckCollisionRecs(*rec1, *rec2);
	return result;
}
bool PonyCheckCollisionCircles(Vector2* center1, float radius1, Vector2* center2, float radius2) {
	bool result = CheckCollisionCircles(*center1, radius1, *center2, radius2);
	return result;
}
bool PonyCheckCollisionCircleRec(Vector2* center, float radius, Rectangle* rec) {
	bool result = CheckCollisionCircleRec(*center, radius, *rec);
	return result;
}
bool PonyCheckCollisionPointRec(Vector2* point, Rectangle* rec) {
	bool result = CheckCollisionPointRec(*point, *rec);
	return result;
}
bool PonyCheckCollisionPointCircle(Vector2* point, Vector2* center, float radius) {
	bool result = CheckCollisionPointCircle(*point, *center, radius);
	return result;
}
bool PonyCheckCollisionPointTriangle(Vector2* point, Vector2* p1, Vector2* p2, Vector2* p3) {
	bool result = CheckCollisionPointTriangle(*point, *p1, *p2, *p3);
	return result;
}
bool PonyCheckCollisionPointPoly(Vector2* point, Vector2 * points, int pointCount) {
	bool result = CheckCollisionPointPoly(*point, points, pointCount);
	return result;
}
bool PonyCheckCollisionLines(Vector2* startPos1, Vector2* endPos1, Vector2* startPos2, Vector2* endPos2, Vector2 * collisionPoint) {
	bool result = CheckCollisionLines(*startPos1, *endPos1, *startPos2, *endPos2, collisionPoint);
	return result;
}
bool PonyCheckCollisionPointLine(Vector2* point, Vector2* p1, Vector2* p2, int threshold) {
	bool result = CheckCollisionPointLine(*point, *p1, *p2, threshold);
	return result;
}
Rectangle* PonyGetCollisionRec(Rectangle* rec1, Rectangle* rec2) {
	Rectangle result = GetCollisionRec(*rec1, *rec2);
	pony_ctx_t* ctx = pony_ctx();
	Rectangle* result_ptr = (Rectangle*)pony_alloc(ctx, sizeof(Rectangle));
	*result_ptr = result;
	return result_ptr;
}
Image* PonyLoadImage(const char * fileName) {
	Image result = LoadImage(fileName);
	pony_ctx_t* ctx = pony_ctx();
	Image* result_ptr = (Image*)pony_alloc(ctx, sizeof(Image));
	*result_ptr = result;
	return result_ptr;
}
Image* PonyLoadImageRaw(const char * fileName, int width, int height, int format, int headerSize) {
	Image result = LoadImageRaw(fileName, width, height, format, headerSize);
	pony_ctx_t* ctx = pony_ctx();
	Image* result_ptr = (Image*)pony_alloc(ctx, sizeof(Image));
	*result_ptr = result;
	return result_ptr;
}
Image* PonyLoadImageSvg(const char * fileNameOrString, int width, int height) {
	Image result = LoadImageSvg(fileNameOrString, width, height);
	pony_ctx_t* ctx = pony_ctx();
	Image* result_ptr = (Image*)pony_alloc(ctx, sizeof(Image));
	*result_ptr = result;
	return result_ptr;
}
Image* PonyLoadImageAnim(const char * fileName, int * frames) {
	Image result = LoadImageAnim(fileName, frames);
	pony_ctx_t* ctx = pony_ctx();
	Image* result_ptr = (Image*)pony_alloc(ctx, sizeof(Image));
	*result_ptr = result;
	return result_ptr;
}
Image* PonyLoadImageAnimFromMemory(const char * fileType, const unsigned char * fileData, int dataSize, int * frames) {
	Image result = LoadImageAnimFromMemory(fileType, fileData, dataSize, frames);
	pony_ctx_t* ctx = pony_ctx();
	Image* result_ptr = (Image*)pony_alloc(ctx, sizeof(Image));
	*result_ptr = result;
	return result_ptr;
}
Image* PonyLoadImageFromMemory(const char * fileType, const unsigned char * fileData, int dataSize) {
	Image result = LoadImageFromMemory(fileType, fileData, dataSize);
	pony_ctx_t* ctx = pony_ctx();
	Image* result_ptr = (Image*)pony_alloc(ctx, sizeof(Image));
	*result_ptr = result;
	return result_ptr;
}
Image* PonyLoadImageFromTexture(Texture2D* texture) {
	Image result = LoadImageFromTexture(*texture);
	pony_ctx_t* ctx = pony_ctx();
	Image* result_ptr = (Image*)pony_alloc(ctx, sizeof(Image));
	*result_ptr = result;
	return result_ptr;
}
Image* PonyLoadImageFromScreen() {
	Image result = LoadImageFromScreen();
	pony_ctx_t* ctx = pony_ctx();
	Image* result_ptr = (Image*)pony_alloc(ctx, sizeof(Image));
	*result_ptr = result;
	return result_ptr;
}
bool PonyIsImageReady(Image* image) {
	bool result = IsImageReady(*image);
	return result;
}
void PonyUnloadImage(Image* image) {
	UnloadImage(*image);
}
bool PonyExportImage(Image* image, const char * fileName) {
	bool result = ExportImage(*image, fileName);
	return result;
}
unsigned char * PonyExportImageToMemory(Image* image, const char * fileType, int * fileSize) {
	unsigned char * result = ExportImageToMemory(*image, fileType, fileSize);
	return result;
}
bool PonyExportImageAsCode(Image* image, const char * fileName) {
	bool result = ExportImageAsCode(*image, fileName);
	return result;
}
Image* PonyGenImageColor(int width, int height, Color* color) {
	Image result = GenImageColor(width, height, *color);
	pony_ctx_t* ctx = pony_ctx();
	Image* result_ptr = (Image*)pony_alloc(ctx, sizeof(Image));
	*result_ptr = result;
	return result_ptr;
}
Image* PonyGenImageGradientLinear(int width, int height, int direction, Color* start, Color* end) {
	Image result = GenImageGradientLinear(width, height, direction, *start, *end);
	pony_ctx_t* ctx = pony_ctx();
	Image* result_ptr = (Image*)pony_alloc(ctx, sizeof(Image));
	*result_ptr = result;
	return result_ptr;
}
Image* PonyGenImageGradientRadial(int width, int height, float density, Color* inner, Color* outer) {
	Image result = GenImageGradientRadial(width, height, density, *inner, *outer);
	pony_ctx_t* ctx = pony_ctx();
	Image* result_ptr = (Image*)pony_alloc(ctx, sizeof(Image));
	*result_ptr = result;
	return result_ptr;
}
Image* PonyGenImageGradientSquare(int width, int height, float density, Color* inner, Color* outer) {
	Image result = GenImageGradientSquare(width, height, density, *inner, *outer);
	pony_ctx_t* ctx = pony_ctx();
	Image* result_ptr = (Image*)pony_alloc(ctx, sizeof(Image));
	*result_ptr = result;
	return result_ptr;
}
Image* PonyGenImageChecked(int width, int height, int checksX, int checksY, Color* col1, Color* col2) {
	Image result = GenImageChecked(width, height, checksX, checksY, *col1, *col2);
	pony_ctx_t* ctx = pony_ctx();
	Image* result_ptr = (Image*)pony_alloc(ctx, sizeof(Image));
	*result_ptr = result;
	return result_ptr;
}
Image* PonyGenImageWhiteNoise(int width, int height, float factor) {
	Image result = GenImageWhiteNoise(width, height, factor);
	pony_ctx_t* ctx = pony_ctx();
	Image* result_ptr = (Image*)pony_alloc(ctx, sizeof(Image));
	*result_ptr = result;
	return result_ptr;
}
Image* PonyGenImagePerlinNoise(int width, int height, int offsetX, int offsetY, float scale) {
	Image result = GenImagePerlinNoise(width, height, offsetX, offsetY, scale);
	pony_ctx_t* ctx = pony_ctx();
	Image* result_ptr = (Image*)pony_alloc(ctx, sizeof(Image));
	*result_ptr = result;
	return result_ptr;
}
Image* PonyGenImageCellular(int width, int height, int tileSize) {
	Image result = GenImageCellular(width, height, tileSize);
	pony_ctx_t* ctx = pony_ctx();
	Image* result_ptr = (Image*)pony_alloc(ctx, sizeof(Image));
	*result_ptr = result;
	return result_ptr;
}
Image* PonyGenImageText(int width, int height, const char * text) {
	Image result = GenImageText(width, height, text);
	pony_ctx_t* ctx = pony_ctx();
	Image* result_ptr = (Image*)pony_alloc(ctx, sizeof(Image));
	*result_ptr = result;
	return result_ptr;
}
Image* PonyImageCopy(Image* image) {
	Image result = ImageCopy(*image);
	pony_ctx_t* ctx = pony_ctx();
	Image* result_ptr = (Image*)pony_alloc(ctx, sizeof(Image));
	*result_ptr = result;
	return result_ptr;
}
Image* PonyImageFromImage(Image* image, Rectangle* rec) {
	Image result = ImageFromImage(*image, *rec);
	pony_ctx_t* ctx = pony_ctx();
	Image* result_ptr = (Image*)pony_alloc(ctx, sizeof(Image));
	*result_ptr = result;
	return result_ptr;
}
Image* PonyImageText(const char * text, int fontSize, Color* color) {
	Image result = ImageText(text, fontSize, *color);
	pony_ctx_t* ctx = pony_ctx();
	Image* result_ptr = (Image*)pony_alloc(ctx, sizeof(Image));
	*result_ptr = result;
	return result_ptr;
}
Image* PonyImageTextEx(Font* font, const char * text, float fontSize, float spacing, Color* tint) {
	Image result = ImageTextEx(*font, text, fontSize, spacing, *tint);
	pony_ctx_t* ctx = pony_ctx();
	Image* result_ptr = (Image*)pony_alloc(ctx, sizeof(Image));
	*result_ptr = result;
	return result_ptr;
}
void PonyImageFormat(Image * image, int newFormat) {
	ImageFormat(image, newFormat);
}
void PonyImageToPOT(Image * image, Color* fill) {
	ImageToPOT(image, *fill);
}
void PonyImageCrop(Image * image, Rectangle* crop) {
	ImageCrop(image, *crop);
}
void PonyImageAlphaCrop(Image * image, float threshold) {
	ImageAlphaCrop(image, threshold);
}
void PonyImageAlphaClear(Image * image, Color* color, float threshold) {
	ImageAlphaClear(image, *color, threshold);
}
void PonyImageAlphaMask(Image * image, Image* alphaMask) {
	ImageAlphaMask(image, *alphaMask);
}
void PonyImageAlphaPremultiply(Image * image) {
	ImageAlphaPremultiply(image);
}
void PonyImageBlurGaussian(Image * image, int blurSize) {
	ImageBlurGaussian(image, blurSize);
}
void PonyImageKernelConvolution(Image * image, float* kernel, int kernelSize) {
	ImageKernelConvolution(image, kernel, kernelSize);
}
void PonyImageResize(Image * image, int newWidth, int newHeight) {
	ImageResize(image, newWidth, newHeight);
}
void PonyImageResizeNN(Image * image, int newWidth, int newHeight) {
	ImageResizeNN(image, newWidth, newHeight);
}
void PonyImageResizeCanvas(Image * image, int newWidth, int newHeight, int offsetX, int offsetY, Color* fill) {
	ImageResizeCanvas(image, newWidth, newHeight, offsetX, offsetY, *fill);
}
void PonyImageMipmaps(Image * image) {
	ImageMipmaps(image);
}
void PonyImageDither(Image * image, int rBpp, int gBpp, int bBpp, int aBpp) {
	ImageDither(image, rBpp, gBpp, bBpp, aBpp);
}
void PonyImageFlipVertical(Image * image) {
	ImageFlipVertical(image);
}
void PonyImageFlipHorizontal(Image * image) {
	ImageFlipHorizontal(image);
}
void PonyImageRotate(Image * image, int degrees) {
	ImageRotate(image, degrees);
}
void PonyImageRotateCW(Image * image) {
	ImageRotateCW(image);
}
void PonyImageRotateCCW(Image * image) {
	ImageRotateCCW(image);
}
void PonyImageColorTint(Image * image, Color* color) {
	ImageColorTint(image, *color);
}
void PonyImageColorInvert(Image * image) {
	ImageColorInvert(image);
}
void PonyImageColorGrayscale(Image * image) {
	ImageColorGrayscale(image);
}
void PonyImageColorContrast(Image * image, float contrast) {
	ImageColorContrast(image, contrast);
}
void PonyImageColorBrightness(Image * image, int brightness) {
	ImageColorBrightness(image, brightness);
}
void PonyImageColorReplace(Image * image, Color* color, Color* replace) {
	ImageColorReplace(image, *color, *replace);
}
void PonyUnloadImageColors(Color * colors) {
	UnloadImageColors(colors);
}
void PonyUnloadImagePalette(Color * colors) {
	UnloadImagePalette(colors);
}
Rectangle* PonyGetImageAlphaBorder(Image* image, float threshold) {
	Rectangle result = GetImageAlphaBorder(*image, threshold);
	pony_ctx_t* ctx = pony_ctx();
	Rectangle* result_ptr = (Rectangle*)pony_alloc(ctx, sizeof(Rectangle));
	*result_ptr = result;
	return result_ptr;
}
Color* PonyGetImageColor(Image* image, int x, int y) {
	Color result = GetImageColor(*image, x, y);
	pony_ctx_t* ctx = pony_ctx();
	Color* result_ptr = (Color*)pony_alloc(ctx, sizeof(Color));
	*result_ptr = result;
	return result_ptr;
}
void PonyImageClearBackground(Image * dst, Color* color) {
	ImageClearBackground(dst, *color);
}
void PonyImageDrawPixel(Image * dst, int posX, int posY, Color* color) {
	ImageDrawPixel(dst, posX, posY, *color);
}
void PonyImageDrawPixelV(Image * dst, Vector2* position, Color* color) {
	ImageDrawPixelV(dst, *position, *color);
}
void PonyImageDrawLine(Image * dst, int startPosX, int startPosY, int endPosX, int endPosY, Color* color) {
	ImageDrawLine(dst, startPosX, startPosY, endPosX, endPosY, *color);
}
void PonyImageDrawLineV(Image * dst, Vector2* start, Vector2* end, Color* color) {
	ImageDrawLineV(dst, *start, *end, *color);
}
void PonyImageDrawCircle(Image * dst, int centerX, int centerY, int radius, Color* color) {
	ImageDrawCircle(dst, centerX, centerY, radius, *color);
}
void PonyImageDrawCircleV(Image * dst, Vector2* center, int radius, Color* color) {
	ImageDrawCircleV(dst, *center, radius, *color);
}
void PonyImageDrawCircleLines(Image * dst, int centerX, int centerY, int radius, Color* color) {
	ImageDrawCircleLines(dst, centerX, centerY, radius, *color);
}
void PonyImageDrawCircleLinesV(Image * dst, Vector2* center, int radius, Color* color) {
	ImageDrawCircleLinesV(dst, *center, radius, *color);
}
void PonyImageDrawRectangle(Image * dst, int posX, int posY, int width, int height, Color* color) {
	ImageDrawRectangle(dst, posX, posY, width, height, *color);
}
void PonyImageDrawRectangleV(Image * dst, Vector2* position, Vector2* size, Color* color) {
	ImageDrawRectangleV(dst, *position, *size, *color);
}
void PonyImageDrawRectangleRec(Image * dst, Rectangle* rec, Color* color) {
	ImageDrawRectangleRec(dst, *rec, *color);
}
void PonyImageDrawRectangleLines(Image * dst, Rectangle* rec, int thick, Color* color) {
	ImageDrawRectangleLines(dst, *rec, thick, *color);
}
void PonyImageDraw(Image * dst, Image* src, Rectangle* srcRec, Rectangle* dstRec, Color* tint) {
	ImageDraw(dst, *src, *srcRec, *dstRec, *tint);
}
void PonyImageDrawText(Image * dst, const char * text, int posX, int posY, int fontSize, Color* color) {
	ImageDrawText(dst, text, posX, posY, fontSize, *color);
}
void PonyImageDrawTextEx(Image * dst, Font* font, const char * text, Vector2* position, float fontSize, float spacing, Color* tint) {
	ImageDrawTextEx(dst, *font, text, *position, fontSize, spacing, *tint);
}
Texture2D* PonyLoadTexture(const char * fileName) {
	Texture2D result = LoadTexture(fileName);
	pony_ctx_t* ctx = pony_ctx();
	Texture2D* result_ptr = (Texture2D*)pony_alloc(ctx, sizeof(Texture2D));
	*result_ptr = result;
	return result_ptr;
}
Texture2D* PonyLoadTextureFromImage(Image* image) {
	Texture2D result = LoadTextureFromImage(*image);
	pony_ctx_t* ctx = pony_ctx();
	Texture2D* result_ptr = (Texture2D*)pony_alloc(ctx, sizeof(Texture2D));
	*result_ptr = result;
	return result_ptr;
}
TextureCubemap* PonyLoadTextureCubemap(Image* image, int layout) {
	TextureCubemap result = LoadTextureCubemap(*image, layout);
	pony_ctx_t* ctx = pony_ctx();
	TextureCubemap* result_ptr = (TextureCubemap*)pony_alloc(ctx, sizeof(TextureCubemap));
	*result_ptr = result;
	return result_ptr;
}
RenderTexture2D* PonyLoadRenderTexture(int width, int height) {
	RenderTexture2D result = LoadRenderTexture(width, height);
	pony_ctx_t* ctx = pony_ctx();
	RenderTexture2D* result_ptr = (RenderTexture2D*)pony_alloc(ctx, sizeof(RenderTexture2D));
	*result_ptr = result;
	return result_ptr;
}
bool PonyIsTextureReady(Texture2D* texture) {
	bool result = IsTextureReady(*texture);
	return result;
}
void PonyUnloadTexture(Texture2D* texture) {
	UnloadTexture(*texture);
}
bool PonyIsRenderTextureReady(RenderTexture2D* target) {
	bool result = IsRenderTextureReady(*target);
	return result;
}
void PonyUnloadRenderTexture(RenderTexture2D* target) {
	UnloadRenderTexture(*target);
}
void PonyUpdateTexture(Texture2D* texture, const void * pixels) {
	UpdateTexture(*texture, pixels);
}
void PonyUpdateTextureRec(Texture2D* texture, Rectangle* rec, const void * pixels) {
	UpdateTextureRec(*texture, *rec, pixels);
}
void PonyGenTextureMipmaps(Texture2D * texture) {
	GenTextureMipmaps(texture);
}
void PonySetTextureFilter(Texture2D* texture, int filter) {
	SetTextureFilter(*texture, filter);
}
void PonySetTextureWrap(Texture2D* texture, int wrap) {
	SetTextureWrap(*texture, wrap);
}
void PonyDrawTexture(Texture2D* texture, int posX, int posY, Color* tint) {
	DrawTexture(*texture, posX, posY, *tint);
}
void PonyDrawTextureV(Texture2D* texture, Vector2* position, Color* tint) {
	DrawTextureV(*texture, *position, *tint);
}
void PonyDrawTextureEx(Texture2D* texture, Vector2* position, float rotation, float scale, Color* tint) {
	DrawTextureEx(*texture, *position, rotation, scale, *tint);
}
void PonyDrawTextureRec(Texture2D* texture, Rectangle* source, Vector2* position, Color* tint) {
	DrawTextureRec(*texture, *source, *position, *tint);
}
void PonyDrawTexturePro(Texture2D* texture, Rectangle* source, Rectangle* dest, Vector2* origin, float rotation, Color* tint) {
	DrawTexturePro(*texture, *source, *dest, *origin, rotation, *tint);
}
void PonyDrawTextureNPatch(Texture2D* texture, NPatchInfo* nPatchInfo, Rectangle* dest, Vector2* origin, float rotation, Color* tint) {
	DrawTextureNPatch(*texture, *nPatchInfo, *dest, *origin, rotation, *tint);
}
Color* PonyFade(Color* color, float alpha) {
	Color result = Fade(*color, alpha);
	pony_ctx_t* ctx = pony_ctx();
	Color* result_ptr = (Color*)pony_alloc(ctx, sizeof(Color));
	*result_ptr = result;
	return result_ptr;
}
int PonyColorToInt(Color* color) {
	int result = ColorToInt(*color);
	return result;
}
Vector4* PonyColorNormalize(Color* color) {
	Vector4 result = ColorNormalize(*color);
	pony_ctx_t* ctx = pony_ctx();
	Vector4* result_ptr = (Vector4*)pony_alloc(ctx, sizeof(Vector4));
	*result_ptr = result;
	return result_ptr;
}
Color* PonyColorFromNormalized(Vector4* normalized) {
	Color result = ColorFromNormalized(*normalized);
	pony_ctx_t* ctx = pony_ctx();
	Color* result_ptr = (Color*)pony_alloc(ctx, sizeof(Color));
	*result_ptr = result;
	return result_ptr;
}
Vector3* PonyColorToHSV(Color* color) {
	Vector3 result = ColorToHSV(*color);
	pony_ctx_t* ctx = pony_ctx();
	Vector3* result_ptr = (Vector3*)pony_alloc(ctx, sizeof(Vector3));
	*result_ptr = result;
	return result_ptr;
}
Color* PonyColorFromHSV(float hue, float saturation, float value) {
	Color result = ColorFromHSV(hue, saturation, value);
	pony_ctx_t* ctx = pony_ctx();
	Color* result_ptr = (Color*)pony_alloc(ctx, sizeof(Color));
	*result_ptr = result;
	return result_ptr;
}
Color* PonyColorTint(Color* color, Color* tint) {
	Color result = ColorTint(*color, *tint);
	pony_ctx_t* ctx = pony_ctx();
	Color* result_ptr = (Color*)pony_alloc(ctx, sizeof(Color));
	*result_ptr = result;
	return result_ptr;
}
Color* PonyColorBrightness(Color* color, float factor) {
	Color result = ColorBrightness(*color, factor);
	pony_ctx_t* ctx = pony_ctx();
	Color* result_ptr = (Color*)pony_alloc(ctx, sizeof(Color));
	*result_ptr = result;
	return result_ptr;
}
Color* PonyColorContrast(Color* color, float contrast) {
	Color result = ColorContrast(*color, contrast);
	pony_ctx_t* ctx = pony_ctx();
	Color* result_ptr = (Color*)pony_alloc(ctx, sizeof(Color));
	*result_ptr = result;
	return result_ptr;
}
Color* PonyColorAlpha(Color* color, float alpha) {
	Color result = ColorAlpha(*color, alpha);
	pony_ctx_t* ctx = pony_ctx();
	Color* result_ptr = (Color*)pony_alloc(ctx, sizeof(Color));
	*result_ptr = result;
	return result_ptr;
}
Color* PonyColorAlphaBlend(Color* dst, Color* src, Color* tint) {
	Color result = ColorAlphaBlend(*dst, *src, *tint);
	pony_ctx_t* ctx = pony_ctx();
	Color* result_ptr = (Color*)pony_alloc(ctx, sizeof(Color));
	*result_ptr = result;
	return result_ptr;
}
Color* PonyGetColor(unsigned int hexValue) {
	Color result = GetColor(hexValue);
	pony_ctx_t* ctx = pony_ctx();
	Color* result_ptr = (Color*)pony_alloc(ctx, sizeof(Color));
	*result_ptr = result;
	return result_ptr;
}
Color* PonyGetPixelColor(void * srcPtr, int format) {
	Color result = GetPixelColor(srcPtr, format);
	pony_ctx_t* ctx = pony_ctx();
	Color* result_ptr = (Color*)pony_alloc(ctx, sizeof(Color));
	*result_ptr = result;
	return result_ptr;
}
void PonySetPixelColor(void * dstPtr, Color* color, int format) {
	SetPixelColor(dstPtr, *color, format);
}
int PonyGetPixelDataSize(int width, int height, int format) {
	int result = GetPixelDataSize(width, height, format);
	return result;
}
Font* PonyGetFontDefault() {
	Font result = GetFontDefault();
	pony_ctx_t* ctx = pony_ctx();
	Font* result_ptr = (Font*)pony_alloc(ctx, sizeof(Font));
	*result_ptr = result;
	return result_ptr;
}
Font* PonyLoadFont(const char * fileName) {
	Font result = LoadFont(fileName);
	pony_ctx_t* ctx = pony_ctx();
	Font* result_ptr = (Font*)pony_alloc(ctx, sizeof(Font));
	*result_ptr = result;
	return result_ptr;
}
Font* PonyLoadFontEx(const char * fileName, int fontSize, int * codepoints, int codepointCount) {
	Font result = LoadFontEx(fileName, fontSize, codepoints, codepointCount);
	pony_ctx_t* ctx = pony_ctx();
	Font* result_ptr = (Font*)pony_alloc(ctx, sizeof(Font));
	*result_ptr = result;
	return result_ptr;
}
Font* PonyLoadFontFromImage(Image* image, Color* key, int firstChar) {
	Font result = LoadFontFromImage(*image, *key, firstChar);
	pony_ctx_t* ctx = pony_ctx();
	Font* result_ptr = (Font*)pony_alloc(ctx, sizeof(Font));
	*result_ptr = result;
	return result_ptr;
}
Font* PonyLoadFontFromMemory(const char * fileType, const unsigned char * fileData, int dataSize, int fontSize, int * codepoints, int codepointCount) {
	Font result = LoadFontFromMemory(fileType, fileData, dataSize, fontSize, codepoints, codepointCount);
	pony_ctx_t* ctx = pony_ctx();
	Font* result_ptr = (Font*)pony_alloc(ctx, sizeof(Font));
	*result_ptr = result;
	return result_ptr;
}
bool PonyIsFontReady(Font* font) {
	bool result = IsFontReady(*font);
	return result;
}
Image* PonyGenImageFontAtlas(const GlyphInfo * glyphs, Rectangle ** glyphRecs, int glyphCount, int fontSize, int padding, int packMethod) {
	Image result = GenImageFontAtlas(glyphs, glyphRecs, glyphCount, fontSize, padding, packMethod);
	pony_ctx_t* ctx = pony_ctx();
	Image* result_ptr = (Image*)pony_alloc(ctx, sizeof(Image));
	*result_ptr = result;
	return result_ptr;
}
void PonyUnloadFontData(GlyphInfo * glyphs, int glyphCount) {
	UnloadFontData(glyphs, glyphCount);
}
void PonyUnloadFont(Font* font) {
	UnloadFont(*font);
}
bool PonyExportFontAsCode(Font* font, const char * fileName) {
	bool result = ExportFontAsCode(*font, fileName);
	return result;
}
void PonyDrawFPS(int posX, int posY) {
	DrawFPS(posX, posY);
}
void PonyDrawText(const char * text, int posX, int posY, int fontSize, Color* color) {
	DrawText(text, posX, posY, fontSize, *color);
}
void PonyDrawTextEx(Font* font, const char * text, Vector2* position, float fontSize, float spacing, Color* tint) {
	DrawTextEx(*font, text, *position, fontSize, spacing, *tint);
}
void PonyDrawTextPro(Font* font, const char * text, Vector2* position, Vector2* origin, float rotation, float fontSize, float spacing, Color* tint) {
	DrawTextPro(*font, text, *position, *origin, rotation, fontSize, spacing, *tint);
}
void PonyDrawTextCodepoint(Font* font, int codepoint, Vector2* position, float fontSize, Color* tint) {
	DrawTextCodepoint(*font, codepoint, *position, fontSize, *tint);
}
void PonyDrawTextCodepoints(Font* font, const int * codepoints, int codepointCount, Vector2* position, float fontSize, float spacing, Color* tint) {
	DrawTextCodepoints(*font, codepoints, codepointCount, *position, fontSize, spacing, *tint);
}
void PonySetTextLineSpacing(int spacing) {
	SetTextLineSpacing(spacing);
}
int PonyMeasureText(const char * text, int fontSize) {
	int result = MeasureText(text, fontSize);
	return result;
}
Vector2* PonyMeasureTextEx(Font* font, const char * text, float fontSize, float spacing) {
	Vector2 result = MeasureTextEx(*font, text, fontSize, spacing);
	pony_ctx_t* ctx = pony_ctx();
	Vector2* result_ptr = (Vector2*)pony_alloc(ctx, sizeof(Vector2));
	*result_ptr = result;
	return result_ptr;
}
int PonyGetGlyphIndex(Font* font, int codepoint) {
	int result = GetGlyphIndex(*font, codepoint);
	return result;
}
GlyphInfo* PonyGetGlyphInfo(Font* font, int codepoint) {
	GlyphInfo result = GetGlyphInfo(*font, codepoint);
	pony_ctx_t* ctx = pony_ctx();
	GlyphInfo* result_ptr = (GlyphInfo*)pony_alloc(ctx, sizeof(GlyphInfo));
	*result_ptr = result;
	return result_ptr;
}
Rectangle* PonyGetGlyphAtlasRec(Font* font, int codepoint) {
	Rectangle result = GetGlyphAtlasRec(*font, codepoint);
	pony_ctx_t* ctx = pony_ctx();
	Rectangle* result_ptr = (Rectangle*)pony_alloc(ctx, sizeof(Rectangle));
	*result_ptr = result;
	return result_ptr;
}
char * PonyLoadUTF8(const int * codepoints, int length) {
	char * result = LoadUTF8(codepoints, length);
	return result;
}
void PonyUnloadUTF8(char * text) {
	UnloadUTF8(text);
}
int * PonyLoadCodepoints(const char * text, int * count) {
	int * result = LoadCodepoints(text, count);
	return result;
}
void PonyUnloadCodepoints(int * codepoints) {
	UnloadCodepoints(codepoints);
}
int PonyGetCodepointCount(const char * text) {
	int result = GetCodepointCount(text);
	return result;
}
int PonyGetCodepoint(const char * text, int * codepointSize) {
	int result = GetCodepoint(text, codepointSize);
	return result;
}
int PonyGetCodepointNext(const char * text, int * codepointSize) {
	int result = GetCodepointNext(text, codepointSize);
	return result;
}
int PonyGetCodepointPrevious(const char * text, int * codepointSize) {
	int result = GetCodepointPrevious(text, codepointSize);
	return result;
}
const char * PonyCodepointToUTF8(int codepoint, int * utf8Size) {
	const char * result = CodepointToUTF8(codepoint, utf8Size);
	return result;
}
int PonyTextCopy(char * dst, const char * src) {
	int result = TextCopy(dst, src);
	return result;
}
bool PonyTextIsEqual(const char * text1, const char * text2) {
	bool result = TextIsEqual(text1, text2);
	return result;
}
unsigned int PonyTextLength(const char * text) {
	unsigned int result = TextLength(text);
	return result;
}
const char * PonyTextSubtext(const char * text, int position, int length) {
	const char * result = TextSubtext(text, position, length);
	return result;
}
char * PonyTextReplace(const char * text, const char * replace, const char * by) {
	char * result = TextReplace(text, replace, by);
	return result;
}
char * PonyTextInsert(const char * text, const char * insert, int position) {
	char * result = TextInsert(text, insert, position);
	return result;
}
const char * PonyTextJoin(const char ** textList, int count, const char * delimiter) {
	const char * result = TextJoin(textList, count, delimiter);
	return result;
}
const char ** PonyTextSplit(const char * text, char delimiter, int * count) {
	const char ** result = TextSplit(text, delimiter, count);
	return result;
}
void PonyTextAppend(char * text, const char * append, int * position) {
	TextAppend(text, append, position);
}
int PonyTextFindIndex(const char * text, const char * find) {
	int result = TextFindIndex(text, find);
	return result;
}
const char * PonyTextToUpper(const char * text) {
	const char * result = TextToUpper(text);
	return result;
}
const char * PonyTextToLower(const char * text) {
	const char * result = TextToLower(text);
	return result;
}
const char * PonyTextToPascal(const char * text) {
	const char * result = TextToPascal(text);
	return result;
}
int PonyTextToInteger(const char * text) {
	int result = TextToInteger(text);
	return result;
}
float PonyTextToFloat(const char * text) {
	float result = TextToFloat(text);
	return result;
}
void PonyDrawLine3D(Vector3* startPos, Vector3* endPos, Color* color) {
	DrawLine3D(*startPos, *endPos, *color);
}
void PonyDrawPoint3D(Vector3* position, Color* color) {
	DrawPoint3D(*position, *color);
}
void PonyDrawCircle3D(Vector3* center, float radius, Vector3* rotationAxis, float rotationAngle, Color* color) {
	DrawCircle3D(*center, radius, *rotationAxis, rotationAngle, *color);
}
void PonyDrawTriangle3D(Vector3* v1, Vector3* v2, Vector3* v3, Color* color) {
	DrawTriangle3D(*v1, *v2, *v3, *color);
}
void PonyDrawTriangleStrip3D(Vector3 * points, int pointCount, Color* color) {
	DrawTriangleStrip3D(points, pointCount, *color);
}
void PonyDrawCube(Vector3* position, float width, float height, float length, Color* color) {
	DrawCube(*position, width, height, length, *color);
}
void PonyDrawCubeV(Vector3* position, Vector3* size, Color* color) {
	DrawCubeV(*position, *size, *color);
}
void PonyDrawCubeWires(Vector3* position, float width, float height, float length, Color* color) {
	DrawCubeWires(*position, width, height, length, *color);
}
void PonyDrawCubeWiresV(Vector3* position, Vector3* size, Color* color) {
	DrawCubeWiresV(*position, *size, *color);
}
void PonyDrawSphere(Vector3* centerPos, float radius, Color* color) {
	DrawSphere(*centerPos, radius, *color);
}
void PonyDrawSphereEx(Vector3* centerPos, float radius, int rings, int slices, Color* color) {
	DrawSphereEx(*centerPos, radius, rings, slices, *color);
}
void PonyDrawSphereWires(Vector3* centerPos, float radius, int rings, int slices, Color* color) {
	DrawSphereWires(*centerPos, radius, rings, slices, *color);
}
void PonyDrawCylinder(Vector3* position, float radiusTop, float radiusBottom, float height, int slices, Color* color) {
	DrawCylinder(*position, radiusTop, radiusBottom, height, slices, *color);
}
void PonyDrawCylinderEx(Vector3* startPos, Vector3* endPos, float startRadius, float endRadius, int sides, Color* color) {
	DrawCylinderEx(*startPos, *endPos, startRadius, endRadius, sides, *color);
}
void PonyDrawCylinderWires(Vector3* position, float radiusTop, float radiusBottom, float height, int slices, Color* color) {
	DrawCylinderWires(*position, radiusTop, radiusBottom, height, slices, *color);
}
void PonyDrawCylinderWiresEx(Vector3* startPos, Vector3* endPos, float startRadius, float endRadius, int sides, Color* color) {
	DrawCylinderWiresEx(*startPos, *endPos, startRadius, endRadius, sides, *color);
}
void PonyDrawCapsule(Vector3* startPos, Vector3* endPos, float radius, int slices, int rings, Color* color) {
	DrawCapsule(*startPos, *endPos, radius, slices, rings, *color);
}
void PonyDrawCapsuleWires(Vector3* startPos, Vector3* endPos, float radius, int slices, int rings, Color* color) {
	DrawCapsuleWires(*startPos, *endPos, radius, slices, rings, *color);
}
void PonyDrawPlane(Vector3* centerPos, Vector2* size, Color* color) {
	DrawPlane(*centerPos, *size, *color);
}
void PonyDrawRay(Ray* ray, Color* color) {
	DrawRay(*ray, *color);
}
void PonyDrawGrid(int slices, float spacing) {
	DrawGrid(slices, spacing);
}
Model* PonyLoadModel(const char * fileName) {
	Model result = LoadModel(fileName);
	pony_ctx_t* ctx = pony_ctx();
	Model* result_ptr = (Model*)pony_alloc(ctx, sizeof(Model));
	*result_ptr = result;
	return result_ptr;
}
Model* PonyLoadModelFromMesh(Mesh* mesh) {
	Model result = LoadModelFromMesh(*mesh);
	pony_ctx_t* ctx = pony_ctx();
	Model* result_ptr = (Model*)pony_alloc(ctx, sizeof(Model));
	*result_ptr = result;
	return result_ptr;
}
bool PonyIsModelReady(Model* model) {
	bool result = IsModelReady(*model);
	return result;
}
void PonyUnloadModel(Model* model) {
	UnloadModel(*model);
}
BoundingBox* PonyGetModelBoundingBox(Model* model) {
	BoundingBox result = GetModelBoundingBox(*model);
	pony_ctx_t* ctx = pony_ctx();
	BoundingBox* result_ptr = (BoundingBox*)pony_alloc(ctx, sizeof(BoundingBox));
	*result_ptr = result;
	return result_ptr;
}
void PonyDrawModel(Model* model, Vector3* position, float scale, Color* tint) {
	DrawModel(*model, *position, scale, *tint);
}
void PonyDrawModelEx(Model* model, Vector3* position, Vector3* rotationAxis, float rotationAngle, Vector3* scale, Color* tint) {
	DrawModelEx(*model, *position, *rotationAxis, rotationAngle, *scale, *tint);
}
void PonyDrawModelWires(Model* model, Vector3* position, float scale, Color* tint) {
	DrawModelWires(*model, *position, scale, *tint);
}
void PonyDrawModelWiresEx(Model* model, Vector3* position, Vector3* rotationAxis, float rotationAngle, Vector3* scale, Color* tint) {
	DrawModelWiresEx(*model, *position, *rotationAxis, rotationAngle, *scale, *tint);
}
void PonyDrawBoundingBox(BoundingBox* box, Color* color) {
	DrawBoundingBox(*box, *color);
}
void PonyDrawBillboard(Camera* camera, Texture2D* texture, Vector3* position, float size, Color* tint) {
	DrawBillboard(*camera, *texture, *position, size, *tint);
}
void PonyDrawBillboardRec(Camera* camera, Texture2D* texture, Rectangle* source, Vector3* position, Vector2* size, Color* tint) {
	DrawBillboardRec(*camera, *texture, *source, *position, *size, *tint);
}
void PonyDrawBillboardPro(Camera* camera, Texture2D* texture, Rectangle* source, Vector3* position, Vector3* up, Vector2* size, Vector2* origin, float rotation, Color* tint) {
	DrawBillboardPro(*camera, *texture, *source, *position, *up, *size, *origin, rotation, *tint);
}
void PonyUploadMesh(Mesh * mesh, bool dynamic) {
	UploadMesh(mesh, dynamic);
}
void PonyUpdateMeshBuffer(Mesh* mesh, int index, const void * data, int dataSize, int offset) {
	UpdateMeshBuffer(*mesh, index, data, dataSize, offset);
}
void PonyUnloadMesh(Mesh* mesh) {
	UnloadMesh(*mesh);
}
void PonyDrawMesh(Mesh* mesh, Material* material, Matrix* transform) {
	DrawMesh(*mesh, *material, *transform);
}
void PonyDrawMeshInstanced(Mesh* mesh, Material* material, const Matrix * transforms, int instances) {
	DrawMeshInstanced(*mesh, *material, transforms, instances);
}
BoundingBox* PonyGetMeshBoundingBox(Mesh* mesh) {
	BoundingBox result = GetMeshBoundingBox(*mesh);
	pony_ctx_t* ctx = pony_ctx();
	BoundingBox* result_ptr = (BoundingBox*)pony_alloc(ctx, sizeof(BoundingBox));
	*result_ptr = result;
	return result_ptr;
}
void PonyGenMeshTangents(Mesh * mesh) {
	GenMeshTangents(mesh);
}
bool PonyExportMesh(Mesh* mesh, const char * fileName) {
	bool result = ExportMesh(*mesh, fileName);
	return result;
}
bool PonyExportMeshAsCode(Mesh* mesh, const char * fileName) {
	bool result = ExportMeshAsCode(*mesh, fileName);
	return result;
}
Mesh* PonyGenMeshPoly(int sides, float radius) {
	Mesh result = GenMeshPoly(sides, radius);
	pony_ctx_t* ctx = pony_ctx();
	Mesh* result_ptr = (Mesh*)pony_alloc(ctx, sizeof(Mesh));
	*result_ptr = result;
	return result_ptr;
}
Mesh* PonyGenMeshPlane(float width, float length, int resX, int resZ) {
	Mesh result = GenMeshPlane(width, length, resX, resZ);
	pony_ctx_t* ctx = pony_ctx();
	Mesh* result_ptr = (Mesh*)pony_alloc(ctx, sizeof(Mesh));
	*result_ptr = result;
	return result_ptr;
}
Mesh* PonyGenMeshCube(float width, float height, float length) {
	Mesh result = GenMeshCube(width, height, length);
	pony_ctx_t* ctx = pony_ctx();
	Mesh* result_ptr = (Mesh*)pony_alloc(ctx, sizeof(Mesh));
	*result_ptr = result;
	return result_ptr;
}
Mesh* PonyGenMeshSphere(float radius, int rings, int slices) {
	Mesh result = GenMeshSphere(radius, rings, slices);
	pony_ctx_t* ctx = pony_ctx();
	Mesh* result_ptr = (Mesh*)pony_alloc(ctx, sizeof(Mesh));
	*result_ptr = result;
	return result_ptr;
}
Mesh* PonyGenMeshHemiSphere(float radius, int rings, int slices) {
	Mesh result = GenMeshHemiSphere(radius, rings, slices);
	pony_ctx_t* ctx = pony_ctx();
	Mesh* result_ptr = (Mesh*)pony_alloc(ctx, sizeof(Mesh));
	*result_ptr = result;
	return result_ptr;
}
Mesh* PonyGenMeshCylinder(float radius, float height, int slices) {
	Mesh result = GenMeshCylinder(radius, height, slices);
	pony_ctx_t* ctx = pony_ctx();
	Mesh* result_ptr = (Mesh*)pony_alloc(ctx, sizeof(Mesh));
	*result_ptr = result;
	return result_ptr;
}
Mesh* PonyGenMeshCone(float radius, float height, int slices) {
	Mesh result = GenMeshCone(radius, height, slices);
	pony_ctx_t* ctx = pony_ctx();
	Mesh* result_ptr = (Mesh*)pony_alloc(ctx, sizeof(Mesh));
	*result_ptr = result;
	return result_ptr;
}
Mesh* PonyGenMeshTorus(float radius, float size, int radSeg, int sides) {
	Mesh result = GenMeshTorus(radius, size, radSeg, sides);
	pony_ctx_t* ctx = pony_ctx();
	Mesh* result_ptr = (Mesh*)pony_alloc(ctx, sizeof(Mesh));
	*result_ptr = result;
	return result_ptr;
}
Mesh* PonyGenMeshKnot(float radius, float size, int radSeg, int sides) {
	Mesh result = GenMeshKnot(radius, size, radSeg, sides);
	pony_ctx_t* ctx = pony_ctx();
	Mesh* result_ptr = (Mesh*)pony_alloc(ctx, sizeof(Mesh));
	*result_ptr = result;
	return result_ptr;
}
Mesh* PonyGenMeshHeightmap(Image* heightmap, Vector3* size) {
	Mesh result = GenMeshHeightmap(*heightmap, *size);
	pony_ctx_t* ctx = pony_ctx();
	Mesh* result_ptr = (Mesh*)pony_alloc(ctx, sizeof(Mesh));
	*result_ptr = result;
	return result_ptr;
}
Mesh* PonyGenMeshCubicmap(Image* cubicmap, Vector3* cubeSize) {
	Mesh result = GenMeshCubicmap(*cubicmap, *cubeSize);
	pony_ctx_t* ctx = pony_ctx();
	Mesh* result_ptr = (Mesh*)pony_alloc(ctx, sizeof(Mesh));
	*result_ptr = result;
	return result_ptr;
}
Material* PonyLoadMaterialDefault() {
	Material result = LoadMaterialDefault();
	pony_ctx_t* ctx = pony_ctx();
	Material* result_ptr = (Material*)pony_alloc(ctx, sizeof(Material));
	*result_ptr = result;
	return result_ptr;
}
bool PonyIsMaterialReady(Material* material) {
	bool result = IsMaterialReady(*material);
	return result;
}
void PonyUnloadMaterial(Material* material) {
	UnloadMaterial(*material);
}
void PonySetMaterialTexture(Material * material, int mapType, Texture2D* texture) {
	SetMaterialTexture(material, mapType, *texture);
}
void PonySetModelMeshMaterial(Model * model, int meshId, int materialId) {
	SetModelMeshMaterial(model, meshId, materialId);
}
void PonyUpdateModelAnimation(Model* model, ModelAnimation* anim, int frame) {
	UpdateModelAnimation(*model, *anim, frame);
}
void PonyUnloadModelAnimation(ModelAnimation* anim) {
	UnloadModelAnimation(*anim);
}
void PonyUnloadModelAnimations(ModelAnimation * animations, int animCount) {
	UnloadModelAnimations(animations, animCount);
}
bool PonyIsModelAnimationValid(Model* model, ModelAnimation* anim) {
	bool result = IsModelAnimationValid(*model, *anim);
	return result;
}
bool PonyCheckCollisionSpheres(Vector3* center1, float radius1, Vector3* center2, float radius2) {
	bool result = CheckCollisionSpheres(*center1, radius1, *center2, radius2);
	return result;
}
bool PonyCheckCollisionBoxes(BoundingBox* box1, BoundingBox* box2) {
	bool result = CheckCollisionBoxes(*box1, *box2);
	return result;
}
bool PonyCheckCollisionBoxSphere(BoundingBox* box, Vector3* center, float radius) {
	bool result = CheckCollisionBoxSphere(*box, *center, radius);
	return result;
}
RayCollision* PonyGetRayCollisionSphere(Ray* ray, Vector3* center, float radius) {
	RayCollision result = GetRayCollisionSphere(*ray, *center, radius);
	pony_ctx_t* ctx = pony_ctx();
	RayCollision* result_ptr = (RayCollision*)pony_alloc(ctx, sizeof(RayCollision));
	*result_ptr = result;
	return result_ptr;
}
RayCollision* PonyGetRayCollisionBox(Ray* ray, BoundingBox* box) {
	RayCollision result = GetRayCollisionBox(*ray, *box);
	pony_ctx_t* ctx = pony_ctx();
	RayCollision* result_ptr = (RayCollision*)pony_alloc(ctx, sizeof(RayCollision));
	*result_ptr = result;
	return result_ptr;
}
RayCollision* PonyGetRayCollisionMesh(Ray* ray, Mesh* mesh, Matrix* transform) {
	RayCollision result = GetRayCollisionMesh(*ray, *mesh, *transform);
	pony_ctx_t* ctx = pony_ctx();
	RayCollision* result_ptr = (RayCollision*)pony_alloc(ctx, sizeof(RayCollision));
	*result_ptr = result;
	return result_ptr;
}
RayCollision* PonyGetRayCollisionTriangle(Ray* ray, Vector3* p1, Vector3* p2, Vector3* p3) {
	RayCollision result = GetRayCollisionTriangle(*ray, *p1, *p2, *p3);
	pony_ctx_t* ctx = pony_ctx();
	RayCollision* result_ptr = (RayCollision*)pony_alloc(ctx, sizeof(RayCollision));
	*result_ptr = result;
	return result_ptr;
}
RayCollision* PonyGetRayCollisionQuad(Ray* ray, Vector3* p1, Vector3* p2, Vector3* p3, Vector3* p4) {
	RayCollision result = GetRayCollisionQuad(*ray, *p1, *p2, *p3, *p4);
	pony_ctx_t* ctx = pony_ctx();
	RayCollision* result_ptr = (RayCollision*)pony_alloc(ctx, sizeof(RayCollision));
	*result_ptr = result;
	return result_ptr;
}
void PonyInitAudioDevice() {
	InitAudioDevice();
}
void PonyCloseAudioDevice() {
	CloseAudioDevice();
}
bool PonyIsAudioDeviceReady() {
	bool result = IsAudioDeviceReady();
	return result;
}
void PonySetMasterVolume(float volume) {
	SetMasterVolume(volume);
}
float PonyGetMasterVolume() {
	float result = GetMasterVolume();
	return result;
}
Wave* PonyLoadWave(const char * fileName) {
	Wave result = LoadWave(fileName);
	pony_ctx_t* ctx = pony_ctx();
	Wave* result_ptr = (Wave*)pony_alloc(ctx, sizeof(Wave));
	*result_ptr = result;
	return result_ptr;
}
Wave* PonyLoadWaveFromMemory(const char * fileType, const unsigned char * fileData, int dataSize) {
	Wave result = LoadWaveFromMemory(fileType, fileData, dataSize);
	pony_ctx_t* ctx = pony_ctx();
	Wave* result_ptr = (Wave*)pony_alloc(ctx, sizeof(Wave));
	*result_ptr = result;
	return result_ptr;
}
bool PonyIsWaveReady(Wave* wave) {
	bool result = IsWaveReady(*wave);
	return result;
}
Sound* PonyLoadSound(const char * fileName) {
	Sound result = LoadSound(fileName);
	pony_ctx_t* ctx = pony_ctx();
	Sound* result_ptr = (Sound*)pony_alloc(ctx, sizeof(Sound));
	*result_ptr = result;
	return result_ptr;
}
Sound* PonyLoadSoundFromWave(Wave* wave) {
	Sound result = LoadSoundFromWave(*wave);
	pony_ctx_t* ctx = pony_ctx();
	Sound* result_ptr = (Sound*)pony_alloc(ctx, sizeof(Sound));
	*result_ptr = result;
	return result_ptr;
}
Sound* PonyLoadSoundAlias(Sound* source) {
	Sound result = LoadSoundAlias(*source);
	pony_ctx_t* ctx = pony_ctx();
	Sound* result_ptr = (Sound*)pony_alloc(ctx, sizeof(Sound));
	*result_ptr = result;
	return result_ptr;
}
bool PonyIsSoundReady(Sound* sound) {
	bool result = IsSoundReady(*sound);
	return result;
}
void PonyUpdateSound(Sound* sound, const void * data, int sampleCount) {
	UpdateSound(*sound, data, sampleCount);
}
void PonyUnloadWave(Wave* wave) {
	UnloadWave(*wave);
}
void PonyUnloadSound(Sound* sound) {
	UnloadSound(*sound);
}
void PonyUnloadSoundAlias(Sound* alias) {
	UnloadSoundAlias(*alias);
}
bool PonyExportWave(Wave* wave, const char * fileName) {
	bool result = ExportWave(*wave, fileName);
	return result;
}
bool PonyExportWaveAsCode(Wave* wave, const char * fileName) {
	bool result = ExportWaveAsCode(*wave, fileName);
	return result;
}
void PonyPlaySound(Sound* sound) {
	PlaySound(*sound);
}
void PonyStopSound(Sound* sound) {
	StopSound(*sound);
}
void PonyPauseSound(Sound* sound) {
	PauseSound(*sound);
}
void PonyResumeSound(Sound* sound) {
	ResumeSound(*sound);
}
bool PonyIsSoundPlaying(Sound* sound) {
	bool result = IsSoundPlaying(*sound);
	return result;
}
void PonySetSoundVolume(Sound* sound, float volume) {
	SetSoundVolume(*sound, volume);
}
void PonySetSoundPitch(Sound* sound, float pitch) {
	SetSoundPitch(*sound, pitch);
}
void PonySetSoundPan(Sound* sound, float pan) {
	SetSoundPan(*sound, pan);
}
Wave* PonyWaveCopy(Wave* wave) {
	Wave result = WaveCopy(*wave);
	pony_ctx_t* ctx = pony_ctx();
	Wave* result_ptr = (Wave*)pony_alloc(ctx, sizeof(Wave));
	*result_ptr = result;
	return result_ptr;
}
void PonyWaveCrop(Wave * wave, int initSample, int finalSample) {
	WaveCrop(wave, initSample, finalSample);
}
void PonyWaveFormat(Wave * wave, int sampleRate, int sampleSize, int channels) {
	WaveFormat(wave, sampleRate, sampleSize, channels);
}
float * PonyLoadWaveSamples(Wave* wave) {
	float * result = LoadWaveSamples(*wave);
	return result;
}
void PonyUnloadWaveSamples(float * samples) {
	UnloadWaveSamples(samples);
}
Music* PonyLoadMusicStream(const char * fileName) {
	Music result = LoadMusicStream(fileName);
	pony_ctx_t* ctx = pony_ctx();
	Music* result_ptr = (Music*)pony_alloc(ctx, sizeof(Music));
	*result_ptr = result;
	return result_ptr;
}
Music* PonyLoadMusicStreamFromMemory(const char * fileType, const unsigned char * data, int dataSize) {
	Music result = LoadMusicStreamFromMemory(fileType, data, dataSize);
	pony_ctx_t* ctx = pony_ctx();
	Music* result_ptr = (Music*)pony_alloc(ctx, sizeof(Music));
	*result_ptr = result;
	return result_ptr;
}
bool PonyIsMusicReady(Music* music) {
	bool result = IsMusicReady(*music);
	return result;
}
void PonyUnloadMusicStream(Music* music) {
	UnloadMusicStream(*music);
}
void PonyPlayMusicStream(Music* music) {
	PlayMusicStream(*music);
}
bool PonyIsMusicStreamPlaying(Music* music) {
	bool result = IsMusicStreamPlaying(*music);
	return result;
}
void PonyUpdateMusicStream(Music* music) {
	UpdateMusicStream(*music);
}
void PonyStopMusicStream(Music* music) {
	StopMusicStream(*music);
}
void PonyPauseMusicStream(Music* music) {
	PauseMusicStream(*music);
}
void PonyResumeMusicStream(Music* music) {
	ResumeMusicStream(*music);
}
void PonySeekMusicStream(Music* music, float position) {
	SeekMusicStream(*music, position);
}
void PonySetMusicVolume(Music* music, float volume) {
	SetMusicVolume(*music, volume);
}
void PonySetMusicPitch(Music* music, float pitch) {
	SetMusicPitch(*music, pitch);
}
void PonySetMusicPan(Music* music, float pan) {
	SetMusicPan(*music, pan);
}
float PonyGetMusicTimeLength(Music* music) {
	float result = GetMusicTimeLength(*music);
	return result;
}
float PonyGetMusicTimePlayed(Music* music) {
	float result = GetMusicTimePlayed(*music);
	return result;
}
AudioStream* PonyLoadAudioStream(unsigned int sampleRate, unsigned int sampleSize, unsigned int channels) {
	AudioStream result = LoadAudioStream(sampleRate, sampleSize, channels);
	pony_ctx_t* ctx = pony_ctx();
	AudioStream* result_ptr = (AudioStream*)pony_alloc(ctx, sizeof(AudioStream));
	*result_ptr = result;
	return result_ptr;
}
bool PonyIsAudioStreamReady(AudioStream* stream) {
	bool result = IsAudioStreamReady(*stream);
	return result;
}
void PonyUnloadAudioStream(AudioStream* stream) {
	UnloadAudioStream(*stream);
}
void PonyUpdateAudioStream(AudioStream* stream, const void * data, int frameCount) {
	UpdateAudioStream(*stream, data, frameCount);
}
bool PonyIsAudioStreamProcessed(AudioStream* stream) {
	bool result = IsAudioStreamProcessed(*stream);
	return result;
}
void PonyPlayAudioStream(AudioStream* stream) {
	PlayAudioStream(*stream);
}
void PonyPauseAudioStream(AudioStream* stream) {
	PauseAudioStream(*stream);
}
void PonyResumeAudioStream(AudioStream* stream) {
	ResumeAudioStream(*stream);
}
bool PonyIsAudioStreamPlaying(AudioStream* stream) {
	bool result = IsAudioStreamPlaying(*stream);
	return result;
}
void PonyStopAudioStream(AudioStream* stream) {
	StopAudioStream(*stream);
}
void PonySetAudioStreamVolume(AudioStream* stream, float volume) {
	SetAudioStreamVolume(*stream, volume);
}
void PonySetAudioStreamPitch(AudioStream* stream, float pitch) {
	SetAudioStreamPitch(*stream, pitch);
}
void PonySetAudioStreamPan(AudioStream* stream, float pan) {
	SetAudioStreamPan(*stream, pan);
}
void PonySetAudioStreamBufferSizeDefault(int size) {
	SetAudioStreamBufferSizeDefault(size);
}
void PonySetAudioStreamCallback(AudioStream* stream, AudioCallback callback) {
	SetAudioStreamCallback(*stream, callback);
}
void PonyAttachAudioStreamProcessor(AudioStream* stream, AudioCallback processor) {
	AttachAudioStreamProcessor(*stream, processor);
}
void PonyDetachAudioStreamProcessor(AudioStream* stream, AudioCallback processor) {
	DetachAudioStreamProcessor(*stream, processor);
}
void PonyAttachAudioMixedProcessor(AudioCallback processor) {
	AttachAudioMixedProcessor(processor);
}
void PonyDetachAudioMixedProcessor(AudioCallback processor) {
	DetachAudioMixedProcessor(processor);
}
