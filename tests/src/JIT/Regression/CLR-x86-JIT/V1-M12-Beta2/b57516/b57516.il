// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

.assembly extern legacy library mscorlib {}
.assembly extern System.Console
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )
  .ver 4:0:0:0
}
.assembly ILGEN_0xad3990e {}
.class ILGEN_0xad3990e {
.method static int32 Main() {
.entrypoint
.maxstack	20
.try {
 ldc.i8 3
 ldc.i4 0x5a04fc7d
 conv.ovf.i1
 shr
 conv.i4
 pop
leave END
} catch [mscorlib]System.OverflowException {
pop
leave END
}
END:
ldc.i4 100
ret

}
}
