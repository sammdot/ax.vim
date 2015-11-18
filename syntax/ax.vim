" Vim syntax file for CSC258 assembly (.ax).

if exists('b:current_syntax')
	finish
endif

syn keyword axInstruction	LDA STA ADD SUB MUL DIV FLA FLS FLM FLD
syn keyword axInstruction	CIF CFI AND IOR XOR BUN BZE BSA BIN INP OUT
hi def link axInstruction	Statement

syn keyword axDataType		I F C B H A W
hi def link axDataType		Statement

syn match axNumber			'\(W\s\+\)\@<=[0-9]\+\>'
syn match axNumber			'\(I\s\+\)\@<=\-\=[0-9]\+\>'
syn match axNumber			'\(F\s\+\)\@<=\-\=[0-9]\+\(\.[0-9]*\)\=\>'
syn match axNumber			'\(H\s\+\)\@<=[0-9A-F]\+\>'
syn match axNumber			'\(B\s\+\)\@<=[01]\+\>'
hi def link axNumber		Number

syn match axLabel			'^[A-Za-z0-9]\+:'
hi def link axLabel			Identifier

let b:current_syntax = 'ax'
