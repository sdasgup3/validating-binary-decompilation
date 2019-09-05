void leaf() {
  __asm__("shlw %cl, %bx");
  }

void main() {
  leaf();
}