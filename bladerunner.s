.name "Lenivaya >|<OPA"
.comment "ORWAAAAAAAAR"

unikalnost:		sti r1, %:zalooper, %1
				and r1,%0,r1
				sti r2,%123,%1
				lld :zalooper, r15
				sti r4, %4242, r15
zalooper:	live %66
		ldi %-5,r3,r1
		sti r1,%1234,r3
		ldi %:zalooper,r3,r1
		sti r1,%2345,r3
		sti r1,%3456,r3
		sti r1,%4242,r3
		add r3,r4,r3
		xor r5,r3,r6
		zjmp %:finboucle0
		ld %0,r7
		zjmp %:zalooper
finboucle0:	xor r3,r3,r3
		fork %:zalooper
		zjmp %:zalooper
