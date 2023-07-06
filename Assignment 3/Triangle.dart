import 'dart:io';
void main() 
{
 int num = 5;
  for(int i = 1 ; i<=num;i++){
    for(int j = 1;j<=i;j++)
    {
      stdout.write('*');
    }
    stdout.write(' ');
  }
    
}