//gcc my_compiler.c
//a < hello.c
#include <stdio.h>

int main(){
   
    int balancedParenthesis = 0;
    int bBrackets = 0;
    int bBraces = 0;
    int bDoubleQuotes = 0;
    int bSingleQuotes = 0;

    //scan
    //c for char scanner
    int c;
    while ((c=getchar())!=EOF){

        //Parenthesis
        if(c == '('){
            printf("(");
            balancedParenthesis++;
        }else if(c == ')'){
            balancedParenthesis--;
            printf(")");
            if(balancedParenthesis<0)
                printf("There is a missing '(' error \n"); 
                break;          
        }
        //Brackets
        if(c == '{'){
            printf("{");
            bBrackets++;
        }else if(c == '}'){
            bBrackets--;
            printf("}");
            if(bBrackets<0)
               printf("There is a missing '{' error \n");  
               break;         
        }
        //Braces
        if(c == '['){
            printf("[");
            bBraces++;
        }else if(c == ']'){
            bBraces--;
            printf("]");
            if(bBraces<0)
               printf("There is a missing '[' error \n");  
               break;         
        }
        //Double quotes
        if(c == '"'){
            //printf("quote");
            bDoubleQuotes++;            
        }

        //Single quotes
        if(c == '\''){
            //printf("single quote");
            bSingleQuotes++;
        }
        //Comments
        if(c == '/'){
            if((c=getchar()) == '/'){
                printf("Comment found \n");
            }
        }
        
    }

    //output
    if(bDoubleQuotes  % 2 != 0){
            printf("Unbalanced Double Qoutes \n ");
    }
    if(bSingleQuotes  % 2 != 0){
            printf("Unbalanced Single Qoutes \n ");
    }       
    if((balancedParenthesis==0) && 
       (bBrackets == 0) && 
       (bBraces==0) &&
       (bDoubleQuotes  % 2 == 0) &&
       (bSingleQuotes  % 2 == 0)
       ){
           printf("There is no errors. \n");
    }    
    else
        printf("Error.. \n");
        printf("parenthesis %d \n", balancedParenthesis );
        printf("brackets %d \n",bBrackets);
        printf("braces %d \n" ,bBraces);
        printf("dquotes %d \n",bDoubleQuotes);
        printf("squotes %d \n",bSingleQuotes);
    
  
    

}