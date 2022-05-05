#include <stdio.h>
// using getchar, putchar

#define bool int
#define true 1
#define false 0

int
main(int argc, char * argv[]) {

    // Purely here for ease of self test ability
    char* unused = "/* you should see the \"//\" in this string */";
    bool inPreprocessorLine = false;
    bool inMultiLineComment = false;
    bool inSingleLineComment = false;
    bool inString = false;
    bool inChar = false;

/* Appologies, I wanted to mess around with the preprocessor. 
 * This would make more sense and would be more readable if it were
 * to be inlined.
 */
#define inComment (inMultiLineComment||inSingleLineComment)
#define canEnterComment (!inString&&!inChar)
#define enterMultiLineComment (canEnterComment&&prev=='/'&&cur=='*')
#define enterSingleLineComment (canEnterComment&&prev=='/'&&cur=='/')
#define endMultiLineComment (prev=='*'&&cur=='/')
#define endSingleLineComment (cur=='\n')
#define endString ((prev!='\\'&&cur=='"')||cur=='\n')
#define endChar ((prev!='\\'&&cur=='\'')||cur=='\n')
#define enterString (!inString&&!inChar&&cur=='"')
#define enterChar (!inString&&!inChar&&cur=='\'')
#define enterPreprocessor ((prev=='\n'||prev==EOF)&&cur=='#'&&!inMultiLineComment)

    /* prev will always have cur's last value */
    char prev = EOF;
    char cur;

    while( (cur = getchar()) != EOF ) {

        /* Everything should be basically the same as nocomments.c except for this bit */
        if( enterPreprocessor ) {
            inPreprocessorLine = true;
            if( prev != EOF ) {
                putchar(prev); 
            }
            prev = EOF;
        }
        if ( inPreprocessorLine ) {
            if (cur == '\n') {
                inPreprocessorLine = false;
            }
            continue;
        }
        /* Finished with new bit */


        if( enterSingleLineComment ){
            inSingleLineComment = true;
        }
        else if( enterMultiLineComment ){
            inMultiLineComment = true;
        }

        if( prev != EOF ) {
            putchar(prev); 
        }

        if( inComment ) {
            /* print nothing because that's the whole point of this program... 
             * filtering out comments */
            if( endMultiLineComment ) {
                inMultiLineComment = false;
            }
            else if( endSingleLineComment ) {
                inSingleLineComment = false;
            }
        } else {
            if ( enterString ) {
                inString = true;
            }
            else if ( enterChar ) {
                inChar = true;
            }
            else if( inString && endString ) {
                inString = false;
            }
            else if( inChar && endChar ) {
                /* realistically this will never happen unless you have an invalid program 
                 * since all C/C++ style comments start with two character liternals will
                 * validly contain those two combinations */
                inChar = false;
            }
        }
        prev = cur;
    }

    /* putting the last character of the file */
    if( prev != EOF ) {
        putchar(prev); 
    }
    return 0;
#undef inComment
#undef canEnterComment
#undef enterMultiLineComment
#undef enterSingleLineComment
#undef endMultiLineComment
#undef endSingleLineComment
#undef endString
#undef endChar
#undef enterString
#undef enterChar
}
