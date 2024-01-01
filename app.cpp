#include <iostream>
#include "libs/utils/time/datetime.hpp"
int main()
{
  auto now = DateTime::now();
  std::cout << now << std::endl;
  std::cout << now.getDayOfYear() << std::endl;
  return 0;
}