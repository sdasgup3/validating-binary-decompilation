void leaf() {
  __asm__("sall %cl, %ebx");
  }

void main() {
  leaf();
}