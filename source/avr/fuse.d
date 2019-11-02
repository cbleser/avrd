/**
	Fuse Support

	Introduction:

	The Fuse API allows a user to specify the fuse settings for the specific
	AVR device they are compiling for. These fuse settings will be placed
	in a special section in the ELF output file, after linking.

	Programming tools can take advantage of the fuse information embedded in
	the ELF file, by extracting this information and determining if the fuses
	need to be programmed before programming the Flash and EEPROM memories.
	This also allows a single ELF file to contain all the
	information needed to program an AVR. 
	
	Fuse_API:
	
	Each I/O header file must define the `FUSE_MEMORY_SIZE` enum which is
	defined to the number of fuse bytes that exist in the AVR device.
	
	A new type, __fuse_t, is defined as a structure. The number of fields in 
	this structure are determined by the number of fuse bytes in the 
	`FUSE_MEMORY_SIZE` enum.
	
	If `FUSE_MEMORY_SIZE` == 1, there is only a single field: low, of type
	ubyte.
	
	If `FUSE_MEMORY_SIZE` == 2, there are two fields: low, and high, of type
	ubyte.
	
	If `FUSE_MEMORY_SIZE` == 3, there are three fields: low, high, and extended,
	of type ubyte.
	
	If `FUSE_MEMORY_SIZE` > 3, there is a single field: bytes, which is an array
	of ubyte with the size of the array being `FUSE_MEMORY_SIZE`.
	
	A convenience template, FUSES, is defined that declares a variable, __fuse,
	of type `fuse_t` for linker section stored in `FUSEMEM`. This variable allows
	the end user to easily set the fuse data by using mixin on the template.

	Note: If a device-specific I/O header file has previously defined FUSEMEM,
	then FUSEMEM is not redefined. If a device-specific I/O header file has
	previously defined FUSES, then FUSES is not redefined.

	Each AVR device I/O header file has a set of defined macros which specify the
	actual fuse bits available on that device. The AVR fuses have inverted
	values, logical 1 for an unprogrammed (disabled) bit and logical 0 for a
	programmed (enabled) bit. The defined macros for each individual fuse
	bit represent this in their definition by a bit-wise inversion of a mask.
	For example, the FUSE_EESAVE fuse in the ATmega128 is defined as:

	---
	#define FUSE_EESAVE      ~_BV(3)
	---

	Note: The _BV macro creates a bit mask from a bit number. It is then 
	inverted to represent logical values for a fuse memory byte.
	
	To combine the fuse bits macros together to represent a whole fuse byte,
	use the bitwise AND operator, like so:

	---
	(FUSE_BOOTSZ0 & FUSE_BOOTSZ1 & FUSE_EESAVE & FUSE_SPIEN & FUSE_JTAGEN)
	---
	
	Each device I/O header file also defines macros that provide default values
	for each fuse byte that is available. LFUSE_DEFAULT is defined for a Low
	Fuse byte. HFUSE_DEFAULT is defined for a High Fuse byte. EFUSE_DEFAULT
	is defined for an Extended Fuse byte.
	
	If `FUSE_MEMORY_SIZE` > 3, then the I/O header file defines macros that
	provide default values for each fuse byte like so:
	FUSE0_DEFAULT
	FUSE1_DEFAULT
	FUSE2_DEFAULT
	FUSE3_DEFAULT
	FUSE4_DEFAULT
	....

	Examples:

	Putting all of this together is easy. Using a string in place of a struct initializer for convenience:

	---
	import avr.io;

	mixin(FUSES!q{
		low: LFUSE_DEFAULT,
		high: (FUSE_BOOTSZ0 & FUSE_BOOTSZ1 & FUSE_EESAVE & FUSE_SPIEN & FUSE_JTAGEN),
		extended: EFUSE_DEFAULT,
	});

	extern (C) int main()
	{
		return 0;
	}
	---

	or by directly providing a fuse_t value:

	---
	import avr.io;

	mixin(FUSES!(fuse_t(
		LFUSE_DEFAULT,
		(FUSE_BOOTSZ0 & FUSE_BOOTSZ1 & FUSE_EESAVE & FUSE_SPIEN & FUSE_JTAGEN),
		EFUSE_DEFAULT,
	)));

	extern (C) int main()
	{
		return 0;
	}
	---
	
	However there are a number of caveats that you need to be aware of to
	use this API properly.
	
	The FUSES macro defines a global variable to store the fuse data. This 
	variable is assigned to its own linker section. Assign the desired fuse 
	values immediately in the variable initialization.
	
	The .fuse section in the ELF file will get its values from the initial 
	variable assignment ONLY. This means that you can NOT assign values to 
	this variable in functions and the new values will not be put into the
	ELF .fuse section.
	
	The global variable is declared in the FUSES macro has two leading 
	underscores, which means that it is reserved for the "implementation",
	meaning the library, so it will not conflict with a user-named variable.
	
	Be sure to have the -mmcu=<em>device</em> flag in your compile command line and
	your linker command line to have the correct device selected and to have 
	the correct I/O header file included when you include <avr/io.h>.

	You can print out the contents of the .fuse section in the ELF file by
	using this command line:

	---
	avr-objdump -s -j .fuse <ELF file>
	---

	The section contents shows the address on the left, then the data going from
	lower address to a higher address, left to right.
*/
module avr.fuse;

/* Copyright (c) 2007, Atmel Corporation
   All rights reserved.

   Redistribution and use in source and binary forms, with or without
   modification, are permitted provided that the following conditions are met:

   * Redistributions of source code must retain the above copyright
     notice, this list of conditions and the following disclaimer.

   * Redistributions in binary form must reproduce the above copyright
     notice, this list of conditions and the following disclaimer in
     the documentation and/or other materials provided with the
     distribution.

   * Neither the name of the copyright holders nor the names of
     contributors may be used to endorse or promote products derived
     from this software without specific prior written permission.

  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
  ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
  LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
  CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
  SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
  INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
  CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
  ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  POSSIBILITY OF SUCH DAMAGE. */

/* $Id: fuse.h 2503 2016-02-07 22:59:47Z joerg_wunsch $ */

/* avr/fuse.h - Fuse API */

import avr.io;

static if (!is(typeof(FUSEMEM)))
	enum FUSEMEM = ".fuse";

static if (FUSE_MEMORY_SIZE > 0)
{
	struct __fuse_t
	{
		// default init all fuses to 1
		static if (FUSE_MEMORY_SIZE > 3)
		{
			ubyte[FUSE_MEMORY_SIZE] bytes = 1;
		}
		else static if (FUSE_MEMORY_SIZE == 3)
		{
			ubyte low = 1;
			ubyte high = 1;
			ubyte extended = 1;
		}
		else static if (FUSE_MEMORY_SIZE == 2)
		{
			ubyte low = 1;
			ubyte high = 1;
		}
		else static if (FUSE_MEMORY_SIZE == 1)
		{
			ubyte low = 1;
		}
	}
}

version (LDC)
{
	public import ldc.attributes : section;

	static if (__AVR_XMEGA__)
	{
		alias fuse_t = NVM_FUSES_t;
	}
	else
	{
		alias fuse_t = __fuse_t;
	}

	template FUSES(alias fuseValues)
	{
		static if (is(typeof(fuseValues) == string))
			enum FUSES = `@(section(FUSEMEM)) fuse_t __fuse = {` ~ fuseValues ~ `};`;
		else
			enum FUSES = `@(section(FUSEMEM)) fuse_t __fuse = ` ~ fuseValues.stringof ~ `;`;
	}
}
else
	static assert(false, "Fuses not implemented for this compiler");