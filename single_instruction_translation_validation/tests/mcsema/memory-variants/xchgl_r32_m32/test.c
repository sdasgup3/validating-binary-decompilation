void leaf() {
  __asm__("xchgl -4(%rbp), %ebx");
  }

void main() {
  leaf();
}