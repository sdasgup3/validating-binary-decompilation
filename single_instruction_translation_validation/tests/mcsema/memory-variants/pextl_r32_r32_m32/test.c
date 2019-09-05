void leaf() {
  __asm__("pextl (%rdx), %ecx, %ebx");
  }

void main() {
  leaf();
}