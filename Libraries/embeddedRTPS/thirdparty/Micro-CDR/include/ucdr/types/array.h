// Copyright 2017 Proyectos y Sistemas de Mantenimiento SL (eProsima).
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#ifndef _MICROCDR_TYPES_ARRAY_H_
#define _MICROCDR_TYPES_ARRAY_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <ucdr/common.h>

// -------------------------------------------------------------------
//                   PUBLIC SERIALIZATION FUNCTIONS
// -------------------------------------------------------------------

UCDRDLLAPI bool ucdr_serialize_array_char(ucdrBuffer* mb, const char* array, const uint32 size);
UCDRDLLAPI bool ucdr_serialize_array_bool(ucdrBuffer* mb, const bool* array, const uint32 size);
UCDRDLLAPI bool ucdr_serialize_array_uint8_t(ucdrBuffer* mb, const uint8* array, const uint32 size);
UCDRDLLAPI bool ucdr_serialize_array_uint16_t(ucdrBuffer* mb, const uint16* array, const uint32 size);
UCDRDLLAPI bool ucdr_serialize_array_uint32_t(ucdrBuffer* mb, const uint32* array, const uint32 size);
UCDRDLLAPI bool ucdr_serialize_array_uint64_t(ucdrBuffer* mb, const uint64* array, const uint32 size);
UCDRDLLAPI bool ucdr_serialize_array_int8_t(ucdrBuffer* mb, const sint8* array, const uint32 size);
UCDRDLLAPI bool ucdr_serialize_array_int16_t(ucdrBuffer* mb, const sint16* array, const uint32 size);
UCDRDLLAPI bool ucdr_serialize_array_int32_t(ucdrBuffer* mb, const sint32* array, const uint32 size);
UCDRDLLAPI bool ucdr_serialize_array_int64_t(ucdrBuffer* mb, const sint64* array, const uint32 size);
UCDRDLLAPI bool ucdr_serialize_array_float(ucdrBuffer* mb, const float* array, const uint32 size);
UCDRDLLAPI bool ucdr_serialize_array_double(ucdrBuffer* mb, const double* array, const uint32 size);

UCDRDLLAPI bool ucdr_deserialize_array_char(ucdrBuffer* mb, char* array, const uint32 size);
UCDRDLLAPI bool ucdr_deserialize_array_bool(ucdrBuffer* mb, bool* array, const uint32 size);
UCDRDLLAPI bool ucdr_deserialize_array_uint8_t(ucdrBuffer* mb, uint8* array, const uint32 size);
UCDRDLLAPI bool ucdr_deserialize_array_uint16_t(ucdrBuffer* mb, uint16* array, const uint32 size);
UCDRDLLAPI bool ucdr_deserialize_array_uint32_t(ucdrBuffer* mb, uint32* array, const uint32 size);
UCDRDLLAPI bool ucdr_deserialize_array_uint64_t(ucdrBuffer* mb, uint64* array, const uint32 size);
UCDRDLLAPI bool ucdr_deserialize_array_int8_t(ucdrBuffer* mb, sint8* array, const uint32 size);
UCDRDLLAPI bool ucdr_deserialize_array_int16_t(ucdrBuffer* mb, sint16* array, const uint32 size);
UCDRDLLAPI bool ucdr_deserialize_array_int32_t(ucdrBuffer* mb, sint32* array, const uint32 size);
UCDRDLLAPI bool ucdr_deserialize_array_int64_t(ucdrBuffer* mb, sint64* array, const uint32 size);
UCDRDLLAPI bool ucdr_deserialize_array_float(ucdrBuffer* mb, float* array, const uint32 size);
UCDRDLLAPI bool ucdr_deserialize_array_double(ucdrBuffer* mb, double* array, const uint32 size);

UCDRDLLAPI bool ucdr_serialize_endian_array_uint16_t(ucdrBuffer* mb, ucdrEndianness endianness, const uint16* array, const uint32 size);
UCDRDLLAPI bool ucdr_serialize_endian_array_uint32_t(ucdrBuffer* mb, ucdrEndianness endianness, const uint32* array, const uint32 size);
UCDRDLLAPI bool ucdr_serialize_endian_array_uint64_t(ucdrBuffer* mb, ucdrEndianness endianness, const uint64* array, const uint32 size);
UCDRDLLAPI bool ucdr_serialize_endian_array_int16_t(ucdrBuffer* mb, ucdrEndianness endianness, const sint16* array, const uint32 size);
UCDRDLLAPI bool ucdr_serialize_endian_array_int32_t(ucdrBuffer* mb, ucdrEndianness endianness, const sint32* array, const uint32 size);
UCDRDLLAPI bool ucdr_serialize_endian_array_int64_t(ucdrBuffer* mb, ucdrEndianness endianness, const sint64* array, const uint32 size);
UCDRDLLAPI bool ucdr_serialize_endian_array_float(ucdrBuffer* mb, ucdrEndianness endianness, const float* array, const uint32 size);
UCDRDLLAPI bool ucdr_serialize_endian_array_double(ucdrBuffer* mb, ucdrEndianness endianness, const double* array, const uint32 size);

UCDRDLLAPI bool ucdr_deserialize_endian_array_uint16_t(ucdrBuffer* mb, ucdrEndianness endianness, uint16* array, const uint32 size);
UCDRDLLAPI bool ucdr_deserialize_endian_array_uint32_t(ucdrBuffer* mb, ucdrEndianness endianness, uint32* array, const uint32 size);
UCDRDLLAPI bool ucdr_deserialize_endian_array_uint64_t(ucdrBuffer* mb, ucdrEndianness endianness, uint64* array, const uint32 size);
UCDRDLLAPI bool ucdr_deserialize_endian_array_int16_t(ucdrBuffer* mb, ucdrEndianness endianness, sint16* array, const uint32 size);
UCDRDLLAPI bool ucdr_deserialize_endian_array_int32_t(ucdrBuffer* mb, ucdrEndianness endianness, sint32* array, const uint32 size);
UCDRDLLAPI bool ucdr_deserialize_endian_array_int64_t(ucdrBuffer* mb, ucdrEndianness endianness, sint64* array, const uint32 size);
UCDRDLLAPI bool ucdr_deserialize_endian_array_float(ucdrBuffer* mb, ucdrEndianness endianness, float* array, const uint32 size);
UCDRDLLAPI bool ucdr_deserialize_endian_array_double(ucdrBuffer* mb, ucdrEndianness endianness, double* array, const uint32 size);

#ifdef __cplusplus
}
#endif

#endif //_MICROCDR_TYPES_ARRAY_H_
