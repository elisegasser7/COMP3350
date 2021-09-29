.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD


.data
	input BYTE 1,2,3,4,5,6,7,8
	shift BYTE 2

.code
main PROC

	MOV EAX, 0
	MOV EBX, 0
	MOV ECX, 0
	MOV EDX, 0

	MOV ah, input[0]
	ADD ah, shift

	MOV al, input[1]
	ADD al, shift

	MOV bh, input[2]
	ADD bh, shift

	MOV bl, input[3]
	ADD bl, shift

	MOV ch, input[4]
	ADD ch, shift

	MOV cl, input[5]
	ADD cl, shift
	
	MOV dh, input[6]
	ADD dh, shift

	MOV dl, input[7]
	ADD dl, shift

	INVOKE ExitProcess,0
main ENDP

END main

