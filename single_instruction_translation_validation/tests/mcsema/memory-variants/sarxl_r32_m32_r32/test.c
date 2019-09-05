void leaf() {
  __asm__("sarxl %edx, -4(%rbp), %ebx");
  }

void main() {
  leaf();
}