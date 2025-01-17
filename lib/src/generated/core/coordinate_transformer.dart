// Copyright (c) 2015, Alexandre Ardhuin
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

part of '../google_maps_core.dart';

@JsName()
@anonymous
abstract class CoordinateTransformer {
  factory CoordinateTransformer() => $js();
  Float64List? fromLatLngAltitude(
    Object? /*LatLng?|LatLngAltitude?*/ latLngOrLatLngAltitude, [
    Object? /*num?|Float32List?*/ altitudeOrRotations,
    Float32List? rotationsOrScale,
    Float32List? scale,
  ]);

  // synthetic getter for getCameraParams
  CameraParams? get cameraParams => _getCameraParams();
  @JsName('getCameraParams')
  CameraParams? _getCameraParams();
}
