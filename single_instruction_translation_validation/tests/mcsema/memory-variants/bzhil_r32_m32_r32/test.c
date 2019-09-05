void leaf() {
  __asm__("bzhil %edx, -4(%rbp), %ebx");
  }

void main() {
  leaf();
}