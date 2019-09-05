void leaf() {
  __asm__("cmovnll %ecx, %ebx");
  }

void main() {
  leaf();
}