void leaf() {
  __asm__("cmpb %cl, %bl");
  }

void main() {
  leaf();
}