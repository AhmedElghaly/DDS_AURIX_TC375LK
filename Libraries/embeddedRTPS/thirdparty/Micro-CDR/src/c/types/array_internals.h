
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

#ifndef _SRC_TYPES_ARRAY_INTERNALS_H_
#define _SRC_TYPES_ARRAY_INTERNALS_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <ucdr/common.h>

// -------------------------------------------------------------------
//                  INTERNAL SERIALIZATION FUNCTIONS
// -------------------------------------------------------------------
bool ucdr_serialize_array_byte_1(ucdrBuffer* buffer, const uint8* array, const uint32 size);
bool ucdr_serialize_array_byte_2(ucdrBuffer* buffer, ucdrEndianness endianness, const uint16* array, const uint32 size);
bool ucdr_serialize_array_byte_4(ucdrBuffer* buffer, ucdrEndianness endianness, const uint32* array, const uint32 size);
bool ucdr_serialize_array_byte_8(ucdrBuffer* buffer, ucdrEndianness endianness, const uint64* array, const uint32 size);

bool ucdr_deserialize_array_byte_1(ucdrBuffer* buffer, uint8* array, const uint32 size);
bool ucdr_deserialize_array_byte_2(ucdrBuffer* buffer, ucdrEndianness endianness, uint16* array, const uint32 size);
bool ucdr_deserialize_array_byte_4(ucdrBuffer* buffer, ucdrEndianness endianness, uint32* array, const uint32 size);
bool ucdr_deserialize_array_byte_8(ucdrBuffer* buffer, ucdrEndianness endianness, uint64* array, const uint32 size);

#ifdef __cplusplus
}
#endif

#endif //_SRC_TYPES_ARRAY_INTERNALS_H_
