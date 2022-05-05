#include <stdio.h>
// using getchar, putchar

#define bool int
#define true 1
#define false 0

int
main(int argc, char * argv[]) {

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

    /* prev will always have cur's last value */
    char prev = EOF;
    char cur;

    while( (cur = getchar()) != EOF ) {
        if( enterSingleLineComment ){
            inSingleLineComment = true;
        }
        else if( enterMultiLineComment ){
            inMultiLineComment = true;
        }
        
        if( inComment ) {
            /* print nothing */
            if( endMultiLineComment ) {
                inMultiLineComment = false;
                // Stops us from printing the final /
                cur = EOF;
            }
            else if( endSingleLineComment ) {
                inSingleLineComment = false;
            }
        } else {
           if( prev != EOF ) {
               putchar(prev); 
           }

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
               inChar = false;
           }
        }
        prev = cur;
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
