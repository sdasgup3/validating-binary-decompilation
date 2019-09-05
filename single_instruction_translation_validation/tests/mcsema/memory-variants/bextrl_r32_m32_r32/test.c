void leaf() {
  __asm__("bextrl %edx, -4(%rbp), %ebx");
  }

void main() {
  leaf();
}