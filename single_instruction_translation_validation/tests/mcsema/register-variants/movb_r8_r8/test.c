void leaf() {
  __asm__("movb %cl, %bl");
  }

void main() {
  leaf();
}