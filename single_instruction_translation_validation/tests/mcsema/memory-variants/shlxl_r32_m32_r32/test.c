void leaf() {
  __asm__("shlxl %edx, -4(%rbp), %ebx");
  }

void main() {
  leaf();
}