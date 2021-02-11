#include <stdio.h>
#include <string.h>

struct imp
{
  char name[100];
  int age;
  float salary;
  float weight;
};

/*float salIncr(float cursal)
{
  return cursal *= 1.05;
}*/

/*struct emp nuSalInc(struct employee imp)
{
  imp.salary - salIncr(imp.salary)
  return imp;
}*/

/*void ptrSalIncr(struct imp * ptr)
{
//  (*ptr).salary *= 1.05;
  ptr->salary *= 1.05;
}*/

void printout(struct imp * ptr)
{
// printf("%s\n", ptr->name);
  printf("%s - %d - %.2f - %.2f\n", ptr->name, ptr->age, ptr->salary, ptr->weight);
}

int main()
{
  struct imp shawn;
  shawn.age = 26;
  shawn.salary = 53000;
  shawn.weight = 230;
  strncpy(shawn.name, "Shawn Zwach", sizeof shawn.name);
//  printf("%s - %d - %.2f - %.2f\n", shawn.name, shawn.age, shawn.salary, shawn.weight);

  printout(&shawn);

//  shawn.salary = salIncr(shawn.salary);
//  ptrSalIncr(&shawn);
//  printf("%s - %d - %.2f - %.2f\n", shawn.name, shawn.age, shawn.salary, shawn.weight);

  return 0;
}
