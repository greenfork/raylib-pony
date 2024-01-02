#include <raylib.h>
#include <stdlib.h>
#include <pony.h>

Shader* PonyLoadShader(const char* vsFileName, const char* fsFileName) {
	Shader shader = LoadShader(vsFileName, fsFileName);
	pony_ctx_t* ctx = pony_ctx();
	Shader* shader_ptr = (Shader*)pony_alloc(ctx, sizeof(Shader));
	*shader_ptr = shader;
	return shader_ptr;
}
int PonyGetShaderLocation(Shader *shader, const char *uniformName) {
	return GetShaderLocation(*shader, uniformName);
}

void* erase_type(void* ptr) { return ptr; }

Vector2* alloc_vector2(Vector2 value) {
  Vector2* ptr = (Vector2*) malloc(sizeof(Vector2));
  *ptr = value;
  return ptr;
}
void free_vector2(Vector2* ptr) { free(ptr); }
Vector2 deref_vector2(Vector2* ptr) { return *ptr; }
Vector3* alloc_vector3(Vector3 value) {
  Vector3* ptr = (Vector3*) malloc(sizeof(Vector3));
  *ptr = value;
  return ptr;
}
void free_vector3(Vector3* ptr) { free(ptr); }
Vector3 deref_vector3(Vector3* ptr) { return *ptr; }
Vector4* alloc_vector4(Vector4 value) {
  Vector4* ptr = (Vector4*) malloc(sizeof(Vector4));
  *ptr = value;
  return ptr;
}
void free_vector4(Vector4* ptr) { free(ptr); }
Vector4 deref_vector4(Vector4* ptr) { return *ptr; }
Matrix* alloc_matrix(Matrix value) {
  Matrix* ptr = (Matrix*) malloc(sizeof(Matrix));
  *ptr = value;
  return ptr;
}
void free_matrix(Matrix* ptr) { free(ptr); }
Matrix deref_matrix(Matrix* ptr) { return *ptr; }
Color* alloc_color(Color value) {
  Color* ptr = (Color*) malloc(sizeof(Color));
  *ptr = value;
  return ptr;
}
void free_color(Color* ptr) { free(ptr); }
Color deref_color(Color* ptr) { return *ptr; }
Rectangle* alloc_rectangle(Rectangle value) {
  Rectangle* ptr = (Rectangle*) malloc(sizeof(Rectangle));
  *ptr = value;
  return ptr;
}
void free_rectangle(Rectangle* ptr) { free(ptr); }
Rectangle deref_rectangle(Rectangle* ptr) { return *ptr; }
Image* alloc_image(Image value) {
  Image* ptr = (Image*) malloc(sizeof(Image));
  *ptr = value;
  return ptr;
}
void free_image(Image* ptr) { free(ptr); }
Image deref_image(Image* ptr) { return *ptr; }
Texture* alloc_texture(Texture value) {
  Texture* ptr = (Texture*) malloc(sizeof(Texture));
  *ptr = value;
  return ptr;
}
void free_texture(Texture* ptr) { free(ptr); }
Texture deref_texture(Texture* ptr) { return *ptr; }
RenderTexture* alloc_render_texture(RenderTexture value) {
  RenderTexture* ptr = (RenderTexture*) malloc(sizeof(RenderTexture));
  *ptr = value;
  return ptr;
}
void free_render_texture(RenderTexture* ptr) { free(ptr); }
RenderTexture deref_render_texture(RenderTexture* ptr) { return *ptr; }
NPatchInfo* alloc_n_patch_info(NPatchInfo value) {
  NPatchInfo* ptr = (NPatchInfo*) malloc(sizeof(NPatchInfo));
  *ptr = value;
  return ptr;
}
void free_n_patch_info(NPatchInfo* ptr) { free(ptr); }
NPatchInfo deref_n_patch_info(NPatchInfo* ptr) { return *ptr; }
GlyphInfo* alloc_glyph_info(GlyphInfo value) {
  GlyphInfo* ptr = (GlyphInfo*) malloc(sizeof(GlyphInfo));
  *ptr = value;
  return ptr;
}
void free_glyph_info(GlyphInfo* ptr) { free(ptr); }
GlyphInfo deref_glyph_info(GlyphInfo* ptr) { return *ptr; }
Font* alloc_font(Font value) {
  Font* ptr = (Font*) malloc(sizeof(Font));
  *ptr = value;
  return ptr;
}
void free_font(Font* ptr) { free(ptr); }
Font deref_font(Font* ptr) { return *ptr; }
Camera3D* alloc_camera3_d(Camera3D value) {
  Camera3D* ptr = (Camera3D*) malloc(sizeof(Camera3D));
  *ptr = value;
  return ptr;
}
void free_camera3_d(Camera3D* ptr) { free(ptr); }
Camera3D deref_camera3_d(Camera3D* ptr) { return *ptr; }
Camera2D* alloc_camera2_d(Camera2D value) {
  Camera2D* ptr = (Camera2D*) malloc(sizeof(Camera2D));
  *ptr = value;
  return ptr;
}
void free_camera2_d(Camera2D* ptr) { free(ptr); }
Camera2D deref_camera2_d(Camera2D* ptr) { return *ptr; }
Mesh* alloc_mesh(Mesh value) {
  Mesh* ptr = (Mesh*) malloc(sizeof(Mesh));
  *ptr = value;
  return ptr;
}
void free_mesh(Mesh* ptr) { free(ptr); }
Mesh deref_mesh(Mesh* ptr) { return *ptr; }
Shader* alloc_shader(Shader value) {
  Shader* ptr = (Shader*) malloc(sizeof(Shader));
  *ptr = value;
  return ptr;
}
void free_shader(Shader* ptr) { free(ptr); }
Shader deref_shader(Shader* ptr) { return *ptr; }
MaterialMap* alloc_material_map(MaterialMap value) {
  MaterialMap* ptr = (MaterialMap*) malloc(sizeof(MaterialMap));
  *ptr = value;
  return ptr;
}
void free_material_map(MaterialMap* ptr) { free(ptr); }
MaterialMap deref_material_map(MaterialMap* ptr) { return *ptr; }
Material* alloc_material(Material value) {
  Material* ptr = (Material*) malloc(sizeof(Material));
  *ptr = value;
  return ptr;
}
void free_material(Material* ptr) { free(ptr); }
Material deref_material(Material* ptr) { return *ptr; }
Transform* alloc_transform(Transform value) {
  Transform* ptr = (Transform*) malloc(sizeof(Transform));
  *ptr = value;
  return ptr;
}
void free_transform(Transform* ptr) { free(ptr); }
Transform deref_transform(Transform* ptr) { return *ptr; }
BoneInfo* alloc_bone_info(BoneInfo value) {
  BoneInfo* ptr = (BoneInfo*) malloc(sizeof(BoneInfo));
  *ptr = value;
  return ptr;
}
void free_bone_info(BoneInfo* ptr) { free(ptr); }
BoneInfo deref_bone_info(BoneInfo* ptr) { return *ptr; }
Model* alloc_model(Model value) {
  Model* ptr = (Model*) malloc(sizeof(Model));
  *ptr = value;
  return ptr;
}
void free_model(Model* ptr) { free(ptr); }
Model deref_model(Model* ptr) { return *ptr; }
ModelAnimation* alloc_model_animation(ModelAnimation value) {
  ModelAnimation* ptr = (ModelAnimation*) malloc(sizeof(ModelAnimation));
  *ptr = value;
  return ptr;
}
void free_model_animation(ModelAnimation* ptr) { free(ptr); }
ModelAnimation deref_model_animation(ModelAnimation* ptr) { return *ptr; }
Ray* alloc_ray(Ray value) {
  Ray* ptr = (Ray*) malloc(sizeof(Ray));
  *ptr = value;
  return ptr;
}
void free_ray(Ray* ptr) { free(ptr); }
Ray deref_ray(Ray* ptr) { return *ptr; }
RayCollision* alloc_ray_collision(RayCollision value) {
  RayCollision* ptr = (RayCollision*) malloc(sizeof(RayCollision));
  *ptr = value;
  return ptr;
}
void free_ray_collision(RayCollision* ptr) { free(ptr); }
RayCollision deref_ray_collision(RayCollision* ptr) { return *ptr; }
BoundingBox* alloc_bounding_box(BoundingBox value) {
  BoundingBox* ptr = (BoundingBox*) malloc(sizeof(BoundingBox));
  *ptr = value;
  return ptr;
}
void free_bounding_box(BoundingBox* ptr) { free(ptr); }
BoundingBox deref_bounding_box(BoundingBox* ptr) { return *ptr; }
Wave* alloc_wave(Wave value) {
  Wave* ptr = (Wave*) malloc(sizeof(Wave));
  *ptr = value;
  return ptr;
}
void free_wave(Wave* ptr) { free(ptr); }
Wave deref_wave(Wave* ptr) { return *ptr; }
AudioStream* alloc_audio_stream(AudioStream value) {
  AudioStream* ptr = (AudioStream*) malloc(sizeof(AudioStream));
  *ptr = value;
  return ptr;
}
void free_audio_stream(AudioStream* ptr) { free(ptr); }
AudioStream deref_audio_stream(AudioStream* ptr) { return *ptr; }
Sound* alloc_sound(Sound value) {
  Sound* ptr = (Sound*) malloc(sizeof(Sound));
  *ptr = value;
  return ptr;
}
void free_sound(Sound* ptr) { free(ptr); }
Sound deref_sound(Sound* ptr) { return *ptr; }
Music* alloc_music(Music value) {
  Music* ptr = (Music*) malloc(sizeof(Music));
  *ptr = value;
  return ptr;
}
void free_music(Music* ptr) { free(ptr); }
Music deref_music(Music* ptr) { return *ptr; }
VrDeviceInfo* alloc_vr_device_info(VrDeviceInfo value) {
  VrDeviceInfo* ptr = (VrDeviceInfo*) malloc(sizeof(VrDeviceInfo));
  *ptr = value;
  return ptr;
}
void free_vr_device_info(VrDeviceInfo* ptr) { free(ptr); }
VrDeviceInfo deref_vr_device_info(VrDeviceInfo* ptr) { return *ptr; }
VrStereoConfig* alloc_vr_stereo_config(VrStereoConfig value) {
  VrStereoConfig* ptr = (VrStereoConfig*) malloc(sizeof(VrStereoConfig));
  *ptr = value;
  return ptr;
}
void free_vr_stereo_config(VrStereoConfig* ptr) { free(ptr); }
VrStereoConfig deref_vr_stereo_config(VrStereoConfig* ptr) { return *ptr; }
FilePathList* alloc_file_path_list(FilePathList value) {
  FilePathList* ptr = (FilePathList*) malloc(sizeof(FilePathList));
  *ptr = value;
  return ptr;
}
void free_file_path_list(FilePathList* ptr) { free(ptr); }
FilePathList deref_file_path_list(FilePathList* ptr) { return *ptr; }
AutomationEvent* alloc_automation_event(AutomationEvent value) {
  AutomationEvent* ptr = (AutomationEvent*) malloc(sizeof(AutomationEvent));
  *ptr = value;
  return ptr;
}
void free_automation_event(AutomationEvent* ptr) { free(ptr); }
AutomationEvent deref_automation_event(AutomationEvent* ptr) { return *ptr; }
AutomationEventList* alloc_automation_event_list(AutomationEventList value) {
  AutomationEventList* ptr = (AutomationEventList*) malloc(sizeof(AutomationEventList));
  *ptr = value;
  return ptr;
}
void free_automation_event_list(AutomationEventList* ptr) { free(ptr); }
AutomationEventList deref_automation_event_list(AutomationEventList* ptr) { return *ptr; }
