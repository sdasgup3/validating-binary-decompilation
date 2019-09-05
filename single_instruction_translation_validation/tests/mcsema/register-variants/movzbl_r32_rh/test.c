void leaf() {
  __asm__("movzbl %ah, %ebx");
  }

void main() {
  leaf();
}