void leaf() {
  __asm__("sbbl %ecx, %ebx");
  }

void main() {
  leaf();
}