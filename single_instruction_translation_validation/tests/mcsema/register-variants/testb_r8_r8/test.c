void leaf() {
  __asm__("testb %cl, %bl");
  }

void main() {
  leaf();
}