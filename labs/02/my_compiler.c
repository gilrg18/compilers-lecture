//gcc my_compiler.c
//a < hello.c
#include <stdio.h>

int main(){
   
    int balancedParenthesis;
    int bBrackets;
    int bBraces;
    int bDoubleQuotes;
    

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
                printf("Unbalanced Parenthesis '(' missing \n"); 
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
               printf("Unbalanced Brackets '{' missing \n");  
               break;         
        }

        if(c == '['){
            printf("[");
            bBraces++;
        }else if(c == ']'){
            bBraces--;
            printf("]");
            if(bBraces<0)
               printf("Unbalanced Braces '[' missing \n");  
               break;         
        }

       
        
    }

    //output
    if(balancedParenthesis==0 && bBrackets == 0 && bBraces==0 )
        printf("All good. \n");
    else
        printf("Error.. ");
    
    

}