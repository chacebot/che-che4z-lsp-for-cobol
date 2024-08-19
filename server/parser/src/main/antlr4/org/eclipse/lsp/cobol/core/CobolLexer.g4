/*
 * Copyright (c) 2020 Broadcom.
 * The term "Broadcom" refers to Broadcom Inc. and/or its subsidiaries.
 *
 * This program and the accompanying materials are made
 * available under the terms of the Eclipse Public License 2.0
 * which is available at https://www.eclipse.org/legal/epl-2.0/
 *
 * SPDX-License-Identifier: EPL-2.0
 *
 * Contributors:
 *   Broadcom, Inc. - initial API and implementation
 */
    
lexer grammar CobolLexer;

@header {
    import java.util.List;
    import java.util.ArrayList;
}

channels{COMMENTS, TECHNICAL}
@lexer::members {
   boolean enableCobolSpecialSeparators = true;
   public static List<Integer> cobolVerbTokens = new ArrayList();
}
EJECT: E J E C T DOT_FS? -> channel(HIDDEN);
SKIP1 : S K I P '1' DOT_FS? -> channel(HIDDEN);
SKIP2 : S K I P '2' DOT_FS? -> channel(HIDDEN);
SKIP3 : S K I P '3' DOT_FS? -> channel(HIDDEN);

// keywords
ABORT: A B O R T;
ACCEPT : A C C E P T {cobolVerbTokens.add(ACCEPT);};
ACCESS: A C C E S S {cobolVerbTokens.add(ACCESS);};
ADD: A D D {cobolVerbTokens.add(ADD);};
ADDRESS: A D D R E S S {cobolVerbTokens.add(ADDRESS);};
ADVANCING       : A D V A N C I N G {cobolVerbTokens.add(ADVANCING);};
AFTER           : A F T E R {cobolVerbTokens.add(AFTER);};
ALL             : A L L {cobolVerbTokens.add(ALL);};
ALLOCATE        : A L L O C A T E {cobolVerbTokens.add(ALLOCATE);};
ALPHABET        : A L P H A B E T {cobolVerbTokens.add(ALPHABET);};
ALPHABETIC      : A L P H A B E T I C {cobolVerbTokens.add(ALPHABETIC);};
ALPHABETIC_LOWER : A L P H A B E T I C MINUSCHAR L O W E R {cobolVerbTokens.add(ALPHABETIC_LOWER);};
ALPHABETIC_UPPER : A L P H A B E T I C MINUSCHAR U P P E R {cobolVerbTokens.add(ALPHABETIC_UPPER);};
ALPHANUMERIC    : A L P H A N U M E R I C {cobolVerbTokens.add(ALPHANUMERIC);};
ALPHANUMERIC_EDITED : A L P H A N U M E R I C MINUSCHAR E D I T E D {cobolVerbTokens.add(ALPHANUMERIC_EDITED);};
ALSO            : A L S O {cobolVerbTokens.add(ALSO);};
ALTER           : A L T E R {cobolVerbTokens.add(ALTER);};
ALTERNATE       : A L T E R N A T E {cobolVerbTokens.add(ALTERNATE);};
AND             : A N D {cobolVerbTokens.add(AND);};
ANY             : A N Y {cobolVerbTokens.add(ANY);};
APPLY           : A P P L Y {cobolVerbTokens.add(APPLY);};
ARE             : A R E {cobolVerbTokens.add(ARE);};
AREA            : A R E A {cobolVerbTokens.add(AREA);};
AREAS           : A R E A S {cobolVerbTokens.add(AREAS);};
ASCENDING       : A S C E N D I N G {cobolVerbTokens.add(ASCENDING);};
ASCII : A S C I I;
ASSIGN          : A S S I G N {cobolVerbTokens.add(ASSIGN);};
ASSOCIATED_DATA : A S S O C I A T E D UNDERSCORECHAR D A T A;
ASSOCIATED_DATA_LENGTH : A S S O C I A T E D UNDERSCORECHAR D A T A UNDERSCORECHAR L E N G T H;
ATTRIBUTE : A T T R I B U T E;
ATTRIBUTES: A T T R I B U T E S;
AT              : A T {cobolVerbTokens.add(AT);};
AUTHOR          : A U T H O R {cobolVerbTokens.add(AUTHOR);};
BEFORE          : B E F O R E {cobolVerbTokens.add(BEFORE);};
BINARY          : B I N A R Y {cobolVerbTokens.add(BINARY);};
BLANK           : B L A N K {cobolVerbTokens.add(BLANK);};
BLOCK           : B L O C K {cobolVerbTokens.add(BLOCK);};
BOOL : B O O L;
BOOLEAN : B O O L E A N;
BOTTOM          : B O T T O M {cobolVerbTokens.add(BOTTOM);};
BY              : B Y {cobolVerbTokens.add(BY);};
BYFUNCTION : B Y F U N C T I O N;
BYTITLE : B Y T I T L E;
CALL            : C A L L {cobolVerbTokens.add(CALL);};
CANCEL          : C A N C E L {cobolVerbTokens.add(CANCEL);};
CAPABLE : C A P A B L E;
CBL             : C B L {cobolVerbTokens.add(CBL);};
CCSVERSION : C C S V E R S I O N;
CHAINING : C H A I N I N G;
CHANGED : C H A N G E D;
CHANNEL : C H A N N E L;
CHARACTER       : C H A R A C T E R {cobolVerbTokens.add(CHARACTER);};
CHARACTERS      : C H A R A C T E R S {cobolVerbTokens.add(CHARACTERS);};
CLASS           : C L A S S {cobolVerbTokens.add(CLASS);};
CLOCK_UNITS : C L O C K MINUSCHAR U N I T S;
CLOSE           : C L O S E {cobolVerbTokens.add(CLOSE);};
CLOSE_DISPOSITION : C L O S E MINUSCHAR D I S P O S I T I O N;
CODE_SET : C O D E MINUSCHAR S E T {cobolVerbTokens.add(CODE_SET);};
COLLATING       : C O L L A T I N G {cobolVerbTokens.add(COLLATING);};
COMMA           : C O M M A {cobolVerbTokens.add(COMMA);};
COMMITMENT : C O M M I T M E N T;
COMMON          : C O M M O N {cobolVerbTokens.add(COMMON);};
COMP            : C O M P {cobolVerbTokens.add(COMP);};
COMP_1          : C O M P MINUSCHAR '1' {cobolVerbTokens.add(COMP_1);};
COMP_2          : C O M P MINUSCHAR '2' {cobolVerbTokens.add(COMP_2);};
COMP_3          : C O M P MINUSCHAR '3' {cobolVerbTokens.add(COMP_3);};
COMP_4          : C O M P MINUSCHAR '4' {cobolVerbTokens.add(COMP_4);};
COMP_5          : C O M P MINUSCHAR '5' {cobolVerbTokens.add(COMP_5);};
COMPUTATIONAL   : C O M P U T A T I O N A L {cobolVerbTokens.add(COMPUTATIONAL);};
COMPUTATIONAL_1 : C O M P U T A T I O N A L MINUSCHAR '1' {cobolVerbTokens.add(COMPUTATIONAL_1);};
COMPUTATIONAL_2 : C O M P U T A T I O N A L MINUSCHAR '2' {cobolVerbTokens.add(COMPUTATIONAL_2);};
COMPUTATIONAL_3 : C O M P U T A T I O N A L MINUSCHAR '3' {cobolVerbTokens.add(COMPUTATIONAL_3);};
COMPUTATIONAL_4 : C O M P U T A T I O N A L MINUSCHAR '4' {cobolVerbTokens.add(COMPUTATIONAL_4);};
COMPUTATIONAL_5 : C O M P U T A T I O N A L MINUSCHAR '5' {cobolVerbTokens.add(COMPUTATIONAL_5);};
COMPUTE         : C O M P U T E {cobolVerbTokens.add(COMPUTE);};
CONFIGURATION   : C O N F I G U R A T I O N {cobolVerbTokens.add(CONFIGURATION);};
CONTAINS        : C O N T A I N S {cobolVerbTokens.add(CONTAINS);};
CONTENT         : C O N T E N T {cobolVerbTokens.add(CONTENT);};
CONTINUE        : C O N T I N U E {cobolVerbTokens.add(CONTINUE);};
CONTROL : C O N T R O L;
CONVERTING      : C O N V E R T I N G {cobolVerbTokens.add(CONVERTING);};
COPYENTRY : (' *>CPYENTER<URI>' .*? '</URI>') -> channel(TECHNICAL);
COPYEXIT : '*>CPYEXIT' + NEWLINE -> channel(TECHNICAL);
CORR            : C O R R {cobolVerbTokens.add(CORR);};
CORRESPONDING   : C O R R E S P O N D I N G {cobolVerbTokens.add(CORRESPONDING);};
COUNT           : C O U N T {cobolVerbTokens.add(COUNT);};
CR : C R;
CRUNCH : C R U N C H;
CURRENCY        : C U R R E N C Y {cobolVerbTokens.add(CURRENCY);};
CYCLE : C Y C L E;
DACO_CONTROL : D A C O MINUSCHAR C O N T R O L;
DATA            : D A T A {cobolVerbTokens.add(DATA);};
DATE            : D A T E {cobolVerbTokens.add(DATE);};
DATE_COMPILED   : D A T E MINUSCHAR C O M P I L E D {cobolVerbTokens.add(DATE_COMPILED);};
DATE_WRITTEN    : D A T E MINUSCHAR W R I T T E N {cobolVerbTokens.add(DATE_WRITTEN);};
DAY             : D A Y {cobolVerbTokens.add(DAY);};
DAY_OF_WEEK     : D A Y MINUSCHAR O F MINUSCHAR W E E K {cobolVerbTokens.add(DAY_OF_WEEK);};
DBCS            : D B C S {cobolVerbTokens.add(DBCS);};
DEBUGGING       : D E B U G G I N G {cobolVerbTokens.add(DEBUGGING);};
DECIMAL_POINT   : D E C I M A L MINUSCHAR P O I N T {cobolVerbTokens.add(DECIMAL_POINT);};
DECLARATIVES    : D E C L A R A T I V E S {cobolVerbTokens.add(DECLARATIVES);};
DEFAULT         : D E F A U L T {cobolVerbTokens.add(DEFAULT);};
DEFAULT_DISPLAY : D E F A U L T MINUSCHAR D I S P L A Y;
DEFINITION : D E F I N I T I O N;
DELETE          : D E L E T E {cobolVerbTokens.add(DELETE);};
DELIMITED       : D E L I M I T E D {cobolVerbTokens.add(DELIMITED);};
DELIMITER       : D E L I M I T E R {cobolVerbTokens.add(DELIMITER);};
DEPENDING       : D E P E N D I N G {cobolVerbTokens.add(DEPENDING);};
DESCENDING     : D E S C E N D I N G {cobolVerbTokens.add(DESCENDING);};
DETAIL: D E T A I L;
DISABLE : D I S A B L E;
DISK : D I S K;
DISPLAY         : D I S P L A Y {cobolVerbTokens.add(DISPLAY);};
DISPLAY_1       : D I S P L A Y MINUSCHAR '1' {cobolVerbTokens.add(DISPLAY_1);};
DIVIDE          : D I V I D E {cobolVerbTokens.add(DIVIDE);};
DIVISION        : D I V I S I O N {cobolVerbTokens.add(DIVISION);};
DOWN            : D O W N {cobolVerbTokens.add(DOWN);};
DUPLICATES      : D U P L I C A T E S {cobolVerbTokens.add(DUPLICATES);};
DYNAMIC              : D Y N A M I C {cobolVerbTokens.add(DYNAMIC);};
EBCDIC : E B C D I C;
EGCS                 : E G C S {cobolVerbTokens.add(EGCS);};
EGI : E G I;
ELSE                 : E L S E {cobolVerbTokens.add(ELSE);};
ELEMENT : E L E M E N T;
EMI : E M I;
ENABLE : E N A B L E;
ENCODING: E N C O D I N G;
END                  : E N D {cobolVerbTokens.add(END);};
END_ACCEPT : E N D MINUSCHAR A C C E P T;
END_ADD              : E N D MINUSCHAR A D D {cobolVerbTokens.add(END_ADD);};
END_CALL             : E N D MINUSCHAR C A L L {cobolVerbTokens.add(END_CALL);};
END_COMPUTE          : E N D MINUSCHAR C O M P U T E {cobolVerbTokens.add(END_COMPUTE);};
END_DELETE           : E N D MINUSCHAR D E L E T E {cobolVerbTokens.add(END_DELETE);};
END_DIVIDE           : E N D MINUSCHAR D I V I D E {cobolVerbTokens.add(END_DIVIDE);};
END_EVALUATE         : E N D MINUSCHAR E V A L U A T E {cobolVerbTokens.add(END_EVALUATE);};
END_IF               : E N D MINUSCHAR I F {cobolVerbTokens.add(END_IF);};
END_JSON             : E N D MINUSCHAR J S O N {cobolVerbTokens.add(END_JSON);};
END_MULTIPLY         : E N D MINUSCHAR M U L T I P L Y {cobolVerbTokens.add(END_MULTIPLY);};
END_OF_PAGE          : E N D MINUSCHAR O F MINUSCHAR P A G E {cobolVerbTokens.add(END_OF_PAGE);};
END_PERFORM          : E N D MINUSCHAR P E R F O R M {cobolVerbTokens.add(END_PERFORM);};
END_READ             : E N D MINUSCHAR R E A D {cobolVerbTokens.add(END_READ);};
END_RECEIVE : E N D MINUSCHAR R E C E I V E;
END_RETURN           : E N D MINUSCHAR R E T U R N {cobolVerbTokens.add(END_RETURN);};
END_REWRITE          : E N D MINUSCHAR R E W R I T E {cobolVerbTokens.add(END_REWRITE);};
END_SEARCH           : E N D MINUSCHAR S E A R C H {cobolVerbTokens.add(END_SEARCH);};
END_START            : E N D MINUSCHAR S T A R T {cobolVerbTokens.add(END_START);};
END_STRING           : E N D MINUSCHAR S T R I N G {cobolVerbTokens.add(END_STRING);};
END_SUBTRACT         : E N D MINUSCHAR S U B T R A C T {cobolVerbTokens.add(END_SUBTRACT);};
END_UNSTRING         : E N D MINUSCHAR U N S T R I N G {cobolVerbTokens.add(END_UNSTRING);};
END_WRITE            : E N D MINUSCHAR W R I T E {cobolVerbTokens.add(END_WRITE);};
END_XML              : E N D MINUSCHAR X M L {cobolVerbTokens.add(END_XML);};
ENTRY                : E N T R Y {cobolVerbTokens.add(ENTRY);};
ENVIRONMENT          : E N V I R O N M E N T {cobolVerbTokens.add(ENVIRONMENT);};
EOP                  : E O P {cobolVerbTokens.add(EOP);};
EQUAL                : E Q U A L {cobolVerbTokens.add(EQUAL);};
ERROR                : E R R O R {cobolVerbTokens.add(ERROR);};
ESCAPE : E S C A P E;
ESI : E S I;
EVALUATE             : E V A L U A T E {cobolVerbTokens.add(EVALUATE);};
EVERY                : E V E R Y {cobolVerbTokens.add(EVERY);};
EXCEPTION            : E X C E P T I O N {cobolVerbTokens.add(EXCEPTION);};
EXCLUSIVE : E X C L U S I V E;
EXHIBIT : E X H I B I T;
EXIT                 : E X I T {cobolVerbTokens.add(EXIT);};
EXTEND               : E X T E N D {cobolVerbTokens.add(EXTEND);};
EXTERNAL             : E X T E R N A L {cobolVerbTokens.add(EXTERNAL);};
FALSE                : F A L S E {cobolVerbTokens.add(FALSE);};
FD                   : F D {cobolVerbTokens.add(FD);};
FIELD : F I E L D;
FILE                 : F I L E {cobolVerbTokens.add(FILE);};
FILE_CONTROL         : F I L E MINUSCHAR C O N T R O L {cobolVerbTokens.add(FILE_CONTROL);};
FILLER               : F I L L E R {cobolVerbTokens.add(FILLER);};
FIRST                : F I R S T {cobolVerbTokens.add(FIRST);};
FOOTING              : F O O T I N G {cobolVerbTokens.add(FOOTING);};
FOR                  : F O R {cobolVerbTokens.add(FOR);};
FREE                 : F R E E {cobolVerbTokens.add(FREE);};
FROM                 : F R O M {cobolVerbTokens.add(FROM);};
FUNCTION             : F U N C T I O N {cobolVerbTokens.add(FUNCTION);};
FUNCTION_POINTER     : F U N C T I O N MINUSCHAR P O I N T E R {cobolVerbTokens.add(FUNCTION_POINTER);};
GENERATE             : G E N E R A T E {cobolVerbTokens.add(GENERATE);};
GIVING               : G I V I N G {cobolVerbTokens.add(GIVING);};
GLOBAL               : G L O B A L {cobolVerbTokens.add(GLOBAL);};
GO                   : G O {cobolVerbTokens.add(GO);};
GOBACK               : G O B A C K {cobolVerbTokens.add(GOBACK);};
GREATER              : G R E A T E R {cobolVerbTokens.add(GREATER);};
GROUP_USAGE          : G R O U P MINUSCHAR U S A G E {cobolVerbTokens.add(GROUP_USAGE);};
HIGH_VALUE           : H I G H MINUSCHAR V A L U E {cobolVerbTokens.add(HIGH_VALUE);};
HIGH_VALUES          : H I G H MINUSCHAR V A L U E S {cobolVerbTokens.add(HIGH_VALUES);};
I_O                  : I MINUSCHAR O {cobolVerbTokens.add(I_O);};
I_O_CONTROL          : I MINUSCHAR O MINUSCHAR C O N T R O L {cobolVerbTokens.add(I_O_CONTROL);};
ID                   : I D {cobolVerbTokens.add(ID);};
IDENTIFICATION       : I D E N T I F I C A T I O N {cobolVerbTokens.add(IDENTIFICATION); enableCobolSpecialSeparators = true;};
IF                   : I F {cobolVerbTokens.add(IF);};
IMPLICIT : I M P L I C I T;
IN                   : I N {cobolVerbTokens.add(IN);};
INDEX                : I N D E X {cobolVerbTokens.add(INDEX);};
INDEXED              : I N D E X E D {cobolVerbTokens.add(INDEXED);};
INITIAL              : I N I T I A L {cobolVerbTokens.add(INITIAL);};
INITIALIZE           : I N I T I A L I Z E {cobolVerbTokens.add(INITIALIZE);};
INITIALIZED: I N I T I A L I Z E D;
INITIATE : I N I T I A T E;
INPUT                : I N P U T {cobolVerbTokens.add(INPUT);};
INPUT_OUTPUT         : I N P U T MINUSCHAR O U T P U T {cobolVerbTokens.add(INPUT_OUTPUT);};
INSPECT              : I N S P E C T {cobolVerbTokens.add(INSPECT);};
INSTALLATION         : I N S T A L L A T I O N {cobolVerbTokens.add(INSTALLATION);};
INTEGER : I N T E G E R;
INTO                 : I N T O {cobolVerbTokens.add(INTO);};
INTRINSIC : I N T R I N S I C;
INVALID              : I N V A L I D {cobolVerbTokens.add(INVALID);};
INVD : I N V D;
INVDATA : I N V D A T A;
IS                   : I S {cobolVerbTokens.add(IS);};
JSON                 : J S O N {cobolVerbTokens.add(JSON);};
JUST                 : J U S T {cobolVerbTokens.add(JUST);};
JUSTIFIED            : J U S T I F I E D {cobolVerbTokens.add(JUSTIFIED);};
KANJI                : K A N J I {cobolVerbTokens.add(KANJI);};
KEPT : K E P T;
KEY                  : K E Y {cobolVerbTokens.add(KEY);};
KEYBOARD : K E Y B O A R D;
LABEL                : L A B E L {cobolVerbTokens.add(LABEL);};
LAST : L A S T;
LEADING              : L E A D I N G {cobolVerbTokens.add(LEADING);};
LEFT                 : L E F T {cobolVerbTokens.add(LEFT);};
LENGTH               : L E N G T H {cobolVerbTokens.add(LENGTH);};
LESS                 : L E S S {cobolVerbTokens.add(LESS);};
LIBRARY : L I B R A R Y;
LIMIT                : L I M I T {cobolVerbTokens.add(LIMIT);};
LINAGE               : L I N A G E {cobolVerbTokens.add(LINAGE);};
LINAGE_COUNTER       : L I N A G E MINUSCHAR C O U N T E R {cobolVerbTokens.add(LINAGE_COUNTER);};
LINE                 : L I N E {cobolVerbTokens.add(LINE);};
LINES                : L I N E S {cobolVerbTokens.add(LINES);};
LINKAGE              : L I N K A G E {cobolVerbTokens.add(LINKAGE);};
LIST : L I S T;
LOC: L O C;
LOCAL : L O C A L;
LOCAL_STORAGE        : L O C A L MINUSCHAR S T O R A G E {cobolVerbTokens.add(LOCAL_STORAGE);};
LOCK                 : L O C K {cobolVerbTokens.add(LOCK);};
LOW_VALUE            : L O W MINUSCHAR V A L U E;
LOW_VALUES             : L O W MINUSCHAR V A L U E S {cobolVerbTokens.add(LOW_VALUES);};
MAX : M A X;
MEMORY                 : M E M O R Y {cobolVerbTokens.add(MEMORY);};
MERGE                  : M E R G E {cobolVerbTokens.add(MERGE);};
MESSAGE : M E S S A G E;
METHOD                 : M E T H O D {cobolVerbTokens.add(METHOD);};
MMDDYYYY : M M D D Y Y Y Y;
MODE                   : M O D E {cobolVerbTokens.add(MODE);};
MODULES                : M O D U L E S {cobolVerbTokens.add(MODULES);};
MOVE                   : M O V E {cobolVerbTokens.add(MOVE);};
MULTIPLE               : M U L T I P L E {cobolVerbTokens.add(MULTIPLE);};
MULTIPLY               : M U L T I P L Y {cobolVerbTokens.add(MULTIPLY);};
NAME : N A M E;
NAMED : N A M E D;
NAMESPACE : N A M E S P A C E;
NAMESPACE_PREFIX : NAMESPACE MINUSCHAR P R E F I X;
NATIONAL               : N A T I O N A L {cobolVerbTokens.add(NATIONAL);};
NATIONAL_EDITED        : N A T I O N A L MINUSCHAR E D I T E D {cobolVerbTokens.add(NATIONAL_EDITED);};
NATIVE                 : N A T I V E {cobolVerbTokens.add(NATIVE);};
NEGATIVE               : N E G A T I V E {cobolVerbTokens.add(NEGATIVE);};
NETWORK : N E T W O R K;
NEXT                   : N E X T {cobolVerbTokens.add(NEXT);};
NO                     : N O {cobolVerbTokens.add(NO);};
NONNUMERIC : N O N N U M E R I C;
NOT                    : N O T {cobolVerbTokens.add(NOT);};
NULL                   : N U L L {cobolVerbTokens.add(NULL);};
NULLS                  : N U L L S {cobolVerbTokens.add(NULLS);};
NUMERIC                : N U M E R I C {cobolVerbTokens.add(NUMERIC);};
NUMERIC_EDITED         : N U M E R I C MINUSCHAR E D I T E D {cobolVerbTokens.add(NUMERIC_EDITED);};
OBJECT                 : O B J E C T {cobolVerbTokens.add(OBJECT);};
OBJECT_COMPUTER        : O B J E C T MINUSCHAR C O M P U T E R {cobolVerbTokens.add(OBJECT_COMPUTER);};
OCCURS                 : O C C U R S {cobolVerbTokens.add(OCCURS);};
ODT : O D T;
OF                     : O F {cobolVerbTokens.add(OF);};
OFF                    : O F F {cobolVerbTokens.add(OFF);};
OMITTED                : O M I T T E D {cobolVerbTokens.add(OMITTED);};
ON                     : O N {cobolVerbTokens.add(ON);};
OPEN                   : O P E N {cobolVerbTokens.add(OPEN);};
OPTIONAL               : O P T I O N A L {cobolVerbTokens.add(OPTIONAL);};
OR                     : O R {cobolVerbTokens.add(OR);};
ORDER                  : O R D E R {cobolVerbTokens.add(ORDER);};
ORDERLY : O R D E R L Y;
ORGANIZATION           : O R G A N I Z A T I O N {cobolVerbTokens.add(ORGANIZATION);};
OTHER                  : O T H E R {cobolVerbTokens.add(OTHER);};
OUTPUT                 : O U T P U T {cobolVerbTokens.add(OUTPUT);};
OVERFLOW               : O V E R F L O W {cobolVerbTokens.add(OVERFLOW);};
PACKED_DECIMAL         : P A C K E D MINUSCHAR D E C I M A L {cobolVerbTokens.add(PACKED_DECIMAL);};
PADDING                : P A D D I N G {cobolVerbTokens.add(PADDING);};
PAGE                   : P A G E {cobolVerbTokens.add(PAGE);};
PARAGRAPH: P A R A G R A P H;
PARSE: P A R S E;
PASSWORD               : P A S S W O R D {cobolVerbTokens.add(PASSWORD);};
PERFORM                : P E R F O R M {cobolVerbTokens.add(PERFORM);};
PIC : P I C  {cobolVerbTokens.add(PIC);} -> pushMode(PICTURECLAUSE) ;
PICTURE : P I C T U R E  {cobolVerbTokens.add(PICTURE);} -> pushMode(PICTURECLAUSE) ;
POINTER                : P O I N T E R {cobolVerbTokens.add(POINTER);};
POINTER_32                : P O I N T E R MINUSCHAR '3' '2' {cobolVerbTokens.add(POINTER_32);};
PORT : P O R T;
POSITION               : P O S I T I O N {cobolVerbTokens.add(POSITION);};
POSITIVE               : P O S I T I V E {cobolVerbTokens.add(POSITIVE);};
PRINTER : P R I N T E R;
PROCEDURE              : P R O C E D U R E {cobolVerbTokens.add(PROCEDURE);};
PROCEDURE_POINTER      : P R O C E D U R E MINUSCHAR P O I N T E R {cobolVerbTokens.add(PROCEDURE_POINTER);};
PROCEDURES             : P R O C E D U R E S {cobolVerbTokens.add(PROCEDURES);};
PROCEED                : P R O C E E D {cobolVerbTokens.add(PROCEED);};
PROCESS                : P R O C E S S {cobolVerbTokens.add(PROCESS);};
PROCESSING             : P R O C E S S I N G {cobolVerbTokens.add(PROCESSING); enableCobolSpecialSeparators = false;};
PROGRAM                : P R O G R A M {cobolVerbTokens.add(PROGRAM);};
PROGRAM_ID             : P R O G R A M MINUSCHAR I D {cobolVerbTokens.add(PROGRAM_ID);};
PURGE : P U R G E;
QUOTE                  : Q U O T E {cobolVerbTokens.add(QUOTE);};
QUOTES                 : Q U O T E S {cobolVerbTokens.add(QUOTES);};
RANDOM                 : R A N D O M {cobolVerbTokens.add(RANDOM);};
READ                   : R E A D {cobolVerbTokens.add(READ);};
READER : R E A D E R;
READY                  : R E A D Y {cobolVerbTokens.add(READY);};
RECEIVE : R E C E I V E;
RECORD                 : R E C O R D {cobolVerbTokens.add(RECORD);};
RECORDING              : R E C O R D I N G {cobolVerbTokens.add(RECORDING);};
RECORDS                : R E C O R D S {cobolVerbTokens.add(RECORDS);};
RECURSIVE              : R E C U R S I V E {cobolVerbTokens.add(RECURSIVE);};
REDEFINES              : R E D E F I N E S {cobolVerbTokens.add(REDEFINES);};
REEL                   : R E E L {cobolVerbTokens.add(REEL);};
REFERENCE              : R E F E R E N C E {cobolVerbTokens.add(REFERENCE);};
REFERENCES             : R E F E R E N C E S {cobolVerbTokens.add(REFERENCES);};
RELATIVE               : R E L A T I V E {cobolVerbTokens.add(RELATIVE);};
RELEASE                : R E L E A S E {cobolVerbTokens.add(RELEASE);};
RELOAD                 : R E L O A D {cobolVerbTokens.add(RELOAD);};
REMAINDER              : R E M A I N D E R {cobolVerbTokens.add(REMAINDER);};
REMARKS : R E M A R K S;
REMOTE : R E M O T E;
REMOVAL                : R E M O V A L {cobolVerbTokens.add(REMOVAL);};
REMOVE : R E M O V E;
RENAMES                : R E N A M E S {cobolVerbTokens.add(RENAMES);};
REPLACING              : R E P L A C I N G {cobolVerbTokens.add(REPLACING);};
REPORT : R E P O R T;
REPORTS : R E P O R T S;
REPOSITORY             : R E P O S I T O R Y {cobolVerbTokens.add(REPOSITORY);};
RERUN                  : R E R U N {cobolVerbTokens.add(RERUN);};
RESERVE                : R E S E R V E {cobolVerbTokens.add(RESERVE);};
RESET                  : R E S E T {cobolVerbTokens.add(RESET);};
RESUME : R E S U M E;
RETURN                 : R E T U R N {cobolVerbTokens.add(RETURN);};
RETURNING              : R E T U R N I N G {cobolVerbTokens.add(RETURNING);};
REVERSED               : R E V E R S E D {cobolVerbTokens.add(REVERSED);};
REWIND                 : R E W I N D {cobolVerbTokens.add(REWIND);};
REWRITE                : R E W R I T E {cobolVerbTokens.add(REWRITE);};
RIGHT                  : R I G H T {cobolVerbTokens.add(RIGHT);};
ROUNDED                : R O U N D E D {cobolVerbTokens.add(ROUNDED);};
RUN                    : R U N {cobolVerbTokens.add(RUN);};
SAME                   : S A M E {cobolVerbTokens.add(SAME);};
SAVE : S A V E;
SD                     : S D {cobolVerbTokens.add(SD);};
SEARCH                 : S E A R C H {cobolVerbTokens.add(SEARCH);};
SECTION                : S E C T I O N {cobolVerbTokens.add(SECTION);};
SECURITY               : S E C U R I T Y {cobolVerbTokens.add(SECURITY);};
SEGMENT : S E G M E N T;
SEGMENT_LIMIT          : S E G M E N T MINUSCHAR L I M I T {cobolVerbTokens.add(SEGMENT_LIMIT);};
SELECT                 : S E L E C T {cobolVerbTokens.add(SELECT);};
SEND : S E N D;
SENTENCE               : S E N T E N C E {cobolVerbTokens.add(SENTENCE);};
SEPARATE               : S E P A R A T E {cobolVerbTokens.add(SEPARATE);};
SEQUENCE               : S E Q U E N C E {cobolVerbTokens.add(SEQUENCE);};
SEQUENTIAL             : S E Q U E N T I A L {cobolVerbTokens.add(SEQUENTIAL);};
SERVICE                : S E R V I C E {cobolVerbTokens.add(SERVICE);};
SET                    : S E T {cobolVerbTokens.add(SET);};
SIGN                   : S I G N {cobolVerbTokens.add(SIGN);};
SIZE                 : S I Z E {cobolVerbTokens.add(SIZE);};
SORT                 : S O R T {cobolVerbTokens.add(SORT);};
SORT_MERGE           : S O R T MINUSCHAR M E R G E {cobolVerbTokens.add(SORT_MERGE);};
SOURCE_COMPUTER      : S O U R C E MINUSCHAR C O M P U T E R {cobolVerbTokens.add(SOURCE_COMPUTER);};
SPACE                : S P A C E {cobolVerbTokens.add(SPACE);};
SPACES               : S P A C E S {cobolVerbTokens.add(SPACES);};
SPECIAL_NAMES        : S P E C I A L MINUSCHAR N A M E S {cobolVerbTokens.add(SPECIAL_NAMES);};
STANDARD             : S T A N D A R D {cobolVerbTokens.add(STANDARD);};
STANDARD_1           : S T A N D A R D MINUSCHAR '1' {cobolVerbTokens.add(STANDARD_1);};
STANDARD_2           : S T A N D A R D MINUSCHAR '2' {cobolVerbTokens.add(STANDARD_2);};
START                : S T A R T {cobolVerbTokens.add(START);};
STATUS               : S T A T U S {cobolVerbTokens.add(STATUS);};
STOP                 : S T O P {cobolVerbTokens.add(STOP);};
STRING               : S T R I N G {cobolVerbTokens.add(STRING);};
SUBTRACT             : S U B T R A C T {cobolVerbTokens.add(SUBTRACT);};
SUM : S U M;
SUPPRESS             : S U P P R E S S {cobolVerbTokens.add(SUPPRESS);};
SYMBOL : S Y M B O L;
SYMBOLIC             : S Y M B O L I C {cobolVerbTokens.add(SYMBOLIC);};
SYNC                 : S Y N C {cobolVerbTokens.add(SYNC);};
SYNCHRONIZED         : S Y N C H R O N I Z E D {cobolVerbTokens.add(SYNCHRONIZED);};
SYSEIB : S Y S E I B;
TALLYING             : T A L L Y I N G {cobolVerbTokens.add(TALLYING);};
TAPE                 : T A P E {cobolVerbTokens.add(TAPE);};
TERMINAL : T E R M I N A L;
TERMINATE : T E R M I N A T E;
TEST                 : T E S T {cobolVerbTokens.add(TEST);};
THAN                 : T H A N {cobolVerbTokens.add(THAN);};
THEN                 : T H E N {cobolVerbTokens.add(THEN);};
THREAD : T H R E A D;
THROUGH              : T H R O U G H {cobolVerbTokens.add(THROUGH);};
THRU                 : T H R U {cobolVerbTokens.add(THRU);};
TIME                 : T I M E {cobolVerbTokens.add(TIME);};
TIMER: T I M E R;
TIMES                : T I M E S {cobolVerbTokens.add(TIMES);};
TO                   : T O {cobolVerbTokens.add(TO);};
TODAYS_DATE : T O D A Y S MINUSCHAR D A T E;
TODAYS_NAME : T O D A Y S MINUSCHAR N A M E;
TOP                  : T O P {cobolVerbTokens.add(TOP);};
TRACE                : T R A C E {cobolVerbTokens.add(TRACE);};
TRAILING             : T R A I L I N G {cobolVerbTokens.add(TRAILING);};
TRUE                 : T R U E {cobolVerbTokens.add(TRUE);};
TYPE: T Y P E;
UNBOUNDED: U N B O U N D E D;
UNIT                 : U N I T {cobolVerbTokens.add(UNIT);};
UNSTRING             : U N S T R I N G {cobolVerbTokens.add(UNSTRING);};
UNTIL                : U N T I L {cobolVerbTokens.add(UNTIL);};
UP                   : U P {cobolVerbTokens.add(UP);};
UPON                 : U P O N {cobolVerbTokens.add(UPON);};
USAGE                : U S A G E {cobolVerbTokens.add(USAGE);};
USE                  : U S E {cobolVerbTokens.add(USE);};
USING                : U S I N G {cobolVerbTokens.add(USING);};
UTF_8                : U T F MINUSCHAR '8' {cobolVerbTokens.add(UTF_8);};
VALIDATING: V A L I D A T I N G;
VALUE                : V A L U E {cobolVerbTokens.add(VALUE);};
VALUES               : V A L U E S {cobolVerbTokens.add(VALUES);};
VARYING              : V A R Y I N G {cobolVerbTokens.add(VARYING);};
VIRTUAL : V I R T U A L;
VOLATILE             : V O L A T I L E {cobolVerbTokens.add(VOLATILE);};
WAIT : W A I T;
WHEN                 : W H E N {cobolVerbTokens.add(WHEN);};
WHEN_COMPILED        : W H E N MINUSCHAR C O M P I L E D {cobolVerbTokens.add(WHEN_COMPILED);};
WITH                 : W I T H {cobolVerbTokens.add(WITH);};
WORDS                : W O R D S {cobolVerbTokens.add(WORDS);};
WORKING_STORAGE      : W O R K I N G MINUSCHAR S T O R A G E {cobolVerbTokens.add(WORKING_STORAGE);};
WRITE                : W R I T E {cobolVerbTokens.add(WRITE);};
WRITE_ONLY           : W R I T E MINUSCHAR O N L Y {cobolVerbTokens.add(WRITE_ONLY);};
XML                  : X M L {cobolVerbTokens.add(XML);};
XML_DECLARATION : XML MINUSCHAR D E C L A R A T I O N;
YEAR : Y E A R;
YYYYDDD : Y Y Y Y D D D;
YYYYMMDD : Y Y Y Y M M D D;
ZERO                 : Z E R O {cobolVerbTokens.add(ZERO);};
ZEROES               : Z E R O E S {cobolVerbTokens.add(ZEROES);};
ZEROS                : Z E R O S {cobolVerbTokens.add(ZEROS);};

INTEGERLITERAL_WITH_K: INTEGERLITERAL ('K' | 'k');
CURRENCY_SYMBOL : [\p{Sc}];

// whitespace, line breaks, comments, ...
NEWLINE : '\r'? '\n' -> channel(HIDDEN);
COMMENTLINE : COMMENTTAG ~('\n' | '\r')* -> channel(COMMENTS);
WS : [ \t\f]+ -> channel(HIDDEN);
COMPILERLINE : DOUBLEMORETHANCHAR ~('\n' | '\r')* -> channel(HIDDEN);
// period full stopPosition
DOT_FS : '.' EOF?;

LEVEL_NUMBER : ([1-9])|([0][1-9])|([1234][0-9]);
LEVEL_NUMBER_66 : '66';
LEVEL_NUMBER_77 : '77';
LEVEL_NUMBER_88 : '88';

INTEGERLITERAL : (PLUSCHAR | MINUSCHAR)? DIGIT+ | LEVEL_NUMBER;
NUMERICLITERAL : (PLUSCHAR | MINUSCHAR)? DIGIT* (DOT_FS | COMMACHAR) DIGIT+ (('e' | 'E') (PLUSCHAR | MINUSCHAR)? DIGIT+)?;
NONNUMERICLITERAL : UNTRMSTRINGLITERAL | STRINGLITERAL | DBCSLITERAL | HEXNUMBER | NULLTERMINATED;

HEX_NUMBERS : HEXNUMBER;

ASTERISKCHAR : '*';
DOUBLEASTERISKCHAR : '**';
COLONCHAR : ':';
COMMACHAR : ',';
COMMENTTAG : '*>' -> channel(COMMENTS);
DOLLARCHAR : '$';
DOUBLEMORETHANCHAR : '>>';

EQUALCHAR : '=';
LESSTHANCHAR : '<';
LESSTHANOREQUAL : '<=';
LPARENCHAR : '(';
MINUSCHAR : '-';
MORETHANCHAR : '>';
MORETHANOREQUAL : '>=';
NOTEQUALCHAR : '<>';
PLUSCHAR : '+';
RPARENCHAR : ')';
SLASHCHAR : '/';

// Special IF for dialect
UNDERSCORECHAR : '_';
DIALECT_IF: UNDERSCORECHAR I F UNDERSCORECHAR;

// Dialect filler
ZERO_WIDTH_SPACE: '\u200B';
U_CHAR: U;
IDENTIFIER : [a-zA-Z0-9][-_a-zA-Z0-9]*;

// treat all the non-processed tokens as errors
ERRORCHAR : . ;

fragment HEXNUMBER : X '"' [0-9A-Fa-f]+ '"' | X '\'' [0-9A-Fa-f]+ '\'';
fragment NULLTERMINATED : Z '"' (~["\n\r] | '""' | '\'')* '"' | Z '\'' (~['\n\r] | '\'\'' | '"')* '\'';
fragment STRINGLITERAL : '"' (~["\n\r] | '""' | '\'')* '"' | '\'' (~['\n\r] | '\'\'' | '"')* '\'';
fragment UNTRMSTRINGLITERAL : '"' (~["\n\r] | '""' | '\'')* | '\'' (~['\n\r] | '\'\'' | '"')*;
fragment DBCSLITERAL : [GN] '"' (~["\n\r] | '""' | '\'')* '"' | [GN] '\'' (~['\n\r] | '\'\'' | '"')* '\'';

fragment OCT_DIGIT        : [0-8] ;
fragment DIGIT: OCT_DIGIT | [9];

// case insensitive chars
fragment A:('a'|'A');
fragment B:('b'|'B');
fragment C:('c'|'C');
fragment D:('d'|'D');
fragment E:('e'|'E');
fragment F:('f'|'F');
fragment G:('g'|'G');
fragment H:('h'|'H');
fragment I:('i'|'I');
fragment J:('j'|'J');
fragment K:('k'|'K');
fragment L:('l'|'L');
fragment M:('m'|'M');
fragment N:('n'|'N');
fragment O:('o'|'O');
fragment P:('p'|'P');
fragment Q:('q'|'Q');
fragment R:('r'|'R');
fragment S:('s'|'S');
fragment T:('t'|'T');
fragment U:('u'|'U');
fragment V:('v'|'V');
fragment W:('w'|'W');
fragment X:('x'|'X');
fragment Y:('y'|'Y');
fragment Z:('z'|'Z');

// COBOL special separators
SEMICOLONSEPARATOR : '; ' {enableCobolSpecialSeparators}? -> channel(HIDDEN);
COMMASEPARATOR : ', '  {enableCobolSpecialSeparators}? -> channel(HIDDEN);

// -------------------------------------------------------
// PICTURECLAUSE mode
// -------------------------------------------------------
mode PICTURECLAUSE;
FINALCHARSTRING: CHARSTRING+ ->popMode;
DOT_FS2 : '.' EOF? -> popMode;
CHARSTRING: PICTURECHARSGROUP1+ PICTURECHARSGROUP2? LParIntegralRPar? '.'? (PICTURECHARSGROUP1|PICTURECHARSGROUP2)
			PICTURECHARSGROUP1+ PICTURECHARSGROUP2? LParIntegralRPar?|
			PICTURECHARSGROUP1* '.' PICTUREPeriodAcceptables+ LParIntegralRPar?|
			PICTURECHARSGROUP1* PICTURECHARSGROUP2? PICTURECHARSGROUP1+ LParIntegralRPar? '.'? (PICTURECHARSGROUP1|PICTURECHARSGROUP2)|
			PICTURECHARSGROUP1* PICTURECHARSGROUP2? PICTURECHARSGROUP1+ LParIntegralRPar?|
			PICTURECHARSGROUP2 PICTURECHARSGROUP1* LParIntegralRPar? '.'? (PICTURECHARSGROUP1|PICTURECHARSGROUP2)|
			PICTURECHARSGROUP2 PICTURECHARSGROUP1* LParIntegralRPar?
;

PICTURECHARSGROUP1: PICTURECharAcceptedMultipleTime+;
PICTURECHARSGROUP2: PICTURECharAcceptedOneTime+;
PICTUREIS : IS;
WS2 : [ \t\f]+ -> channel(HIDDEN);
TEXT : ~('\n' | '\r');
LParIntegralRPar: LPARENCHAR INTEGERLITERAL RPARENCHAR;
fragment PICTUREPeriodAcceptables: ('0'|'9'|B|Z|CR|D B|ASTERISKCHAR|COMMACHAR|MINUSCHAR|PLUSCHAR|SLASHCHAR);
fragment PICTURECharAcceptedMultipleTime: (A|G|N|P|U|X|DOLLARCHAR|PICTUREPeriodAcceptables);
fragment PICTURECharAcceptedOneTime: (V|E|S|CR|D B);
