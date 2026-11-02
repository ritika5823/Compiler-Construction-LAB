%{
#include <stdio.h>
#include <string.h>

int comment_count = 0;
int keyword_count = 0;
int identifier_count = 0;
int word_count = 0;
int line_count = 1;
int space_count = 0;

char *keywords[] = {
    "int","float","char","if","else","while","for","return","void",
    "switch","case","break","continue","do","default","double","long",
    "short","unsigned","signed","const","static","struct","union",
    "enum","typedef","sizeof","goto","auto","register","extern"
};

int isKeyword(char *str)
