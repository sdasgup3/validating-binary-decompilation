void leaf() {
  __asm__("shrxl %edx, -4(%rbp), %ebx");
  }

void main() {
  leaf();
}