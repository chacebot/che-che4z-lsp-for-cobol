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

lexer grammar CommonCobolLexer;
import TechnicalLexer;

ACCESS : A C C E S S;
ACTION : A C T I O N;
ACTIVE : A C T I V E;
ADD : A D D;
ADDRESS : A D D R E S S;
AFTER : A F T E R;
ALIAS : A L I A S;
ALL : A L L;
ALLOCATE : A L L O C A T E;
ALTER : A L T E R;
ALWAYS : A L W A Y S;
AND : A N D;
ANY : A N Y;
ARE : A R E;
AS : A S;
ASCII : A S C I I;
AT : A T;
ATTRIBUTES : A T T R I B U T E S;
AUTHENTICATE : A U T H E N T I C A T E;
AUXILIARY : A U X I L I A R Y;
BEFORE : B E F O R E;
BINARY : B I N A R Y;
BIND : B I N D;
BIT : B I T;
BLOB : B L O B;
BY : B Y;
CALL : C A L L;
CCSID : C C S I D;
CHANGE : C H A N G E;
CHANGED : C H A N G E D;
CHAR : C H A R;
CHARACTER : C H A R A C T E R;
CHECK : C H E C K;
CICS : C I C S;
CLIENT : C L I E N T;
CLOB : C L O B;
CLOSE : C L O S E;
COBOL : C O B O L;
CODEPAGE : C O D E P A G E;
COMMIT : C O M M I T;
CONDITION : C O N D I T I O N;
CONNECT : C O N N E C T;
CONTAINS : C O N T A I N S;
CONTINUE : C O N T I N U E;
CONTROL : C O N T R O L;
COPY : C O P Y;
CORR : C O R R;
CORRESPONDING : C O R R E S P O N D I N G;
COUNT : C O U N T;
CR : C R;
CREATE : C R E A T E;
CS : C S;
CURRENT : C U R R E N T;
CURRENCY : C U R R E N C Y;
CURSOR : C U R S O R;
DATA : D A T A;
DATE : D A T E;
DAYOFMONTH : D A Y O F M O N T H;
DAYOFWEEK : D A Y O F W E E K;
DAYOFYEAR : D A Y O F Y E A R;
DAY : D A Y;
DAYS : D A Y S;
DB : D B;
DBCLOB : D B C L O B;
DBCS : D B C S;
DEBUG : D E B U G;
DEFAULT : D E F A U L T;
DEFINITION : D E F I N I T I O N;
DEFINE : D E F I N E;
DELETE : D E L E T E;
DISABLE : D I S A B L E;
DISPLAY : D I S P L A Y;
DOUBLE : D O U B L E;
DUMP : D U M P;
DYNAMIC : D Y N A M I C;
EBCDIC : E B C D I C;
ELSE : E L S E;
EMPTY : E M P T Y;
ENABLE : E N A B L E;
END : E N D;
ENDING : E N D I N G;
ENTER : E N T E R;
ENVIRONMENT : E N V I R O N M E N T;
EQUAL : E Q U A L;
ERASE : E R A S E;
ESCAPE : E S C A P E;
EVENT : E V E N T;
EXCEPT : E X C E P T;
EXCEPTION : E X C E P T I O N;
EXCLUSIVE : E X C L U S I V E;
EXEC : E X E C;
EXECUTE : E X E C U T E;
EXIT : E X I T;
EXTEND : E X T E N D;
EXTENDED : E X T E N D E D;
EXTERNAL : E X T E R N A L;
EXTRACT : E X T R A C T;
FALSE : F A L S E;
FILE : F I L E;
FIRST : F I R S T;
FOR : F O R;
FREE : F R E E;
FROM : F R O M;
FULL : F U L L;
FUNCTION : F U N C T I O N;
GDS : G D S;
GENERATE : G E N E R A T E;
GENERIC : G E N E R I C;
GET : G E T;
GO : G O;
GRAPHIC : G R A P H I C;
GLOBAL : G L O B A L;
HEX : H E X;
HOLD : H O L D;
HOURS : H O U R S;
ID : I D;
IGNORE : I G N O R E;
IMMEDIATE : I M M E D I A T E;
IN : I N;
INCREMENT : I N C R E M E N T;
INCLUDE : I N C L U D E;
INPUT : I N P U T;
INSERT : I N S E R T;
INTEGER : I N T E G E R;
INTO : I N T O;
INVALID : I N V A L I D;
IS : I S;
KEEP : K E E P;
KEY : K E Y;
LABEL : L A B E L;
LANGUAGE : L A N G U A G E;
LAST : L A S T;
LEADING : L E A D I N G;
LEFT : L E F T;
LENGTH : L E N G T H;
LEVEL : L E V E L;
LIMIT : L I M I T;
LINKAGE : L I N K A G E;
LIST : L I S T;
LITERALS : L I T E R A L S;
LOAD : L O A D;
LOCAL : L O C A L;
LOCATION : L O C A T I O N;
LOCK : L O C K;
LONG : L O N G;
MAIN : M A I N;
MAP : M A P;
MAX : M A X;
MIXED : M I X E D;
MEMBER : M E M B E R;
MERGE : M E R G E;
MINUTES : M I N U T E S;
MODE : M O D E;
MODULE : M O D U L E;
MONTH : M O N T H;
MOVE : M O V E;
NAME : N A M E;
NAMED : N A M E D;
NATIONAL : N A T I O N A L;
NATLANG : N A T L A N G;
NEXT : N E X T;
NEW : N E W;
NO : N O;
NODE : N O D E;
NODUMP : N O D U M P;
NONE : N O N E;
NOT : N O T;
NUMBER : N U M B E R;
NUMERIC : N U M E R I C;
NULL : N U L L;
NULLS : N U L L S;
OBJECT : O B J E C T;
OF : O F;
OFF : O F F;
OFFSET : O F F S E T;
ON : O N;
ONLY : O N L Y;
OPEN : O P E N;
OPERATION : O P E R A T I O N;
OPTIMIZE : O P T I M I Z E;
OPTIONAL : O P T I O N A L;
OPTIONS : O P T I O N S;
OR : O R;
ORDER : O R D E R;
OUT : O U T;
OUTPUT : O U T P U T;
OWNER : O W N E R;
PAD : P A D;
PAGE : P A G E;
PAGENUM : P A G E N U M;
PASSWORD : P A S S W O R D;
PATH : P A T H;
POINT : P O I N T;
POSITION : P O S I T I O N;
PREPARE : P R E P A R E;
PRIOR : P R I O R;
PROCEDURE : P R O C E D U R E;
PROCESS : P R O C E S S;
PROFILE : P R O F I L E;
PROGRAM : P R O G R A M;
PROTOCOL : P R O T O C O L;
QUOTE : Q U O T E;
QUERY : Q U E R Y;
READ : R E A D;
REAL : R E A L;
RECORD : R E C O R D;
RECORDS : R E C O R D S;
REF : R E F;
REFERENCE : R E F E R E N C E;
REFERENCES : R E F E R E N C E S;
RELATIVE : R E L A T I V E;
RELEASE : R E L E A S E;
REMOVE : R E M O V E;
REPLACE : R E P L A C E;
REPLACING : R E P L A C I N G;
REQUIRED : R E Q U I R E D;
RESET : R E S E T;
RESTART : R E S T A R T;
RESULT : R E S U L T;
RETAIN : R E T A I N;
RETURN : R E T U R N;
RIGHT : R I G H T;
ROLE : R O L E;
ROLLBACK : R O L L B A C K;
RUN : R U N;
SCHEMA : S C H E M A;
SCHEME : S C H E M E;
SEARCH : S E A R C H;
SECONDS : S E C O N D S;
SECTION : S E C T I O N;
SECURITY : S E C U R I T Y;
SELECT : S E L E C T;
SEPARATE : S E P A R A T E;
SEQUENCE : S E Q U E N C E;
SERVER : S E R V E R;
SESSION : S E S S I O N;
SET : S E T;
SHARE : S H A R E;
SIGNAL : S I G N A L;
SIZE : S I Z E;
SKIPCHAR : S K I P;
SOME : S O M E;
SOURCE : S O U R C E;
SPACE : S P A C E;
SQL : S Q L;
START : S T A R T;
STATISTICS : S T A T I S T I C S;
STATS : S T A T S;
STATUS : S T A T U S;
STORAGE : S T O R A G E;
SUPPRESS : S U P P R E S S;
SYSTEM : S Y S T E M;
TABLE : T A B L E;
TEMPORARY : T E M P O R A R Y;
TERMINAL : T E R M I N A L;
TEST : T E S T;
THEN : T H E N;
THREAD : T H R E A D;
TIME : T I M E;
TITLE : T I T L E;
TO : T O;
TOKEN : T O K E N;
TRACE : T R A C E;
TRAILING : T R A I L I N G;
TRANSACTION : T R A N S A C T I O N;
TRANSFER : T R A N S F E R;
TRANSFORM : T R A N S F O R M;
TRIGGER : T R I G G E R;
TRUE : T R U E;
TYPE : T Y P E;
VALIDATION : V A L I D A T I O N;
VALUE : V A L U E;
VALUES : V A L U E S;
VOLUME : V O L U M E;
WAIT : W A I T;
WRITE : W R I T E;
UNTIL : U N T I L;
UPDATE : U P D A T E;
UPPER : U P P E R;
URL : U R L;
USAGE : U S A G E;
USE : U S E;
USER : U S E R;
USERID : U S E R I D;
USING : U S I N G;
VARYING : V A R Y I N G;
VERSION : V E R S I O N;
VOLATILE : V O L A T I L E;
WHEN : W H E N;
XML : X M L;
YEAR : Y E A R;
YES : Y E S;

EXEC_SQL: EXEC WS SQL;
END_EXEC : E N D MINUSCHAR E X E C;

G_CHAR: G;
K_CHAR: K;
M_CHAR: M;