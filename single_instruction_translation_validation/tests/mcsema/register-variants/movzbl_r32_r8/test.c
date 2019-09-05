void leaf() {
  __asm__("movzbl %cl, %ebx");
  }

void main() {
  leaf();
}