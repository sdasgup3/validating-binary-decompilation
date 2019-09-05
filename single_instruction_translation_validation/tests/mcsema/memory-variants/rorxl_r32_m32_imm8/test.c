void leaf() {
  __asm__("rorxl $0x0, -4(%rbp), %ebx");
  }

void main() {
  leaf();
}