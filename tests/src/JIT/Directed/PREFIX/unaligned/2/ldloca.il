// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

.assembly extern legacy library mscorlib {}
.assembly extern System.Console
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )
  .ver 4:0:0:0
}
.assembly 'ldloca' {
 //This byte field requests that this assembly not be verified at run time and corresponds to this C# declaration:
  //[assembly:System.Security.Permissions.SecurityPermissionAttribute( [mscorlib]System.Security.Permissions.SecurityAction.RequestMinimum, Flags=System.Security.Permissions.SecurityPermissionFlag.SkipVerification )]
  .permission reqmin ['mscorlib']System.Security.Permissions.SecurityPermissionAttribute ( "SkipVerification" = true )
                        }

.class _ldloca {
//-------------------------
// Entry point - Main     -
//-------------------------
.method static int32 main(class [mscorlib]System.String[]) {
.entrypoint
.maxstack	10
.locals	(int32,int32&)
//----------------
// begin testing -
//----------------
	ldloca		0
	stloc		1

	ldc.i4		0xFF
	stloc	0
	ldloc	1
	unaligned. 0x2
	ldind.i4
	ldc.i4		0xFF
	ceq
	brfalse		FAIL
	
	ldc.i4		0xAA
	stloc	0
	ldloc	1
	unaligned. 0x2
	ldind.i4
	ldc.i4		0xAA
	ceq
	brfalse		FAIL

//----------------
PASS:
	ldc.i4	0x64
	ret
//----------------
FAIL:
	ldc.i4	0x0
	ret
}
}