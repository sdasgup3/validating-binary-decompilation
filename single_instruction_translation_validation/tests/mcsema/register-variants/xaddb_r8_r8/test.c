void leaf() {
  __asm__("xaddb %cl, %bl");
  }

void main() {
  leaf();
}