void leaf() {
  __asm__("xaddb %ah, %bl");
  }

void main() {
  leaf();
}